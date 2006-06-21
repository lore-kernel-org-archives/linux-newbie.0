From: Ray Olszewski <ray@comarre.com>
Subject: Re: Lost HD Partition
Date: Tue, 20 Jun 2006 22:15:37 -0700
Message-ID: <4498D5F9.6040803@comarre.com>
References: <44995A5E.2030004@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44995A5E.2030004@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> For some reason I cannot access my important /usr/local hard drive 
> partition.
> 
> mount /mnt/hda6
> mount: wrong fs type, bad option, bad superblock on /dev/hda6,
> missing codepage or other error
> 
> # /sbin/fdisk /dev/hda6 -p
> 
> Disk /dev/hda6: 1998 MB, 1998710784 bytes
> 16 heads, 63 sectors/track, 3872 cylinders
> Units = cylinders of 1008 * 512 = 516096 bytes
> 
> Device Boot Start End Blocks Id System
> ----------
> The drive has/had ext3 which information apparently got lost
> 
> How could I access this drive again and remake it ext3 w/o losing the data?
> 
> What other info is needed?
> 
> Thanks & regards

The way you are mounting (or trying to mount) hda6 relies on the 
information about it entered into /etc/fstab . Take a look at that file 
and see if it suggests a solution; if it doesn't, you should probably 
post it here, since one of us might then spot something you missed.

For example, is it possible that fstab specifies the <type> as "ext3" 
rather than as "ext3,ext2"? If so, and if the ext3 journal "got lost" 
somehow (I'm not really clear on what you are telling us happened), then 
the kernel would not try to fall back to ext2 ... offhand, I don't know 
what error it would give, but the one you are seeing at least seems 
consistent with this.

The fdisk information you provide seems a bit sparse. You didn't include 
the partition table info, just what looks like the information about the 
small (by today's standards) physical disk (which would be /dev/hda, not 
/dev/hda6). The combination of that and the fact that my version of 
fdisk doesn't have a -p option leaves me unable to make specific 
suggestions about how you should provide the partition table info.

Have you tried running e2fsck on this partition? If so, what happens?

The usual way to add an ext3 journal to an ext2 filesystem is with 
tune2fs ... specifically, "tune2fs -j /dev/hda6".

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
