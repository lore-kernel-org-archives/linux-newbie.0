From: Ray Olszewski <ray@comarre.com>
Subject: cloning a system
Date: Fri, 11 Apr 2003 12:21:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030411121238.0207ae40@celine>
References: <5.1.0.14.1.20030411094900.01ea5030@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAMEDCCGAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

What is the easiest way under Linux to make an EXACT duplicate of a hard 
disk (not a partition)? How does the answer differ if the geometry of the 
target drive is different from that of the source drive (but still big 
enough to hold the partitions)?

My actual problem: I have a Linux system that uses an 8 GB (or thereabouts) 
/dev/hda drive, partitioned as follows:

	hda1 is /boot
	hda2 is swap
	hda3 is the root (/) filesystem
	the MBR boots using lilo

Now I know how to make exact copies of the ./hda1 and ./hda3 filesystems, 
and making a swap partition is child's play. But if I do it that way, the 
MBR is not copied, and I have to boot the new system from a rescue disk, 
then run lilo to make the hard disk bootable.

is there a way, under Linux, to clone the complete drive -AND- have it be 
bootable out of the box? Does that method depend on the two drives being 
physically identical?

(BTW, the source and target systems are identical otherwise ... same mobo, 
same BIOS, same CPU, same add-in cards).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
