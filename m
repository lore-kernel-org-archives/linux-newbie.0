From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: writing disk image to file
Date: Tue, 10 Jun 2003 12:40:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE63421.7060601@bcgreen.com>
References: <Pine.LNX.4.53.0306082236190.1194@homenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306082236190.1194@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

James Miller wrote:
> I've got a small disk whose contents I'd like to save as an image file, in
> case I ever want to write it back to the disk it came from.  This is a 4MB
> flash disk.  From what I gather in my Linux reading, I should do something
> like the following: hook this tiny IDE disk up as, say /dev/hdb and the do
> something like "dd if=/dev/hdb of=dev-hdb-image.img" ? ? ? (the question
Yep. That would work fine as is.

.....
> what sort of file it is.  And, finally, the question marks: I see
> sometimes "bs=512" or some such following the proposed file name which, as
> I get it, refers to block size.  I'm not really clear on block sizes and
> what they do, but I have run accross information indicating that, in the
> case of an image file, it's not too important and can be left out.  Can
> anyone illumine my benightedness on this matter?

Block sizing indicates how big of a chunk DD will read and write the data
in (dd can also split them up into ibs=___ and obs=___ -- in which case it
will create separate input and output buffers of different sizes).

The main purpose of the BS parameters was to take care of I/O devices for
which the write size made a difference. tape drives with variable block
sizes or streaming come to mind. Depending on the tape drive, you could
sometimes end up with very different performance and even effective tape
capacities depending on how big your write block sizes were.

In the current day, the biggest value to bs= is taking advantage of the
HD's caching capabilities. I.E. sometimes reading in chunks as big as (or
much bigger than) the track/cylinder size can result in a notable performance
increase.  It also cuts down on system overhead.

My quick test (below) showed a barely noticable performance increase, but a
more noticable cut (percentage wise) in terms of CPU usage.  In this case,
I'm comparing a 512byte buffer with a 5meg buffer:

Note that I'm testing read performance only, not write perfromance (no spare
disk partitions to mess with)
[root etc]# time /usr/bin/time  dd if=/dev/hda5 of=/dev/null bs=512
2056256+0 records in
2056256+0 records out

real    1m12.906s
user    0m2.430s
sys     0m11.050s

[root etc]# time /usr/bin/time  dd if=/dev/hda5 of=/dev/null bs=5120k
200+1 records in
200+1 records out

real    1m12.585s
user    0m0.010s
sys     0m10.020s

In this case, the 10000 times factor in writes resulted in the user CPU time
dropping from 2.4 seconds to 10miliseconds while the system CPU consumption
only dropped by 10%

> 
> Thanks, James
> 
> PS Ray, I recall you asking at some point not long ago about copying
> one disk to a disk of a different size.  In Rute User's Guide he writes
> "If they (disks) are not the same size, you will have to use tar or
> mirrordir to replicate the file system exactly."  I guess you got that
> task accomplished, but did you do it using this means, or by some other?

What will happen if you copy (say) a 1GB partition to a 4GB partition
is that it will more or less work, but you still have a filesystem that
has data indicating that there's only 1GB of disk space in the partition --
in other words, it will ignore the extra 3GB of disk space. The main
solutions to that problem are either:

1) create (mkfs) a new (empty) partitions and then bit copy the FILES (at the
    user level) onto the new partition (e.g. with tar), or
2) bit-copy the partition over, and then manipulate the File System data directly
    to be consistent with the extra available disk space. parted is the tool that
    I usually use for things like that.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
