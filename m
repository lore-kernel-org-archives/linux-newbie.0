From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Slackware 8.1.01 Install????
Date: Mon, 09 Jun 2003 20:58:29 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE52D35.E19F0FA5@gelm.net>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net> <200306091449.12908.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Hi, Richard:

 I have two computers that (can not|will not) boot from CDROM drive.
Hal had a similar setup wherein one of his computers would not boot
from its SCSI CDROM (or would not boot some odd release of
Slackware-8.1.1 from its SCSI CDROM drive).  So I was trying to find
a way to copy files from an install .iso CDROM disk to hard disk
partition where I could boot from 'scsi.s' boot disk and then
tell the prompt
 boot: mount root=/dev/hdb1
where /dev/hdb1 would be a partition where the install CDROM 
files were.  Then after logging in as 'root', 'setup' could
be run to start a new installation.

 On the CDROM is /isolinux/initrd.img which I was thinking was a
'root' filesystem. ?  Couldn't this file (and others?) be copied
to an existing hard disk partition and then booted?

 Could the entire CDROM be copied to /dev/hdb1 and then use
fdisk to set /dev/hdb1 as the active partition and then reboot?

 There ought to be a way to 'upgrade' to Slackware-8.1 or -9.0
on a system with no bootable CDROM device.  There is a
/slackware/
directory that can be copied, but where is the 'setup' application?

:-| Chuck

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

 Yes.

 I have used the bootdisk & rootdisk method many times and
have done a 'nfs' install a few times too.  The -8.1 & -9.0
releases require a bootdisk & 5 rootdisks if the computer
cannot boot from CDROM.

-- more later --
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
