From: James Miller <jamtat@mailsnare.net>
Subject: RE: USB devices, mount points and fstab
Date: Thu, 29 May 2003 12:26:36 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305291221530.1059@homenet>
References: <BKEGKPICNAKILKJKMHCAOEOHEBAA.Riley@Williams.Name>
 <1054129305.20167.28.camel@dhcp22.swansea.linux.org.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1054129305.20167.28.camel@dhcp22.swansea.linux.org.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Wed, 28 May 2003, Alan Cox wrote:

> > Alan: Is there any likelihood that Linux could be tweaked to provide a
> >       similar facility using the 11-character volume labels available
> >       in the various FAT formats?
>
> I've no idea what the mount tool owners have planned - the label handling
> is in fact in user space
>
>
I take it from lack of further response to this thread that I'll need to
use the traditional method for mounting those USB drives.  There should be
some way to at least partially automate this though.  I've found that cat
/proc/scsi/scsi shows what scsi devices are detected, which seems like at
least one step toward doing something like that.  Anyway, if anyone has
further input on less involved ways of detecting and mounting
non-permanent USB disks that are seen by the OS as scsi devices, please
pitch in.  Related comments would be welcomed as well.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
