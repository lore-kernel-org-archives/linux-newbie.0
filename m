From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: kernel log messages and disk space
Date: Thu, 1 Sep 2005 19:54:25 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0509011943280.4730-100000@treebeard.engin.umich.edu>
References: <4308B146.8040203@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4308B146.8040203@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sun, 21 Aug 2005, at 09:52, Ray Olszewski wrote:

> [cut]

> Wel, device 03:01 is /dev/hda1, and this time (I mean in contrast to 
> James' recent posting) the reports do sound like an emerging hardware 
> failure, especially if you are getting this many of them. So you *may* 
> need a new hard disk.

Thanks Ray, umounting the hard drive, fixed the overflowing messages
problem. I do not think there is any thing "catastrophic" about the drive
per se (/dev/hda1 is a windoze only partition) since it boots into windoze
quite fine...

> But first, let's consider other possibilities ... the one I think of is 
> a combination of a partitioning error and a drive that is nearly full 
> (so the error is just now becoming visiale). Either you or we should 
> look at this information:
> 
> 	output of "df"
> 	the drive's partition table (as reported by fdisk, say).
> 	the physical size of the drive (as reported in dmesg during boot/init, 
> preferably)

definitely a problem with the way fdisk looks at /dev/hda1 it seems: 
heres what fdisk /dev/hda1, then p gives 
----------
Command (m for help): p

Disk /dev/hda1: 13.5 GB, 13596355584 bytes
255 heads, 63 sectors/track, 1652 cylinders
Units = cylinders of 16065 * 512 = 8225280 bytes

     Device Boot      Start         End      Blocks   Id  System
/dev/hda1p1   ?      120513      235786   925929529+  68  Unknown
Partition 1 does not end on cylinder boundary.
/dev/hda1p2   ?       82801      116350   269488144   79  Unknown
Partition 2 does not end on cylinder boundary.
/dev/hda1p3   ?       33551      120595   699181456   53  OnTrack DM6 Aux3
Partition 3 does not end on cylinder boundary.
/dev/hda1p4   ?       86812       86813       10668+  49  Unknown
Partition 4 does not end on cylinder boundary.

Partition table entries are not in disk order
----------

what does this mean? can it be "fixed", should I even try?! 


Thanks and regards,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
