From: Ray Olszewski <ray@comarre.com>
Subject: Re: Hard Drive
Date: Fri, 17 May 2002 12:11:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020517191107.0226f3b8@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Tom Beer <mailings@analogon.com>, linux-newbie@vger.kernel.org

See below.

At 08:41 PM 5/17/02 +0200, Tom Beer wrote:
>Hi,
>
>first Ray, thanks for your reply, but Conditions have changed now.
>The problem is as follows:
>One drive (as mentioned in the other mail)
>is corrupt. On this drive resides the swap partition
>and another, for system purposes unimportant data
>partition. These are labeled in /etc/fstab
>/dev/hdb6 swap 
>/dev/hdb5 /unit

I infer from this that the drive in question is not your boot drive, so you
should still have a working /dev/hda . Please correct this if I am wrong ...
but it does make me not understand why you "cant boot", since this failed
drive appears to be neither your boot device nor your root (/) filesystem.

>I replaced this disk with a new one with different size. However, I
>cant boot or start Yast or format the drive with a 
>swap partition. 

I try to give you some generic advice below, but really, to get good advice,
you need to explain your situation better. Saying you "cant" do various
things is much less helpful than explaining what you tried and how it is
failing.

>There I'm in a turning cycle. 

What is a "turning cycle"? 


>What advice I would need is how to
>format the new drive from the rescue mode (all
>commands availble dd, mkswap, and so on),
>place a swap partition of the size of 128MB on it
>and another partition with the rest of the free space.
>It would be great if anyone may provide me how to 
>accomplish this.

First thing you need to tell us is what is going on with /dev/hda. I can't
figure out what your basic setup is from the information here.

Second, what do you mean by "the rescue mode"? A rescue floppy? Drop into
single-user mode?

I don't use Yast, so what follows is a basic decsription of how to set up a
new hard drive using core Linux/GNU tools.

1. Make sure the drive is set up properly for the IDE location you want it
to occupy. For hdb, that means put it on the primary channel's cable and
jumper it to be a slave. Also make sure your BIOS knows about the drive
change (either have it probe the IDE entries or set primary-slave to AUTO
... the details vary with BIOSs).

2. Boot/init the system somehow.

3. Use "fdisk /dev/hdb" to check the drive for existing partitions and
remove any that might be there. Then add new ones, both the ordinary
partition and the swap partition. You'll use the "n" command to add the
partitions, and the "t" command to change the 128MB one from ext2 (type 83,
which fdisk calls Linux) to swap (type 82, Linux swap). Then write the
partition table and exit fdisk (the "w" command).

4. On the ordinary partition, use "mke2fs /dev/hdbX" (replacing X with the
appropriate number for the partition) to put a filesystem ("format") it.

5. On the swap partition, run "mkswap /dev/hdbX" (replacing X as before) to
"format" the swap partition.

6. If the new /dev/hdbX partition numbers are not the same as the old ones
were (they probably won't be, since partitions get dreated in order, and
you've not said what previously occupied positions hdb1 to hdb4), edit
/etc/fstab to use the new partition numbers.

7. Reboot and see if everything works.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
