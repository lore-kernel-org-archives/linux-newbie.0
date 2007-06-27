From: Kristof Provost <kristof@provost-engineering.be>
Subject: Re: kernel 2.6 for Xscale IXP42x platform
Date: Wed, 27 Jun 2007 18:56:53 +0200
Message-ID: <468296D5.1090207@provost-engineering.be>
References: <11322755.post@talk.nabble.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <11322755.post@talk.nabble.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Queenie <queenie245@gmail.com>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Queenie wrote:
> Hi Everybody,
>
> I would like to load kernel 2.6 on my customised Target board
> having IXP422. I have u-boot 1.1.6 bootloader.
>
> For this, I would like to know which kernel version can i decide
> on? How can i determine which version of 2.6 to go in for? Also do
> i need any patch? which ones ? and how to add a patch? can someone
> guide me through?
>
> I have an Image which was done earlier with a different kernel used
> for the same board with redboot bootloader? Can i try using the
> same or will it be checking somewhere for the redboot bootloader?
>
>
> Which toolchain should i use for building this kernel for X-scale
> IXP422 big endian architecture ? Is there nay opensource toolchain
> readymade avaliable or do i have to built one myself? I have never
> done this before though..
>
> For the time being, I have downloaded the kernel 2.6.20 from
> kernel.org. how do i proceed next? how to get the IXP422 option in
> the kernel arch?
>
> Can you guide me through this process Pl help!
>
> Queenie
Hi,

I'd advise you to use whatever version your hardware vendor has
decided to support. I've had a quick look at Intels documentation. The
IXP422 seems to be an ARM cpu with some networking functionality on
chip. Have a look at http://www.arm.linux.org.uk/.

The kernel itself should not depend on the bootloader. It's possible
your bootloader will expect different packaging (bzImage, vmlinux,
...) though. Consult the documentation for your bootloader.

Toolchains (and crosscompilers) are always a lot of fun. The good news
is Buildroot (http://buildroot.uclibc.org/). Buildroot will create a
cross compiler for you, based on the uClibc C library. Even if it
doesn't support your target it's a good idea to have a look at it as
it'll show you how it's done for other platforms. Buildroot supports
ARM targets so the toolchain produced by buildroot should be usable.

Regards,
Kristof


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgpbV/I87bQ13V5YRAjhxAJ9JOAUgQGGzGJaKrRCDqm9+uhSlVQCfYB0z
5B9lKo3ylQBYr7NU6MXy3GA=
=986z
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
