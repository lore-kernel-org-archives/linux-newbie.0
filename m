From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Unable to make kernel 2.6.8 up
Date: Wed, 20 Oct 2004 07:40:47 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200410200740.47957.pa3gcu@zeelandnet.nl>
References: <104ee7a50410190917496bc175@mail.gmail.com> <200410192136.58935.pa3gcu@zeelandnet.nl> <104ee7a5041019205249198045@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <104ee7a5041019205249198045@mail.gmail.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: kernel kernel <unix.hacker@gmail.com>
Cc: newbie <linux-newbie@vger.kernel.org>

On Wednesday 20 October 2004 05:52, kernel kernel wrote:
> Hi =A0Richard,
> Thanks for your fast response.
>
> I am furnishing the following details.
> Motherboard : Intel 865
> Processor =A0 =A0: P4 2.4GHz
> SCSI =A0 =A0 =A0 =A0 =A0 : Samsung Hard disk
>
> I am trying to use 2.6.8 kernel from the GNU (downloaded from kernel.=
org)

You said your problem was;

"While booting with 2.6.8 kernel. giving error no ata_piix module found=
"

Now you say you have a SCSI disk, the two are completly different,
With SCSI its now the disk type which needs a driver but your SCSI cont=
roler.
It will also need to be compiled into the kernel and NOT as a module.

Simply choose the needed driver with 'make config' or 'make menuconfig'=
=20
recompile the kernel install it and update your bootloader then reboot.

You are being to vauge to help precisely, please learn to explain your=20
problem(s) better.=20

> Thanks
> Amrith

--=20
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
