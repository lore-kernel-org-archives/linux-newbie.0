From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Slackware 8.1.01 Install????
Date: Mon, 09 Jun 2003 21:32:12 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE5351C.E23B6FEC@gelm.net>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net> <200306091449.12908.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I just booted the slackware-9.0-iso on a rather old
Compaq Deskpro 2000 (pentium 120 MHz with f00f bug),
did a 'dmesg|head' and found this:

Kernel command line:
BOOT_IMAGE=/kernels/bare.i/bzImage initrd=initrd.img load_ramdisk=1 \
prompt_ramdisk=0 ramdisk_size=6464 rw root=/dev/ram SLACK_KERNEL=bare.i

 So, somehow, when the system boots from CDROM, its pwd=/isolinux/
because there is no path in 'initrd=initrd.img', but there is a path
in 'BOOT_IMAGE=/kernels/bare.i/bzImage'.

 Is there a way to copy the CDROM's root filesystem to /dev/hdb1
and alter the default 'scsi.s' bootdisk so that it loads the root
image from /dev/hdb1?    rdev?

 Can the boot files be copied to /dev/hdb1 and the 'scsi.s'
bootdisk be altered to boot /dev/hdb1/kernels/scsi.s/bzImage
and the root /dev/hdb1/isolinux/initrd.img?

 Then the CDROM and be mounted on the SCSI CDROM drive and
the install begun. 

 Heck, why not copy /isolinux/*, /kernels/scsi.s/*, & /slackware/*
to /dev/hdb1?

Wondering... Chuck


pa3gcu wrote:
> 
> On Monday 09 June 2003 11:59, Chuck Gelm wrote:
> > Hal:
> >
> >  I've created slackware-8.1-iso & slackware-9.0-iso CDROMs.
> > I have exhausted attempts to use them as install media
> > while booting from a single floppy.
> 
> The idea that has been adopted by Slack for booting from a cdrom is very easy
> and AFAIK is going to be keep that way.
> Are you saying that your cdrom does not boot the system and/or not find your
> hardware properly.??
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
