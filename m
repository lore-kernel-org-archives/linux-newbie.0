From: cr <cr@orcon.net.nz>
Subject: Re: Disk Partition
Date: Sat, 29 May 2004 17:36:30 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405290528.i4T5SLUL007488@dbmail-mx6.orcon.co.nz>
References: <20040529035957.95A3F2A180@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040529035957.95A3F2A180@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

On Sat, 29 May 2004 15:59, Peter H. wrote:
> Hi,
>
> can the program "fips" be used to safely partition a hard drive with
> Windows XP installed in preparation for a linux installation?
>
>
> Thanks

I can't answer for FIPS  from personal experience because (due to 
circumstances) I've never used it.

Depends on whether the WinXP partition is FAT32 or NTFS.    Some of the 
documentation I've seen says WinXP uses NTFS, however the only WinXP setup 
I've ever tried to resize turned out to be FAT32, much to my surprise.   
The way to find out is probably to boot off a Linux rescue floppy such as RIP 
(or maybe a Knoppix CD) and see what fdisk says it is.   (It's even 
possible that WinXP itself may tell you, somewhere in 'My Computer', but I 
don't know for sure).

IF it's NTFS, then ntfsresize  should do it, and (so I've read) will take 
care of moving any files.    (Always assuming, of course, that the Windows 
partition isn't too full to allow this).

In the case of FAT32, I believe you're advised to run  defrag first to 
compact all files.     In the one case I've tried, I used Ranish Partition 
Manager (which is DOS-based, and free*)  simply because that's what I had 
handy on floppy.   (I also had a Knoppix cd-rom with me which apparently has  
qtparted  on it which (I believe) will also handle repartitioning, but I 
didn't know at the time that Knoppix included qtparted).

Anyway, Ranish Partition Manager successfully halved the size of the WinXP 
partition, and WinXP ran successfully again with no complaints afterwards.   
So it can be done.    

This article:
http://www.linuxmigration.com/quickref/install/disk.html
recommends FIPS for Windows 95/98/ME.     This is reassuring, since FIPS 2.0 
itself seems to have been written sometime around the time of Win95, which 
could use FAT16 or FAT32 partitions - but I'm pretty sure by the time WinME 
came along, Windows was committed to FAT32.

Usual cautions apply about backing up any vital data first!   

cr
(*Ranish Partition Manager is actually shareware - with a ten-year free trial 
period.    The guy has a sense of humour  :)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
