From: lindax newbie <linux-newbie@tlinx.org>
Subject: Re: partitons and proper order
Date: Thu, 25 Nov 2004 14:22:20 -0800
Message-ID: <41A65B1C.3030305@tlinx.org>
References: <41853B6B.5020903@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41853B6B.5020903@kevino.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

In generally, you want to put your most frequently used partitions
closer to the front.  Read and Write speed can be 2-3x faster at the
front of a disk than at end.
I generally go for:

/boot   (near front of disk for historical reasons, old
        BIOS's or booters)
swap   (especially if you actually "swap")
/      (static system files)
/var+tmp   (I usually make /tmp a pointer to /var/tmp2 -- they are both
       written to frequently and I figure if a crash corrupts something
       during a write command, it'll likely stay confined to 1 partition
/var/cache   #have a separate partition for squid to be happy with with
       it being located on my fastest disk to optimize web-browsing
       speed which is the slowest operation on my disk -- it being
       the slowest could also be an argument for putting it on a
       slower disk, though, as well -- but if something is in the cache
       it will speed it up, and since squid often writes to the cache
       to keep it up-to-date, I like it to be fast -- note -- I set
       all browser disk caches on all systems to as small as possible
       so they will use the squid cache more often -- with my laptop,
       for example, it's often faster to read or write something to
       a network disk than to a local disk (go figure).
/home   Yeah...email, source, compiling is all here, but I think the
       system files will oft be read more than /home files

I currently use xfs with 'noatime,nodiratime,async,numbufs=8'.  XFS is
best on large media files, Reiserfs is better at small files but seems
to have more stability problems.  I also set the 'inode' size on XFS
during file creation based on content -- I think default is 256 bytes.
However if you use the max-block size default (4k on x86 systems), your 
minimum file will take 4K, but you can set inode sizes up to 1/2 the
block size (or 2K on x86 systems) and the file system will store small 
directories, link information and maybe (not sure) small file data 
content in the inode itself thus allowing for small file storage in
the inode and no need for a separate seek to a data block (which would
be 4k in size) to read a small amount of data.

Also, xfs tries to delay writes above and beyond what the kernel does
in it's elevator algorithms so it can know what size space to look for
when looking for free space.  So if you copy data around using 'tar' or
'dd', using a high blocking value of 1-2 meg will help optimize file
layout when copying large files.  It uses a B-tree to store pointers
to sorted-by-size areas of the disk for fast allocation.

It supports multiple streams of data for a file that are useable to 
implement arbitrary system attributes as well as user-defined 
attributes.  System attributes are often used for security labeling 
under some OS's (Trusted Irix and some flavors of linux).

XFS was designed/optimized for real-time read/write of large video 
datastreams to disk for the entertainment industry, making it ideal for 
streaming or recording realtime video.  It supports formatting to 
directly make use of RAID disks so file striping will be optimally laid 
out for a specific RAID configuration - it also has support (still 
experimental, I believe, in Linux) for real-time partitions to allow for 
ultra fast read/writes without going through the file system block 
allocation layer (not that the average user would have a need for this).

Personally I just like the fact that I can make inodes up to 512-2048 in 
size to hold small bits of data that would otherwise take up to an extra 
4k block on disk.

XFS comes with a file-system re-organizer that runs by default in the
wee hours to assure optimal tuning.  The original design didn't require 
this, but some important customer had some degenerate case that could 
result in atypical fragmentation -- so the re-organizer runs in passes
at night, then it marks where it left off organizing when it quits for 
the night so when it restarts the next night, it starts organizing where 
it left off -- assuring that large terabyte disks are eventually "worked 
through", instead of only reorganizing the start of such a partition for 
2-3 hours each night.

It generally outperforms or equals performance of most of the
 journalling file systems except (in the last benchmarks I saw)
doing "rm"/unlinks of many small files.  I would guess this has to
do with 'free-space' combining that likely goes on during deletion
to ensure that contiguous free blocks are marked as single larger
blocks than multiple smaller blocks.  On my "/Share" partition that
I put files to 'share' on my internal network (like latest SuSE
rpm's, Perl CPAN source, Music or Pictures), the freespace layout
is listed as follows:
xfs_admin> freesp
   from      to extents  blocks    pct
      1       1     188     188   0.00
      2       3     256     517   0.00
      4       7      46     224   0.00
      8      15      42     486   0.00
     16      31      53    1300   0.01
     32      63      61    2944   0.01
     64     127     111   10226   0.05
    128     255     144   26433   0.13
    256     511     156   58786   0.29
    512    1023     180  131136   0.64
   1024    2047     186  272879   1.33
   2048    4095      95  265112   1.30
   4096    8191      58  347540   1.70
   8192   16383      29  342561   1.67
  16384   32767      80 1961066   9.58
  32768   65535      11  524764   2.56
  65536  131071      11 1020952   4.99
 131072  262143       7 1321298   6.46
 262144  524287      14 5959340  29.12
 524288 1048576      12 8214071  40.14
---------
    It tries to keep free space organized into the largest extents 
possible, which would explain extra cpu overhead on deleting many small 
files as their space is consolidated into larger and larger extents.


    If you have more than one hard disk, put your swap and OS on that
disk.  My "Share" partition is on one of my large but slower IDE
devices.  I use an even larger (and cheaper) 250G drive for daily
backups....

-linda



mike wrote:

>Hello,
>I have installed linux a few times no real problems with my
>installs. But going to move some drives around and do a fresh
>install. I usually install with the below
>
>/
>swap
>/boot
>/var
>/usr
>/home
>/tmp
>
>I use ext3 and I am currently useing Mandrake distribution on an
>intel compatible machine with ide drives.
>
>My question is does the order I create the partitions matter and if
>so what would be the proper order, if there is one?
>
>
>Mike
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>  
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
