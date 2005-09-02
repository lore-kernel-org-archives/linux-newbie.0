From: Ray Olszewski <ray@comarre.com>
Subject: Re: kernel log messages and disk space
Date: Thu, 01 Sep 2005 18:50:24 -0700
Message-ID: <4317AFE0.4080600@comarre.com>
References: <Pine.LNX.4.44.0509012049410.4730-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0509012049410.4730-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>, linux-newbie@vger.kernel.org

OK, Karthik. With the extra information, I'm adding the list back in, 
since other might have a more helpful response than I. Specifics below.

Karthik Vishwanath wrote:
> On Thu, 1 Sep 2005, at 17:14, Ray Olszewski wrote to Karthik Vishwanath:
> 
> 
>>I'm sorry, Karthik, but this information doesn't make sense to me.
>>
>>Normally, hda1 would be a partition, not a drive, so I really do not 
>>understand what all this output means. If it is something that makes 
>>sense ... say one of those old versions of Linux that boot from a DOS 
>>directory ... you'll need describe the setup.
>>
>>If not, I'd want to see an fdisk for /dev/hda (the drive itself), not 
>>for a partition.
>>
>>Also, if you look back at my Aug 21 message, I asked for more 
>>information than a partition table. Please provide it.
>>
> 

Just a reminder for others; the original issue was that the logs were 
filling up with messages of this sort (I'm picking a representative 
example):

	Aug 18 07:38:18 mithrandir kernel: attempt to access
		beyond end of device
	Aug 18 07:38:18 mithrandir kernel: 03:01: rw=0,
		want=2031123176, limit=13277691

> 
> Heres all the information you had requested, i.e. all of which I could get 
> without asking you more for clarification...
> 
> 1. df 
> 
> Filesystem           1K-blocks      Used Available Use% Mounted on
> /dev/hdb2             11535376   2731884   8217524  25% /
> tmpfs                   257164         0    257164   0% /dev/shm
> /dev/hdb3             11519672   9960692    973816  92% /home
> /dev/hdb1             53676064  33833024  19843040  64% /dosd
> /dev/hda1             13264712   4129016   9135696  32% /dosc

This suggests no problem.

> 2. fdisk /dev/hda: 
> 
> The number of cylinders for this disk is set to 1653.
> There is nothing wrong with that, but this is larger than 1024,
> and could in certain setups cause problems with:
> 1) software that runs at boot time (e.g., old versions of LILO)
> 2) booting and partitioning software from other OSs
>    (e.g., DOS FDISK, OS/2 FDISK)
> 
> Command (m for help): p
> 
> Disk /dev/hda: 13.6 GB, 13601193984 bytes
> 255 heads, 63 sectors/track, 1653 cylinders
> Units = cylinders of 16065 * 512 = 8225280 bytes
> 
>    Device Boot      Start         End      Blocks   Id  System
> /dev/hda1   *           1        1653    13277691    c  W95 FAT32 (LBA)

This is consistent with the df output and tells us that there is nothing 
ugly about how the partition is positioned on the disk. It also tells us 
that the partition hda1 occupies all of the drive hda.

> 3. reports by dmesg on boot wrt ide info
> 
>     ide0: BM-DMA at 0xff00-0xff07, BIOS settings: hda:DMA, hdb:DMA
>     ide1: BM-DMA at 0xff08-0xff0f, BIOS settings: hdc:DMA, hdd:DMA
> hda: WDC WD136AA, ATA DISK drive
> hdb: ST380020A, ATA DISK drive
> hdc: CD-RW 48X24, ATAPI CD/DVD-ROM drive
> hdd: CRD-8322B, ATAPI CD/DVD-ROM drive
> ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
> ide1 at 0x170-0x177,0x376 on irq 15
> hda: 26564832 sectors (13601 MB) w/2048KiB Cache, CHS=26354/16/63, 
> UDMA(33)
> hdb: 156301488 sectors (80026 MB) w/2048KiB Cache, CHS=155061/16/63, 
> UDMA(100)
> Partition check:
>  /dev/ide/host0/bus0/target0/lun0: [PTBL] [1653/255/63] p1
>  /dev/ide/host0/bus0/target1/lun0: [PTBL] [9729/255/63] p1 p2 p3 p4
> ext3: No journal on filesystem on ide0(3,66)

These last 3 lines are new to me (at least for ide devices). That may 
just mean you're running a newer kernel than I (I run 2.4.27 here, on my 
main Linux host).

> 4. (from email of 21-Aug: output of "free" (both lines) run proximate to 
> the messages in the logs) - I didn't quite get what you were asking. I 
> thought it must be the out of free
> 
>              total       used       free     shared    buffers     cached
> Mem:        514332     506868       7464          0       9008     307692
> -/+ buffers/cache:     190168     324164
> Swap:      1036184        408    1035776

Sorry I was not clearer here. I meant that I'd like to see (or have you 
check) the output of "free" from a time when you are getting these 
errors logged  ... to see they are associated with filling up RAM as 
reported on the second line, or with just starting to use swap. If so, 
it may mean you have either a bad spot high in RAM, or a bad swap 
partition, but it rarely matters because you rarely use the problem 
area. This is really a long shot, but not so long that I haven't 
actually experienced it, so I though it worth asking.
> 
> The machine has not had any kind of an "update", except being physically
> relocated a few miles in space (in newer, better, cooler apartment :-)

Good for you. (I assume you too were relocated.)

> There should almost be no hard drive activity on hda1 (hence, not mounting
> it avoids the original issue), from any activity that I am cognizant
> about, that I use the system for.

Well, any port in a storm, as they say, so this may be your best 
solution. And much as I hate to say it (since this is Linux, not 
Windows), occasionally this sort of thing can be a soft problem that 
gets fixed by a reboot (I had a quite different filesystem problem last 
week, where the kernel couldn't read some directories, that a reboot 
completely solved).

You originally said the timestamps were "quite varied", so I didn't 
really ask myself if some particular process might be causing the 
errors. But I'd suggest you think if there is some regular cron job (one 
example is updating the "locate" database) that is associated in time 
with the errors.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
