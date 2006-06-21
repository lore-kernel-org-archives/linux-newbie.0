From: Peter <heisspf@skyinet.net>
Subject: Re: Lost HD Partition
Date: Wed, 21 Jun 2006 16:23:49 -0300
Message-ID: <44999CC5.9050807@skyinet.net>
References: <44995A5E.2030004@skyinet.net> <4498D5F9.6040803@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4498D5F9.6040803@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> Peter wrote:
>> For some reason I cannot access my important /usr/local hard drive 
>> partition.
>>
>> mount /mnt/hda6
>> mount: wrong fs type, bad option, bad superblock on /dev/hda6,
>> missing codepage or other error
>>
>> # /sbin/fdisk /dev/hda6 -p
>>
>> Disk /dev/hda6: 1998 MB, 1998710784 bytes
>> 16 heads, 63 sectors/track, 3872 cylinders
>> Units = cylinders of 1008 * 512 = 516096 bytes
>>
>> Device Boot Start End Blocks Id System
>> ----------
>> The drive has/had ext3 which information apparently got lost
>>
>> How could I access this drive again and remake it ext3 w/o losing the 
>> data?
>>
>> What other info is needed?
>>
>> Thanks & regards
>
> The way you are mounting (or trying to mount) hda6 relies on the 
> information about it entered into /etc/fstab . Take a look at that 
> file and see if it suggests a solution; if it doesn't, you should 
> probably post it here, since one of us might then spot something you 
> missed.
>
> For example, is it possible that fstab specifies the <type> as "ext3" 
> rather than as "ext3,ext2"? If so, and if the ext3 journal "got lost" 
> somehow (I'm not really clear on what you are telling us happened), 
> then the kernel would not try to fall back to ext2 ... offhand, I 
> don't know what error it would give, but the one you are seeing at 
> least seems consistent with this.
>
> The fdisk information you provide seems a bit sparse. You didn't 
> include the partition table info, just what looks like the information 
> about the small (by today's standards) physical disk (which would be 
> /dev/hda, not /dev/hda6). The combination of that and the fact that my 
> version of fdisk doesn't have a -p option leaves me unable to make 
> specific suggestions about how you should provide the partition table 
> info.
>
> Have you tried running e2fsck on this partition? If so, what happens?
>
> The usual way to add an ext3 journal to an ext2 filesystem is with 
> tune2fs ... specifically, "tune2fs -j /dev/hda6".
>
>
thanks!

cat /etc/fstab
.....
/dev/hda6 /mnt/hda6 ext3 noauto,users,suid,dev,exec 0 0
.....

fdisk /dev/hda
Disk /dev/hda: 255 heads, 63 sectors, 4998 cylinders

Nr AF  Hd Sec  Cyl  Hd Sec  Cyl     Start      Size ID
 3 00 254  63 1023 254  63 1023   29334690   50958180 05
 5 00 254  63 1023 254  63 1023   23438835    3903795 05
 6 00 254  63 1023 254  63 1023   27342630    3919860 05
 7 00 254  63 1023 254  63 1023   31262490   13671315 05
 8 00 254  63 1023 254  63 1023   44933805    3903795 05
 9 00 254  63 1023 254  63 1023   48837600    2120580 05
10 00   0   0    0   0   0    0          0          0 00

Disk /dev/hda: 41.1 GB, 41110142976 bytes
255 heads, 63 sectors/track, 4998 cylinders
Units = cylinders of 16065 * 512 = 8225280 bytes

   Device Boot      Start         End      Blocks   Id  System
/dev/hda1               1        1824    14651248+   c  W95 FAT32 (LBA)
/dev/hda2            1825        1826       16065   83  Linux
/dev/hda3            1827        4998    25479090    5  Extended
/dev/hda5            1827        3285    11719386   83  Linux
/dev/hda6            3286        3528     1951866   83  Linux
/dev/hda7            3529        3772     1959898+  83  Linux
/dev/hda8            3773        4623     6835626   83  Linux
/dev/hda9            4624        4866     1951866   83  Linux
/dev/hda10           4867        4998     1060258+  83  Linux
------------------

/sbin/tune2fs -j /dev/hda6
tune2fs 1.38 (30-Jun-2005)
/sbin/tune2fs: Bad magic number in super-block while trying to open 
/dev/hda6
Couldn't find valid filesystem superblock.
-----------
gparted reports filesystem unknown

Unable to detect filesystem: Possible reasons
-- The filesystem is damaged
-- The filesystem is unknown to libparted
-- There is no filesystem avaiable (unformatted)
-------------

/sbin/e2fsck /dev/hda6
e2fsck 1.38 (30-Jun-2005)
Couldn't find ext2 superblock, trying backup blocks...
/sbin/e2fsck: Bad magic number in super-block while trying to open /dev/hda6

The superblock could not be read or does not describe a correct ext2
filesystem.  If the device is valid and it really contains an ext2
filesystem (and not swap or ufs or something else), then the superblock
is corrupt, and you might try running e2fsck with an alternate superblock:
    e2fsck -b 8193 <device>

 /sbin/e2fsck -b 8193 /dev/hda6
e2fsck 1.38 (30-Jun-2005)
/sbin/e2fsck: Bad magic number in super-block while trying to open /dev/hda6

The superblock could not be read or does not describe a correct ext2
filesystem.  If the device is valid and it really contains an ext2
filesystem (and not swap or ufs or something else), then the superblock
is corrupt, and you might try running e2fsck with an alternate superblock:
    e2fsck -b 8193 <device>

So something got damaged and can then the data still be salvaged?

Regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
