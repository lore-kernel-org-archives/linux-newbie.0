From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 07:34:23 -0800
Message-ID: <5.1.0.14.1.20050220071846.01f48560@celine>
References: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Mime-Version: 1.0
In-Reply-To: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:38 AM 2/20/2005 +0545, bj wrote:
>Hi !
>
>I have a red hat 8.0 & Windows 2000 on a intel box with a 60 GB hard drive .
>
>Only 20 GB has been partitioned into 10 GB of NTFS and 9 GB of Linux , file
>id 83 ext 3 and 1 GB of Linux swap , file id 82 .
>
>I want to use some free unallocated space from the remaining 40 GB for my
>linux .
>
>But I could not get fdisk (from the command prompt ) to show me the
>unallocated space  and partition it .
>
>I could see the unallocated free space when I run KDE hardware browser .
>
>I could find the GUI disk druid too .
>
>So How do I partition the unused free space for my red hat 8.0 .
>
>Which utility do I use ?
>
>When ever  I use  fdisk , and choose option n ( to add a partition ) , it
>gives an error message saying that I need extended partition or I need to
>delete old partition to create a new one .
>
>But I have 40 GB of un used space on my hard drive.
>
>Please advice .
>
>Thank you for your help in advance .

I have to guess here a bit to fill in the blanks, but I think your problem 
is an IDE limitation. You listed 4 partitions, and IDE drives are limited 
to 4 "real" partitions in their true partition table, partitions that can 
be either primary partitions or include one extended partition. An extended 
partition can, in turn, be "sub-divided" into more partitions (I think they 
are called virtual partitions or something like that).

So your setup on your hard disk sounds like it is similar to this one on 
one of my drives:

         Command (m for help): p

         Disk /dev/hda: 82.3 GB, 82348277760 bytes
         240 heads, 63 sectors/track, 10637 cylinders
         Units = cylinders of 15120 * 512 = 7741440 bytes

            Device Boot      Start         End      Blocks   Id  System
         /dev/hda1               1           6       45328+  83  Linux
         /dev/hda2               7         135      975240   82  Linux swap
         /dev/hda3             136        2718    19527480   83  Linux
         /dev/hda4            2719       10637    59867640   83  Linux

If I try to add a partition to this drive, I get:

         Command (m for help): n
         You must delete some partition and add an extended partition first

But you only mention 3 partitions above, and I don't know if that is a 
reporting error on your part or an indication of some other problem. So the 
first thing you should do is check your partition table as I did above (run 
fdisk and use its p command).

If you have a fourth, unused partition, either delete it and replace it 
with an extended partition, or simply format and use it if it contains all 
of the remaining 40 GB in a form you want. (Some hard disks, typically ones 
used in laptops, have a very small partition that gets used by the OS for 
some special purpose, I think handling sleep mode, and that might be typing 
up your fourth partition slot without your knowing it. Just a wild guess 
there, though.)

If you do not have a fourth partition in the table, then post again, 
including a report from fdisk providing the info I show above from mine, 
and maybe I (or someone else here) will be able to spot your problem. Oh, 
also report the version of fdisk you are using ( fdisk -v) ... if it's an 
older version, it might have problems with the drive's physical size ... I 
remember running into that, but years ago.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
