From: James Miller <jamtat@mailsnare.net>
Subject: RE: USB devices, mount points and fstab
Date: Wed, 28 May 2003 01:53:22 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305280139100.1059@homenet>
References: <BKEGKPICNAKILKJKMHCACENBEBAA.Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCACENBEBAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Riley Williams <Riley@Williams.Name>
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Wed, 28 May 2003, Riley Williams wrote:
>
> Presumably you're using a recent enough version of Linux to be able to
> mount by volume label rather than by partition name? If so, simply use
> tune2fs to set a unique volume label for each partition on your USB hard
> drive and mount using that.
>
> To do this, replace the FIRST entry on the relevant fstab line with...
>
> 	LABEL=/usb
>
> ...or whatever label you have given that partition. The remaining entries
> are unchanged.
>
Thanks, Riley.  Now lemme see if I understand this generally (having
skimmed the man page for tune2fs).  What's basically going on here is that
some bit of information is going to get written to the disk in question.
Linux is then going to use that information to identify the location of
the device and, in the case of an fstab entry or mount command from the
cli, mount it at the specified mount point.  Is that correct?  If so, then
I assume I must initially mount the disk in question via the traditional
method (e.g., mount /dev/sdxx /mnt/flash-cf) and then "label" it with
tune2fs.  In the instance given, I would do something like "tune2fs -L
/mnt/flash-cf flash-cf"?  Didn't see any specifics in the man page about
that.  The disks to be mounted are all FAT 16 formatted, but I assume that
presents no obstacle to the labelling - if I've understood correctly how
that works.  Any further clarifications based on these inquiries?

James

PS You emphasize "FIRST", I assume, to distinguish between the device
entries and the mount point entries in fstab?  In other words, you wish
that I understand that ONLY this entry gets changed, while the other
entries (fs type entry, mount point entry, etc.) in the relevant fstab
line remain the same?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
