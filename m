From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: USB devices, mount points and fstab
Date: Wed, 28 May 2003 15:17:54 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAOEOHEBAA.Riley@Williams.Name>
References: <Pine.LNX.4.53.0305280139100.1059@homenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0305280139100.1059@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: Alan Cox <Alan@LXorgUK.ukuu.org.uk>, Linux-Newbie list <linux-newbie@vger.kernel.org>

Hi James, Alan.

Alan: Question at the end of this email which I'd appreciate your
      guidance with. It relates to what is discussed earlier herein.

 >> Presumably you're using a recent enough version of Linux to be
 >> able to mount by volume label rather than by partition name?
 >> If so, simply use tune2fs to set a unique volume label for each
 >> partition on your USB hard drive and mount using that.
 >>
 >> To do this, replace the FIRST entry on the relevant fstab line
 >> with...
 >>
 >>		LABEL=/usb
 >>
 >> ...or whatever label you have given that partition. The 
 >> remaining entries are unchanged.

 > Thanks, Riley.  Now lemme see if I understand this generally (having
 > skimmed the man page for tune2fs). What's basically going on here is
 > that some bit of information is going to get written to the disk in
 > question.

To be accurate, a particular bit of information will be written to the
PARTITION in question, namely, a volume label. This is a standard field
in the ext2 and ext3 superblocks, which is why tune2fs knows about it.
This volume label can be set to anything, and is normally set to the
partition's mount point (where that partition is mounted in the Linux
file tree).

Incidentally, the volume label used must be unique across all drives
plugged into your system at any one time.

 > Linux is then going to use that information to identify the location
 > of the device and, in the case of an fstab entry or mount command
 > from the cli, mount it at the specified mount point. Is that correct?

Spot on.

 > If so, then I assume I must initially mount the disk in question via
 > the traditional method (e.g., mount /dev/sdxx /mnt/flash-cf) and then
 > "label" it with tune2fs.

Actually, no. You use tune2fs on an unmounted partition, but you must
know where the partition is at the time you use it.

 > In the instance given, I would do something like...
 >
 >		tune2fs -L /mnt/flash-cf flash-cf
 >
 > ...right?

Assuming the partition in question was sda1 at the time the command was
issued, you would use...

		tune2fs -L /mnt/flash-cf /dev/sda1

 > Didn't see any specifics in the man page about that.

It was there last time I looked.

 > The disks to be mounted are all FAT 16 formatted, but I assume that
 > presents no obstacle to the labelling - if I've understood correctly
 > how that works. Any further clarifications based on these inquiries?

The above discussion assumes the partition is formatted with either ext2
or ext3 and doesn't work with any of the FAT formats.

There IS an 11-character volume label as part of the various FAT formats,
but Linux currently ignores it. This is at least in part due to the fact
that the characters it can validly contain are rather limited (letters,
digits and hyphens only, and must neither start nor end with a hyphen).

Alan: Is there any likelihood that Linux could be tweaked to provide a
      similar facility using the 11-character volume labels available
      in the various FAT formats?

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.484 / Virus Database: 282 - Release Date: 27-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
