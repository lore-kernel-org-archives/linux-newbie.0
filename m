From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: cloning a system
Date: Sat, 12 Apr 2003 09:06:18 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030412090618.A197@lnx2.w8mch.ampr.org>
References: <5.1.0.14.1.20030411094900.01ea5030@celine> <BKEGKPICNAKILKJKMHCAMEDCCGAA.Riley@Williams.Name> <5.1.0.14.1.20030411121238.0207ae40@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030411121238.0207ae40@celine>; from ray@comarre.com on Fri, Apr 11, 2003 at 12:21:30PM -0700
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Years ago when HD's were less than 1gB I used the dd route
to clone a drive for backup but never had the reason to check and see
if it was a valid idea.. Later, I think on this list, someone pointed
out that the dd route was not a good idea - think it may have been
Lawson IIRC..

I did note that the cloned drive, even though formatted larger than
the source drive ended up the "same" size as the source.. I can't
find my notes but seem to remember using the following:
dd if=/dev/hda of=/dev/hdc bs=8192

Approaching senility in the brain department I'm hoping someone will
pick up on this and write a mini-HOWTO as I think it's a needed
project.. At 0400 this morning I wondered if the best way would be to
boot the machine with BasicLinux, into ramdisk, and then invoke dd
from it - presuming Steven put dd in BL.. Not sure. 

Somewhere along my former testing I seem to remember /proc giving a
problem but that may have been using another routine.. Sometime in
the future someone may figure a way to RAID our normal brain. <grin>

I hope someone keeps this thread alive..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable

On 04-11, Ray Olszewski wrote:
> What is the easiest way under Linux to make an EXACT duplicate of a hard 
> disk (not a partition)? How does the answer differ if the geometry of the 
> target drive is different from that of the source drive (but still big 
> enough to hold the partitions)?
> 
> My actual problem: I have a Linux system that uses an 8 GB (or thereabouts) 
> /dev/hda drive, partitioned as follows:
> 
> 	hda1 is /boot
> 	hda2 is swap
> 	hda3 is the root (/) filesystem
> 	the MBR boots using lilo
> 
> Now I know how to make exact copies of the ./hda1 and ./hda3 filesystems, 
> and making a swap partition is child's play. But if I do it that way, the 
> MBR is not copied, and I have to boot the new system from a rescue disk, 
> then run lilo to make the hard disk bootable.
> 
> is there a way, under Linux, to clone the complete drive -AND- have it be 
> bootable out of the box? Does that method depend on the two drives being 
> physically identical?
> 
> (BTW, the source and target systems are identical otherwise ... same mobo, 
> same BIOS, same CPU, same add-in cards).
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
