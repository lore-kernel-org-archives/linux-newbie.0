From: James Miller <jamtat@mailsnare.net>
Subject: writing disk image to file
Date: Sun, 8 Jun 2003 22:53:15 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306082236190.1194@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I've got a small disk whose contents I'd like to save as an image file, in
case I ever want to write it back to the disk it came from.  This is a 4MB
flash disk.  From what I gather in my Linux reading, I should do something
like the following: hook this tiny IDE disk up as, say /dev/hdb and the do
something like "dd if=/dev/hdb of=dev-hdb-image.img" ? ? ? (the question
marks outside the quotes indicates things I'm not sure about).  This will
write an image file to, I suppose the current dir - correct?  Is the
output file's name somewhat a matter of indifference, as it seems to me?
E.g., wouldn't necessarily require any extension (might be called simply
"dev-hdb-image"), though an extension might help me keep track of just
what sort of file it is.  And, finally, the question marks: I see
sometimes "bs=512" or some such following the proposed file name which, as
I get it, refers to block size.  I'm not really clear on block sizes and
what they do, but I have run accross information indicating that, in the
case of an image file, it's not too important and can be left out.  Can
anyone illumine my benightedness on this matter?

Thanks, James

PS Ray, I recall you asking at some point not long ago about copying
one disk to a disk of a different size.  In Rute User's Guide he writes
"If they (disks) are not the same size, you will have to use tar or
mirrordir to replicate the file system exactly."  I guess you got that
task accomplished, but did you do it using this means, or by some other?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
