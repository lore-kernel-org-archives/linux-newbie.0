From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Partitioning problem
Date: Sat, 27 Jul 2002 10:41:02 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207271005040.30515-100000@Consulate.UFP.CX>
References: <107a26d107876a.107876a107a26d@homemail.nyu.edu>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <107a26d107876a.107876a107a26d@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Anshuman Singh Rawat <asr245@nyu.edu>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi.

>>> btw I used Partition Magic from WinXP to partition the disc as I
>>> dont know how to work around using fdisk in Linux.

In the process, you probably caused this problem, and my advice would be
to scrap PartitionMagic and redo your system completely. Here's the
procedure I use to set up a system to dual-boot WIndows (any version)
and Linux:

 1. Use the Linux fdisk to create the partitioning scheme I want.
    In my experience, NONE of the Windows-based partitioning
    software can correctly create partitions for Linux, and this
    includes PartitionMagic.

    This is the partition layout I generally use:

	Partition  Type  Cylinders  Notes

	/dev/hda1  Swap     254     Anti-virus measure
        /dev/hda2  ext2      2      Mounted as /boot under Linux
        /dev/hda3  FAT32    50%     C: under Windows
        /dev/hda4  ext2     Rest    Mounted as / under Linux

    The allocation of /dev/hda1 as the swap partition is because of
    the number of Windows viruses that overwrite the first so many
    Megabytes of the primary hard drive. Since there is nothing of
    importance in a Linux swap partition when Windows is running,
    this measure prevents those viruses from overwriting anything
    other than the partition table, and that is relatively easy to
    recreate.

 2. Install one's favourite dialect of Windows into /dev/hda3 that
    was reserved for it in the above partition table. This writes
    the correct MBR record out, and marks /dev/hda3 as the bootable
    partition.

 3. Install one's favourite Linux distribution specifying the mount
    points as listed above, and placing the boot loader in the boot
    record of /dev/hda2 and NOT in the MBR.

 4. Use fdisk to set /dev/hda2 as the bootable partition. Either the
    Linux or Windows fdisk can be used for this without problems.

Every distribution of Linux I've met auto-detects that Windows is
installed and automatically sets up the boot loader correctly.

Incidentally, the reason for putting the Linux boot loader in the boot
sector of the /boot mount is because Windows has a habit of overwriting
the MBR with its own boot loader, although it respects the boot marker
when doing so.

> Thanks for the response, but the problem is that with the partition
> shown below i am never able to boot using linux. so i cant edit the
> lilo.conf. or shud i change partition 1 (/dev/hda1) to type ext2
> from current vfat. coz that was the only way i cud boot into linux?

Before you do anything, you need to decide precicely what each partition
contains. The partition layout shown, taken together with your comments,
idnicates that the /boot mount point is probably /dev/hda1 rather than
the /dev/hda6 indicated, and this is probably PartitionMagic's work.

>>> I want to have both WinXP and Linux (RHL7.3) on my system but am 
>>> having trouble with the partitions. My partition table (i dunno 
>>> whether thats the correct term) looks like this (as shown by linux
>>> installer ) -
>>>
>>>                  Start    End  Size(MB)  Type      Mount point
>>> /dev/hda
>>>    Free              1      1      8     Free
>>>    /dev/hda1         2      7     47     vfat
>>>    /dev/hda2         8    708   5499     NTFS
>>>    /dev/hda3       709   2432  13523     Extended
>>>      /dev/hda5     709   1413  5530      NTFS
>>>      /dev/hda6    1414   1419    47      ext2      /boot
>>>      /dev/hda7    1420   1453   267      swap
>>>      /dev/hda8    1454   2432  7697      ext2      /
>>>
>>> the error message i get is -> Boot partition may not meet booting
>>> constraints for your architecture. Creation of boot disk is highly
>>> encouraged.

>> Thats not an error message but a warning from the install process, 
>> as you see lilo or grub was installed.

>>> The options I get is "modify partition" and "add anyway". If I
>>> proceed with 'add anyway' option installation is succesful but I
>>> dont get the option of selecting the OS for booting the PC and the
>>> PC boots using WinXP. I tried changing the /dev/hda1 partition to
>>> ext2 ,mount pt /boot. The installation was succesful and so was the
>>> boot, but then the option of starting with WinXP dissapeared. I
>>> could only boot with Linux Can anyone help me out here?

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
