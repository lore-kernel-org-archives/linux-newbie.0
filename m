From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 21:14:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306102114.18532.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306091449.12908.pa3gcu@zeelandnet.nl> <3EE5351C.E23B6FEC@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE5351C.E23B6FEC@gelm.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Tuesday 10 June 2003 03:32, Chuck Gelm wrote:
> I just booted the slackware-9.0-iso on a rather old
> Compaq Deskpro 2000 (pentium 120 MHz with f00f bug),
> did a 'dmesg|head' and found this:
>
> Kernel command line:
> BOOT_IMAGE=/kernels/bare.i/bzImage initrd=initrd.img load_ramdisk=1 \
> prompt_ramdisk=0 ramdisk_size=6464 rw root=/dev/ram SLACK_KERNEL=bare.i
>
>  So, somehow, when the system boots from CDROM, its pwd=/isolinux/
> because there is no path in 'initrd=initrd.img', but there is a path
> in 'BOOT_IMAGE=/kernels/bare.i/bzImage'.
>
>  Is there a way to copy the CDROM's root filesystem to /dev/hdb1
> and alter the default 'scsi.s' bootdisk so that it loads the root
> image from /dev/hdb1?    rdev?
>
>  Can the boot files be copied to /dev/hdb1 and the 'scsi.s'
> bootdisk be altered to boot /dev/hdb1/kernels/scsi.s/bzImage
> and the root /dev/hdb1/isolinux/initrd.img?
>
>  Then the CDROM and be mounted on the SCSI CDROM drive and
> the install begun.
>
>  Heck, why not copy /isolinux/*, /kernels/scsi.s/*, & /slackware/*
> to /dev/hdb1?

As i explained in my last mail, it dont work like that.

> Wondering... Chuck

--
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
