From: James Miller <jamtat@mailsnare.net>
Subject: device or resource busy error message - what to do?
Date: Wed, 11 Feb 2004 12:28:26 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402111215370.13970@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've recently written a floppy disk image to a floppy using the command
(as suggested by the image's creator) cat nameofimgfile.144 > /dev/fd0 .
It did, in fact, write the image file to a floppy.  I decided to try it
with another, different floppy image - this one called something like
nameoffile1440.img.  This one also wrote to floppy correctly (created a
bootable floppy with that img file on it).  Now, however, I am unable to
mount the floppy drive again, or to write another image file.  I get the
message: cat: (or dd:) /dev/fd0: Device or resource busy.  mount /dev/fd0
/floppy gets the response: mount: /dev/fd0 already mounted or /floppy
busy.  umount -l /floppy gets the response: umount: /floppy: not mounted.
Using MC to look under the directory /floppy shows an empty directory.
I'm sort of curious as to how access to the floppy drive has been
apparently disabled now.  Just as importantly, I'm wondering how I might
re-enable access?  Can I kill some process that is occupying /dev/fd0?
If so, how?  Any tips on re-enabling floppy access, short of rebooting?

System: Debian Sid with newest 2.4 kernel and probably devfs.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
