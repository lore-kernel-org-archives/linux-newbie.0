From: =?UTF-8?Q?Lars_M=c3=b6llendorf?= <lars.moellendorf@plating.de>
Subject: Question about regmap_range_cfg and regmap_mmio
Date: Fri, 28 Feb 2020 18:47:22 +0100
Message-ID: <4731c4bd-821f-8ad1-0ec2-5aa04d221882@plating.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582912051;
        s=strato-dkim-0002; d=plating.de;
        h=Date:Message-ID:To:Subject:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
        Subject:Sender;
        bh=gowbuzqIAC8k+ldSIBaF66WSchfVXJLJmHjVNlyIPNY=;
        b=ohBwjq6tunYa7oTERzdgVGz/ccC9rqiHWiY9WRozcB3jn9APd6IhMzvunqeS7fU3yd
        2XYagOoXITrJqlFus73qcqv5DFAY5Zsu/d10unQyS9wEOSsKAk9YvX+9lJm4gyDs7edh
        MGMh0nyKAbqA7+c3LGnucmOghpsC7J1o00V30hByUWIfNnXaOY4pU1XWVNzg4+iX3zQ0
        e6GPzGEr00tWSEXvD48Qafy6mZqdsP3Xc1KYIR2KYJQtcbujmMV2wyoBomJwWa9ivSlr
        QdIMNjOBRh1g2PasIFoPgLkiJHYYOM50b6EdSW06URnTpTxEtIAeXdrAeB2as9QPL4lf
        Wqrg==
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

this mail is copied from internal issue written in markdown - I hope
this is still readable as mail.

I am referring to kernel sources v4.9.87 but I think all my assumptions
do still apply to current kernel versions.

[regmap.h](https://elixir.bootlin.com/linux/v4.9.87/source/include/linux/regmap.h#L334)
contains:

```c
/**
 * Configuration for indirectly accessed or paged registers.
 * Registers, mapped to this virtual range, are accessed in two steps:
 *     1. page selector register update;
 *     2. access through data window registers.
 *
 * @name: Descriptive name for diagnostics
 *
 * @range_min: Address of the lowest register address in virtual range.
 * @range_max: Address of the highest register in virtual range.
 *
 * @page_sel_reg: Register with selector field.
 * @page_sel_mask: Bit shift for selector value.
 * @page_sel_shift: Bit mask for selector value.
 *
 * @window_start: Address of first (lowest) register in data window.
 * @window_len: Number of registers in data window.
 */
struct regmap_range_cfg {
	const char *name;

	/* Registers of virtual address range */
	unsigned int range_min;
	unsigned int range_max;

	/* Page selector for indirect addressing */
	unsigned int selector_reg;
	unsigned int selector_mask;
	int selector_shift;

	/* Data window (per each page) */
	unsigned int window_start;
	unsigned int window_len;
};
```

Unfortunately this seems not to work for MMIO devices.

In
[`__regmap_init()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L711)
[`_regmap_bus_reg_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L2330)
is assigned to
[`regmap.reg_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/internal.h#L101)
if `!bus->read || !bus->write`, else
[`_regmap_bus_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L2338)
is assigned:

```c
	if (!bus) {
		map->reg_read  = config->reg_read;
		map->reg_write = config->reg_write;

		map->defer_caching = false;
		goto skip_format_initialization;
	} else if (!bus->read || !bus->write) {
		map->reg_read = _regmap_bus_reg_read;
		map->reg_write = _regmap_bus_reg_write;

		map->defer_caching = false;
		goto skip_format_initialization;
	} else {
		map->reg_read  = _regmap_bus_read;
		map->reg_update_bits = bus->reg_update_bits;
	}
```
[`_regmap_bus_reg_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L2330)
calls the `reg_read` function of the bus directly,
[`_regmap_bus_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L2338)
instead calls `_regmap_raw_read()`:

```c
static int _regmap_bus_reg_read(void *context, unsigned int reg,
				unsigned int *val)
{
	struct regmap *map = context;

	return map->bus->reg_read(map->bus_context, reg, val);
}

static int _regmap_bus_read(void *context, unsigned int reg,
			    unsigned int *val)
{
	int ret;
	struct regmap *map = context;

	if (!map->format.parse_val)
		return -EINVAL;

	ret = _regmap_raw_read(map, reg, map->work_buf, map->format.val_bytes);
	if (ret == 0)
		*val = map->format.parse_val(map->work_buf);

	return ret;
}
```

[`_regmap_raw_read()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap.c#L2297)
in turn calls
[`_regmap_range_lookup()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap-mmio.c#L479)
and
[`_regmap_select_page()`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap-mmio.c#L1283)
which do the paging.

-
[`regmap_mmio`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap-mmio.c#L212)
does neither contain `.read` nor `.write`.
-
[`regmap_i2c`](https://elixir.bootlin.com/linux/v4.9.87/source/drivers/base/regmap/regmap-i2c.c#L204)
does contain both.

My assumption is that paging is not a common use case for Memory-mapped
I/O and thus has not been implemented for this case.

- Are my assumptions correct?
- If so, what would you recommend me to do:
  - Continue using `regmap-mmio` and implement my custom paging
functions on top of that?
  - Enhance the current `regmap-mmio` implementation so it does paging
and submit a patch?
  - Write my own `better-regmap-mmio` implementation?

Thank you,
Lars
