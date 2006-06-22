From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Lost HD Partition
Date: Thu, 22 Jun 2006 09:58:05 -0400
Message-ID: <20060622135804.GA1229@lnx2.kvinet.com>
References: <449A94F1.2030308@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <449A94F1.2030308@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 06-22, Peter wrote:
> Trying Hal's suggestion:
> 
> /sbin/e2fsck -b 32768 /dev/hda6
> e2fsck 1.38 (30-Jun-2005)
> /sbin/e2fsck: Invalid argument while trying to open /dev/hda6
> 
> The superblock could not be read or does not describe a correct ext2
> filesystem.  If the device is valid and it really contains an ext2
> filesystem (and not swap or ufs or something else), then the superblock
> is corrupt, and you might try running e2fsck with an alternate superblock:
>    e2fsck -b 8193 <device>
> 
> 
> /sbin/mke2fs -n /dev/hda6
> 
> mke2fs 1.38 (30-Jun-2005)
> Filesystem label=
> OS type: Linux
> Block size=4096 (log=2)
> Fragment size=4096 (log=2)
> 244320 inodes, 487966 blocks
> 24398 blocks (5.00%) reserved for the super user
> First data block=0
> 15 block groups
> 32768 blocks per group, 32768 fragments per group
> 16288 inodes per group
> Superblock backups stored on blocks:
>        32768, 98304, 163840, 229376, 294912
> 
> Trying these backup superblocks /sbin/e2fsck -b * /dev/hda6, I get with 
> each: Invalid argument while trying to open /dev/hda6
> 
> Since apparently the superblock is corrupted and the partion has not 
> been formated since, therefore the data should still be on the disk.
> So what other alternate superblock can be tried?
> Yet
> The superblock could not be read or does not describe a correct ext2
> filesystem.
> 
> It seems I am kind of stuck.

	Bummer.. Really grabbing at straws: What might happen if you
booted the machine with a rescue disk that ran a kernel from RAM
then use dd to copy the contents of hda6 to another clean drive
fitted, temporarily, in the machine?? Since hda6 is a virtual
partition, copying it to a primary partition may work?? Depends on
how important that partition is I guess..

	If all those superblock backups are corrupted, it seems
nothing would work though.. I don't think 'sfdisk' will help in this
case either.. Good Luck..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
