From: Ray Olszewski <ray@comarre.com>
Subject: Re: writing disk image to file
Date: Sun, 08 Jun 2003 22:52:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030608223918.01f41c70@celine>
References: <Pine.LNX.4.53.0306082236190.1194@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306082236190.1194@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:53 PM 6/8/2003 -0500, James Miller wrote:
>I've got a small disk whose contents I'd like to save as an image file, in
>case I ever want to write it back to the disk it came from.  This is a 4MB
>flash disk.  From what I gather in my Linux reading, I should do something
>like the following: hook this tiny IDE disk up as, say /dev/hdb and the do
>something like "dd if=/dev/hdb of=dev-hdb-image.img" ? ? ? (the question
>marks outside the quotes indicates things I'm not sure about).  This will
>write an image file to, I suppose the current dir - correct?

Yes. As always, there are unstated assumptions ... for example, the user 
executing the dd command needs read access to the hdb device (not its 
filesystem, the block device itself) and write access to the pwd (= 
"present working directory", Linux/Unix jargon for what you call "the 
current dir"). But these unstated assumptions are nothing special ... 
though in practice they usually mean you need to run dd as root.

>  Is the
>output file's name somewhat a matter of indifference, as it seems to me?
>E.g., wouldn't necessarily require any extension (might be called simply
>"dev-hdb-image"), though an extension might help me keep track of just
>what sort of file it is.

Unlike Windows, in Linux (and Unix) extensions have no special meanings to 
the system; they are just part of the filename, there for the convenience 
of the user. There are conventions -- .c means a C source program, .pl a 
Perl program, .cpp a C++ program, .sh a shell script ... but these are 
conventions only. Though some applications (like the gcc compiler) enforce 
some extension rules about the files they work with, there is nothing here 
that corresponds to Windows using the extension to identify the application 
that is used to open a file.

Pick whatever you want to ... though .img is an extension commonly used for 
this sort of image file (typically in the context of floppy images).

>And, finally, the question marks: I see
>sometimes "bs=512" or some such following the proposed file name which, as
>I get it, refers to block size.  I'm not really clear on block sizes and
>what they do, but I have run accross information indicating that, in the
>case of an image file, it's not too important and can be left out.  Can
>anyone illumine my benightedness on this matter?

Picking a block size that matches the size of the physical device in the 
transfer (in this example, that would be hdb) can speed up the transfer 
process. But I haven't seen it as having any other practical significance, 
and even that effect is small with today's fast systems.

>Thanks, James
>
>PS Ray, I recall you asking at some point not long ago about copying
>one disk to a disk of a different size.  In Rute User's Guide he writes
>"If they (disks) are not the same size, you will have to use tar or
>mirrordir to replicate the file system exactly."  I guess you got that
>task accomplished, but did you do it using this means, or by some other?

At least for the system I was cloning, doing a dd worked fine, with the 
destination drive being larger than the source drive. I was later able to 
use fdisk to create additional partitions in the unused area of the 
destination drive.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
