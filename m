From: Ray Olszewski <ray@comarre.com>
Subject: Re: mandrake
Date: Sun, 02 Mar 2003 09:40:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030302092519.01efcfe0@celine>
References: <3E623DC4.6050109@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E623DC4.6050109@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: dave <dave@dpomeroy.com>, linux-newbie@vger.kernel.org

At 09:22 AM 3/2/2003 -0800, dave wrote:
>I'm running mandrake.  My boot cd broke.  I have a SCSI CDread-writer that 
>I'm using.  It is labeled cdrom2.  I tried to use this in the install 
>software under software management.  For some reason it doesn't work.  I 
>tried to add the drive and that didn't work either.  Any 
>suggestions?  Thanks in advance.

You are going to have to describe your problem a bit more carefully to get 
real help.

"My boot cd broke." Are you referring here to a CD *drive* (most likely the 
one that the symlink /dev/cdrom points to) or to a Mandrake Rescue CD? From 
context, I'm guessing you mean a drive, but I'm not entirely certain of 
this ... and in any case, you should distinguish between CDs and CD drives 
clearly.

  "For some reason it doesn't work." What *exactly* are you doing and what 
is the *exact* error that gets reported? "doesn't work" is a very hard 
problem to troubleshoot.

"It is labeled cdrom2". "Labeled"? Do you mean that there is a symlink 
/dev/cdrom2 that points to it? If so, what is the actual, underlying 
device? (First, "ls -l /dev/cdrom2", then "ls -l /dev/something_or_other", 
replacing "soemething_or_other with whatever the synlink points to.)

"I tried to add the drive and that didn't work either." Add it to what? 
How? What error message are you prarphrasing as "didn't work either"?

"I have a SCSI CDread-writer that I'm using." Using for what? Have you used 
this before as a reader, or have you only used it to burn CDs? (I ask this 
because reading and burning use entirely different methods to access the 
drive.) For example, does the CD Writer work properly to mount filesystems 
from the command line? That is, if you put a CD with an iso9660 filesystem 
in the drive, and (as root) you enter at the command line

         mount /dev/cdrom2 /mnt

(or some other mount point if /mnt is already in use), does the CD mount? 
Can you see its conetents, for example, by entering "ls /mnt" or does it 
show up in a "df" listing? More basically, are you sure that this drive is 
really linked to /dev/cdrom2 and not accessed as (for example) /dev/scd0 
(typical for SCSI drives)?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
