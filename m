From: Ray Olszewski <ray@comarre.com>
Subject: Re: e2fs hosed?
Date: Mon, 14 Oct 2002 23:24:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021014231926.0211e170@celine>
References: <CPIMSSMTPU11kVgKMy5000001a5@cpimssmtpu11.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU11kVgKMy5000001a5@cpimssmtpu11.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

e2fsck checks ext2 filesystems, not drives.  /dev/hdb is NOT a filesystem; 
it is a drive. The drive contains partitions; according to your  (I 
presume) fdisk output, partitions /dev/hdb1 and  /dev/hdb2 contain ext2 
filesystems.

The message you get in response to "e2fsck -b 131073 /dev/hdb" is simply 
correct -- that device does NOT itself contain an ext2 filesystem.

So ... try "e2fsck /dev/hdb1" and "e2fsck /dev/hdb2".

As to your comment about hdb2 ... sorry, but I can't comment intelligently 
on a problem described as "major issues".


At 10:45 PM 10/14/02 -0700, Alan Womack wrote:
>[root@Webby root]# e2fsck -b 131073 /dev/hdb
>e2fsck 1.23, 15-Aug-2001 for EXT2 FS 0.5b, 95/08/09
>e2fsck: Bad magic number in super-block while trying to open /dev/hdb
>
>The superblock could not be read or does not describe a correct ext2
>filesystem.  If the device is valid and it really contains an ext2
>filesystem (and not swap or ufs or something else), then the superblock
>is corrupt, and you might try running e2fsck with an alternate superblock:
>     e2fsck -b 8193 <device>
>
>
>I've tried quite a few different superblocks, but I need a command to tell 
>me what my block size is.  I might be sending it searching in the wrong 
>location.  The partition table seems fine:
>
>Disk /dev/hdb: 255 heads, 63 sectors, 525 cylinders
>Units = cylinders of 16065 * 512 bytes
>
>    Device Boot    Start       End    Blocks   Id  System
>/dev/hdb1             1        11     88326   83  Linux
>/dev/hdb2            12       470   3686917+  83  Linux
>/dev/hdb3           471       503    265072+  82  Linux swap
>
>/dev/hdb1 is fine
>/dev/hdb2 has major issues..





--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
