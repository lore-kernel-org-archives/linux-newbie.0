From: Jerry James Haumberger <jerryjh@imt.net>
Subject: tar for "full" floppy backup?
Date: Sun, 8 Dec 2002 18:38:18 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212081837.LAA15273@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

>> One of these commands..
>>
>>  # man tar
>>  # info tar
>>  # tar --help
>>
>>..will give you all information you need about your tar version.

>"all" information? Hardly. Neither "man tar" nor "tar --help" gave *me* 
>enough information to be able to answer his original question (though it 
>did point me to the -M option, which I suggested trying), and my system 
>(like many; it really has not caught on, despite pressure from the FSF 
>crowd) does not even have the "info" system installed. (Does BasicLinux 
>install it?)

BasicLinux does not install the info system, but I'm certain it could be
obtained from the Slackware 3.5 distribution.

I carefully consulted the man and tar --help information, three of the
SAMS thick manuals, Linux for Dummies, and even the Linux Companion for
System Administrators (by Jochen Hein), but none of these offered enough
examples or clearly working commands to accomplish what I was told by
consulting the linux-newbie list.  Also, I came here by the suggestion
of Steven Darnold, who is the author of the BasicLinux distribution.

As it stands, it's possible to backup to multiple floppy disks with
tar, but these cannot be compressed during the archival process.  (The
tar program itself reports that it's not possible, if you attempt to
use the compression options.)  The BasicLinux system, even with the
addition of several full programs to enhance it for my purposes, does
not exceed 10 megabytes.  So for this reason, I still found it
personally adequate to attempt a multiple floppy disk tar archive
without the benefit of compression.  I still plan, however, to use a
combination of tar and gzip for backing up selected documents onto
floppy disks, along with other important configuration files on a more
frequent schedule.

A few more notes:  I should have said that the badblocks (not the
badblock) command is used for checking floppies (BasicLinux has this
command), although when you fdformat floppies, it will tell you
if there is a bad area on it.

This is the style of backup I've chosen for this system.  No one,
though, should feel that this is the expected or "normal" method of
backup for typical Linux systems.  We would normally expect a Linux
system on a network backup routine, or at least with a method of
backing up to tape, another hard drive or zip drive.

>So this was almost a textbook example of a good question for this list... 
>one that needs more than RTFM answers, but a response (which it
>eventually elicited) from someone who could provide an example of how
>to do it.

Thank you, Ray.  I'd consider that a reasonable summary of the matter.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
