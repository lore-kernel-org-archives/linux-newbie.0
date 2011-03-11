From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Subject: PCI express late appearance on bus
Date: Fri, 11 Mar 2011 11:52:55 -0500
Message-ID: <1299862375.8754.5.camel@jfddesk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:subject:from:to:content-type:date:message-id
         :mime-version:x-mailer:content-transfer-encoding;
        bh=4KbMo1O48vBzhL2qS+PXnrtMXEDaJanxOXvLv1rldWM=;
        b=PmOCZBSS2KAUP6KwPwNNMhCSm6rMLQtow0N0DqgLbDe7yklvizrJntR7f1erN0cG0B
         EYNIKBl3D5IFXEhot6aAbVAFGSXb55oeYeOYIpuLuqaKaohjYkxs6UK1zV+G2JO6GV/Z
         j+EPAvNcHxQGGTP3JsmZ6hOPXbh4tMK7WAbAU=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

Under the most recent linux kernel, we are using intel chipset COM
modules (kontron and other OEMs probably) as the computer part of our
products. An FPGA device is connected to 4 lanes of PCI express. Right
now the FPGA gets programmed by a flash PROM at power up, so the BIOS
enumerates it initially.

Since we don't need the device at boot time, I want to get rid of the
PROM and program the FPGA using SPI from the CPU later during the boot
process, i.e. after user-space init, perhaps when I modprobe my driver
module, in module_init... This would mean that at BIOS PCI enumeration,
the device would be dead on the bus.

I was thinking of the hotplug feature of PCI express to get the PCI
subsystem to suddenly declare the presence of the device. Or perhaps
after I program the FPGA I would poke something in the PCI subsystem to
make it enumerate the PCI config space again?

Some things to consider:
- our PCIe device is a bus master, we use DMAR through the vt-d IOMMU to
create large chunk of device side contiguous addresses DMA area on our
current product (will do without for our next product)
- We are considering the latest Atom E6xx and it's fellow chipset and
perhaps uEFI for our next product. Does the firmware necessarily need to
be hotplug aware or can everything be controlled from linux? Do I even
have to worry about this?
- The card would obviously always be physically connected (closed
casing), so I guess some pins on PCI Express bus would have to be
asserted/deasserted to trigger a presence detect once the FPGA
programming is done perhaps?

Are there examples of other device drivers in the kernel that do
something similar? Any pointers are appreciated.

Thanks in advance
/jfd

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
