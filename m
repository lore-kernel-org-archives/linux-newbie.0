From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: mbr dd'd
Date: Mon, 13 Dec 2004 13:19:07 -0800
Message-ID: <41BE074B.1000904@bcgreen.com>
References: <1102944601.2248.31.camel@Kaushal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1102944601.2248.31.camel@Kaushal>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: kaushal <kaushal@rocsys.com>

kaushal wrote:
> hi,
>    My friends' system is in a critical situation.
> 	Hdd. is /dev/hdc.
> 	CD-WR is /dev/hdd.
> created a bootable linux iso img.
> 	MISTAKE part:
> dd if=iso.img of=/dev/hdc.Instead of hdd.
The problem here is that you stomped on the hard disk partition
table (which is in the first few sectors of the disk)
zzog you remember exactly where the various partitions started/ended,
then you can repartition the system (just set the partition locations,
don'tformat them) and then continue on.  If you're really lucky, your
first partition was a SWAP partition, otherwise you WILL have data
loss.

You might also want to check out things like knoppix (www.knoppix.org
and the systemrescuecd http://www.sysresccd.org ) I'm pretty sure that
at least one of those two can have a tool which can look for signs
of partition boundaries to help you figure out where the partitions used
to be.

Of your first psrtition was an ext[23] filesystem, the ext filesystem
has some capability of recovery under such conditions....

Once you hae recreated the partition table, go something
like (depending on the partition you're trying to recover:)
  [root@me html]# mkfs -n -v /dev/hdc2

You will get output like:
         mke2fs 1.35 (28-Feb-2004)
         Filesystem label=
         OS type: Linux
         Block size=4096 (log=2)
         Fragment size=4096 (log=2)
         131616 inodes, 263056 blocks
         13152 blocks (5.00%) reserved for the super user
         First data block=0
         9 block groups
         32768 blocks per group, 32768 fragments per group
         14624 inodes per group
         Superblock backups stored on blocks:
                 32768, 98304, 163840, 229376

That last set of numbers is the important ones: they are backup
copies of the superblock (critical info about the filesystem
setup).   You can recover (parts of) a filesystem that has been
trashed by a waywarddd via (in this case)

fsck -n -f -B 229376 /dev/hdc2

(
   -n causes a dry run (does not actualy write to the disk)).If the results
   look reasonable (you WILL get at least some errors), then you can remove
   the -n to do a real repair attempt.
)

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
