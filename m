From: Ray Olszewski <ray@comarre.com>
Subject: Re: device or resource busy error message - what to do?
Date: Wed, 11 Feb 2004 11:27:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040211105425.01fccef8@celine>
References: <Pine.LNX.4.58.0402111215370.13970@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0402111215370.13970@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:28 PM 2/11/2004 -0600, James Miller wrote:
>I've recently written a floppy disk image to a floppy using the command
>(as suggested by the image's creator) cat nameofimgfile.144 > /dev/fd0 .
>It did, in fact, write the image file to a floppy.  I decided to try it
>with another, different floppy image - this one called something like
>nameoffile1440.img.  This one also wrote to floppy correctly (created a
>bootable floppy with that img file on it).  Now, however, I am unable to
>mount the floppy drive again, or to write another image file.  I get the
>message: cat: (or dd:) /dev/fd0: Device or resource busy.  mount /dev/fd0
>/floppy gets the response: mount: /dev/fd0 already mounted or /floppy
>busy.  umount -l /floppy gets the response: umount: /floppy: not mounted.
>Using MC to look under the directory /floppy shows an empty directory.
>I'm sort of curious as to how access to the floppy drive has been
>apparently disabled now.  Just as importantly, I'm wondering how I might
>re-enable access?  Can I kill some process that is occupying /dev/fd0?
>If so, how?  Any tips on re-enabling floppy access, short of rebooting?
>
>System: Debian Sid with newest 2.4 kernel and probably devfs.

Well, as is often the case, figuring out what *might* be wrong is something 
of a guessing game. Just to be clear: the very last thing you did before 
encountering the problem was run a command close to this one:

         cat nameoffile1440.img >dev/fd0

And that command exited normally, leaving you with a bootable floppy disk 
(that you presumably tested by booting it on a different system) and 
returning you to a command-line prompt.

You then -- without doing anything else in between -- put a readable floppy 
disk (one that contains a filesystem that your kernel can read) in the 
drive and ran this command:

         mount /dev/fd0 /floppy

but got this response

         mount: /dev/fd0 already mounted or /floppy busy

You then put a formatted floppy in the drive and run the command

         cat nameoffile1440.img >dev/fd0

or the (roughly) equivalent command

         dd if=nameoffile1440.img of=/dev/fd0

and you get one of these responses:

         cat: /dev/fd0: Device or resource busy
         dd: /dev/fd0: Device or resource busy

If this recap really is accurate and complete, the only thing I can think 
of is that you ran into a hardware failure and the floppy drive is 
physically unavailable. This seems like an improbable coincidence, but not 
actually impossible. If this recap is not accurate, please think about 
where it is off from what you did, and that will probably give you the clue 
you need to spot the problem (if not, post a followup with the added 
information about what I left out).

A few specific things to try:

         see if "df" lists /dev/fd0 as mounted somewhere (you may be trying 
to umount the wrong mount point)

         see if "ps aux" lists the first "cat nameoffile1440.img >dev/fd0" 
process as still active ... it might to tying up the drive if it did not 
exit properly

         be sure the tests you are doing involves a floppy filesystem the 
kernel can read ... you can, for example, dd an msdos image to a floppy 
even if the kernel cannot mount -t msdos filesystems. (The errors you 
report are not usually associated with this problem, but this is a bit of a 
fishing expedition.)

         see if "lsof" lists any open files associated with /dev/fd0 (since 
lsof lists paths, not mount points, this may take some work).

         see if any process is accessing the floppy drive under a different 
/dev name (for example, /dev/fd0u1440 or /dev/fd0u1680).

         make sure you ran all of the commands as root ... although default 
fstab settings on stock Sid systems let users mount floppies, I'd still 
check to make sure this is not the source of the problem.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
