From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 21:11:25 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306102111.25229.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306091449.12908.pa3gcu@zeelandnet.nl> <3EE52D35.E19F0FA5@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE52D35.E19F0FA5@gelm.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

On Tuesday 10 June 2003 02:58, Chuck Gelm wrote:
> Hi, Richard:
>
>  I have two computers that (can not|will not) boot from CDROM drive.
> Hal had a similar setup wherein one of his computers would not boot
> from its SCSI CDROM (or would not boot some odd release of
> Slackware-8.1.1 from its SCSI CDROM drive).  So I was trying to find
> a way to copy files from an install .iso CDROM disk to hard disk
> partition where I could boot from 'scsi.s' boot disk and then
> tell the prompt
>  boot: mount root=/dev/hdb1
> where /dev/hdb1 would be a partition where the install CDROM
> files were.  Then after logging in as 'root', 'setup' could
> be run to start a new installation.

No it does not work like that, to use your boot option you must have "already" 
install the packages.
If you try the above no way will you boot your system.

What you need to do is copy the "slackware" directory to a HD partition, not 
the partition where you intend to install. so you may need two empty 
partitions one for the source and one to install on. The source HD partition 
could be a running older slackware version "providing" you have enough disk 
space, at least 620MB i belive it was when i copied the slack-9.0 slackware 
directory to my HD. This is all exaplained in the "UPGRADE.TXT" file, more 
comments below.

It could also be that you need to pass kernel parms via lilo at the boot 
prompt to get the kernel to recocnise your SCSI cdrom, read section 2 of the 
BOOTING.TXT file both mentioned files should be in the root of the cdrom.

>  On the CDROM is /isolinux/initrd.img which I was thinking was a
> 'root' filesystem. ?  Couldn't this file (and others?) be copied
> to an existing hard disk partition and then booted?
>
>  Could the entire CDROM be copied to /dev/hdb1 and then use
> fdisk to set /dev/hdb1 as the active partition and then reboot?

No need only the slackware dir needs to be copied, more comments below.

>
>  There ought to be a way to 'upgrade' to Slackware-8.1 or -9.0
> on a system with no bootable CDROM device.  There is a
> /slackware/
> directory that can be copied, but where is the 'setup' application?

O but there is, read the file called UPGRADE.TXT, again it should be in the 
root of the cdrom. It also explains what you need to copy from the cdrom to 
your HD and most important, HOWTO do it.

If i may make a comment without seeming pompous, i am quite sure you have not 
read the nessacary documents, documents which are mentioned here in this mail 
are "unmissable" for your problem.

>
> :-| Chuck

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
