From: james niland <bareego@yahoo.com>
Subject: Re:Hard disk repartitioning
Date: Wed, 2 Apr 2003 21:19:55 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030403051955.25686.qmail@web11406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

AK WROTE :

I have a 20GB hard disk with a 5GB primary partition(C
drive, DOS partition) and 15GB logical partition(D
drive, extended DOS partition). The C drive has WinME
and all application softwares and has 3.74 GB of free
space. The D drive has all my data and has 9.84 GB of
free space. I want to install Linux on this box.

    i want to have a dual boot system and donot want
to lose any existing data. can anyone please suggest
how do i repartition my disk. ive read a few articles
and HOWTOs on this and frm what i gather is that a
dual boot system should look like this:

           1)Windows partion (FAT32)
           2)Linux partition
           3)Swap partition
           4)Partition for data accesible from Windows
and Linux(FAT32)

       now these articles explained this
repartitioning when their original disk had a single
primary dos partition. so my problem is how do i
repartition my disk which has a primary and a logical
partition?


also i have 128MB RAM. so what should be the size
of my Swap partition?
**************************
There are ways of installing linux on this setup
without deleting partitions. I had a similar setup and
worked my way around deleting partitions.

One way to go about it would be to run defrag on your
data partition and then resize it with a program like
eg fips (a freeware program). 
If you have important data on that drive you should
back it up FIRST, you have been warned.

Then you can make logical partitions in the free space
in your extended partition after your data partition,
namely a swap partition (256MB should be fine) and you
root partition. thos partitions would end up being
called something like /dev/hda6 and /dev/hda7.
your setup would then look like

PRIMARY PARTITION      Windows 
/dev/hda1
EXTENDED PARTITION
/dev/hda2
        LOGICAL PARTITION 1 DATA (FAT 32)
        /dev/hda5
        LOGICAL PARTITION 2 Linux SWAP (Type 82)
        /dev/hda6
        LOGICAL PARTITION 3 Linux native (Type 83)
        /dev/hda7

It might not be 100% by the book, but i worked fine
for me. 

To actually dual boot you would then adjust your
config file (lilo.conf or grub.conf) to it so it can
boot either your linux or windows.

Some boot loaders (eg lilo) used to have problems if
the partition to boot wasn't within  the first 1024
cylinders of the HDD, I don't know if that's true
anymore, though.

J. Niland


__________________________________________________
Do you Yahoo!?
Yahoo! Tax Center - File online, calculators, forms, and more
http://tax.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
