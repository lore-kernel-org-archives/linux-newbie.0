From: James Miller <jamtat@mailsnare.net>
Subject: USB devices, mount points and fstab
Date: Tue, 27 May 2003 21:04:43 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305272052130.1059@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Well, something I never thought would happen to me is happening: I have
more than 1 USB drive hooked to my computer!  That's because I just bought
one of those 6 in 1 card readers for flash memory cards.  Prior to that, I
had only 1 external USB hard drive I would hook to the computer from time
to time.  It seems that I've got at least a major part of the issue of
getting the computer (Libranet [Debian variant] with 2.4.19 kernel) to
recognize the new drive out of the way: like with my other external hard
drive, the flash disks get recognized as scsi drives.  They can therefore
be found at /dev/sdxx, and assigned mount points from there.  But I am a
little confused about how this relates to fstab.  I put an entry there
some time ago for my external HD, which I always mounted at /usb-hd as
/dev/sda1.  But now that I have this reader, it will not always be found
at /dev/sda1.  Thus, my question: beyond doing a fully manual mount (e.g.,
mount /dev/sdxx /mnt/flash-cf) of each drive, how should this be done?  Is
there some simpler way of mounting these USB drives?  I can't think of an
fstab entry that would work.  Advice on how to more easily mount my USB
drives will be appreciated.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
