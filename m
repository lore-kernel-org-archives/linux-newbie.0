From: Jim Nelson <james4765@verizon.net>
Subject: Re: LVM query
Date: Wed, 13 Oct 2004 16:15:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416D8CCF.6060906@verizon.net>
References: <Pine.LNX.4.58.0410131346130.1347@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410131346130.1347@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:

>I tend to use somewhat older computers and older, smaller (and
>cheaper--sometimes free!) hard drives.  As a result, I end up with 2 or
>more hard drives in any given machine.  I've been manually partitioning
>and usually making / the mount point for smaller of the disks, /home the
>mount point for the larger (single user system, btw).  I suppose /usr
>might be a good mount point for a third disk.  Be that as it may, I've
>recently looked into LVM (logical volume management) and wondered whether
>it might not be a better option for setting up my system.
>

Definitely - My fileserver at home has 3 50 GB SCSI drives and a 30 GB 
IDE drive chained together - and my desktop machine uses LVM on its 
single hard drive so that when I add another, it won't be hard to move 
the filesystem over.

>  As I understand
>about the way it works, I would not run into problems such as I might have
>with my former scheme--for example running out of room on / (never
>happened before, but who knows).  With all disks being used as one large
>filesystem under LVM--if that is, indeed, the way it works--directories
>can increase to whatever size disk total allows.  So, a couple of
>questions in closing: have I understood correctly how LVM works and what
>it does?
>

Yes, essentially.  You can also set up RAID with LVM - check the man 
pages for the proper setup and syntax.  Be aware though, that using 
software RAID on IDE drives (especially older ones) sucks up great huge 
amounts of processor time - SCSI makes much less of a CPU hit in 
software RAID, though. 

>  Does it sound like a good solution for my scenario?  Is there
>any performance hit involved in using it as over against a traditional
>partitioning scheme?
>

Standard LVM is almost unnoticeable.  RAID does take more CPU time, but 
standard LVM is almost unnoticeable (unless you're running it on a 
386-25 or something equally daft).

>  Any other comments on, criticisms, praises of LVM?
>Gotchas?  Thanks for any feedback on this.
>
>James
>  
>
Unlike AIX, where LVM cane from, you cannot put the / filesystem on a 
LVM partition AFAIK.  The way I set it up is:

/ __   (on standard partition)
    |
    |
    |___ /usr (on LVM partition)
    |
    |
    |___ /home (on LVM partition)
    |
    |
    |___ /boot (on standard partition, at least on Red-Hat based systems)


most bootloaders have problems with shuffling around kernel images, so a 
seperate partition for /boot is a good idea anyway.


>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
