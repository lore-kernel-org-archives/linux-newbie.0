From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: USB devices, mount points and fstab
Date: Wed, 28 May 2003 06:36:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCACENBEBAA.Riley@Williams.Name>
References: <Pine.LNX.4.53.0305272052130.1059@homenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0305272052130.1059@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>, Linux-Newbie list <linux-newbie@vger.kernel.org>

Hi James.

Presumably you're using a recent enough version of Linux to be able to
mount by volume label rather than by partition name? If so, simply use
tune2fs to set a unique volume label for each partition on your USB hard
drive and mount using that.

To do this, replace the FIRST entry on the relevant fstab line with...

	LABEL=/usb

...or whatever label you have given that partition. The remaining entries
are unchanged.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.


 > -----Original Message-----
 > From: linux-newbie-owner@vger.kernel.org
 > [mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of James Miller
 > Sent: Wednesday, May 28, 2003 3:05 AM
 > To: Linux-Newbie list
 > Subject: USB devices, mount points and fstab
 >
 >
 > Well, something I never thought would happen to me is happening: I have
 > more than 1 USB drive hooked to my computer!  That's because I
 > just bought
 > one of those 6 in 1 card readers for flash memory cards.  Prior
 > to that, I
 > had only 1 external USB hard drive I would hook to the computer from time
 > to time.  It seems that I've got at least a major part of the issue of
 > getting the computer (Libranet [Debian variant] with 2.4.19 kernel) to
 > recognize the new drive out of the way: like with my other external hard
 > drive, the flash disks get recognized as scsi drives.  They can therefore
 > be found at /dev/sdxx, and assigned mount points from there.  But I am a
 > little confused about how this relates to fstab.  I put an entry there
 > some time ago for my external HD, which I always mounted at /usb-hd as
 > /dev/sda1.  But now that I have this reader, it will not always be found
 > at /dev/sda1.  Thus, my question: beyond doing a fully manual
 > mount (e.g.,
 > mount /dev/sdxx /mnt/flash-cf) of each drive, how should this be
 > done?  Is
 > there some simpler way of mounting these USB drives?  I can't think of an
 > fstab entry that would work.  Advice on how to more easily mount my USB
 > drives will be appreciated.
 >
 > James
 > -
 > To unsubscribe from this list: send the line "unsubscribe
 > linux-newbie" in
 > the body of a message to majordomo@vger.kernel.org
 > More majordomo info at  http://vger.kernel.org/majordomo-info.html
 > Please read the FAQ at http://www.linux-learn.org/faqs
 >
 > ---
 > Incoming mail is certified Virus Free.
 > Checked by AVG anti-virus system (http://www.grisoft.com).
 > Version: 6.0.484 / Virus Database: 282 - Release Date: 27-May-2003
 >
---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.484 / Virus Database: 282 - Release Date: 27-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
