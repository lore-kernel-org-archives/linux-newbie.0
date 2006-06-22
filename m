From: Peter <heisspf@skyinet.net>
Subject: Re: Lost HD Partition
Date: Thu, 22 Jun 2006 10:02:41 -0300
Message-ID: <449A94F1.2030308@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Thanks all!

mount  -t ext2 /dev/hda6 /mnt/test
mount: wrong fs type, bad option, bad superblock on /dev/hda6,
       missing codepage or other error
      

Yes I am sure that the partition was formated as ext3, then this does 
not work according to Chuck since these filesystems depend on the 
superblock.

Trying Hal's suggestion:

/sbin/e2fsck -b 32768 /dev/hda6
e2fsck 1.38 (30-Jun-2005)
/sbin/e2fsck: Invalid argument while trying to open /dev/hda6

The superblock could not be read or does not describe a correct ext2
filesystem.  If the device is valid and it really contains an ext2
filesystem (and not swap or ufs or something else), then the superblock
is corrupt, and you might try running e2fsck with an alternate superblock:
    e2fsck -b 8193 <device>


/sbin/mke2fs -n /dev/hda6

mke2fs 1.38 (30-Jun-2005)
Filesystem label=
OS type: Linux
Block size=4096 (log=2)
Fragment size=4096 (log=2)
244320 inodes, 487966 blocks
24398 blocks (5.00%) reserved for the super user
First data block=0
15 block groups
32768 blocks per group, 32768 fragments per group
16288 inodes per group
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912

Trying these backup superblocks /sbin/e2fsck -b * /dev/hda6, I get with 
each: Invalid argument while trying to open /dev/hda6

Since apparently the superblock is corrupted and the partion has not 
been formated since, therefore the data should still be on the disk.
So what other alternate superblock can be tried?
Yet
The superblock could not be read or does not describe a correct ext2
filesystem.

It seems I am kind of stuck.

Regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
