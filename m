From: Peter <heisspf@skyinet.net>
Subject: Lost HD Partition
Date: Wed, 21 Jun 2006 11:40:30 -0300
Message-ID: <44995A5E.2030004@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

For some reason I cannot access my important /usr/local hard drive 
partition.

mount /mnt/hda6
mount: wrong fs type, bad option, bad superblock on /dev/hda6,
missing codepage or other error

# /sbin/fdisk /dev/hda6 -p

Disk /dev/hda6: 1998 MB, 1998710784 bytes
16 heads, 63 sectors/track, 3872 cylinders
Units = cylinders of 1008 * 512 = 516096 bytes

Device Boot Start End Blocks Id System
----------
The drive has/had ext3 which information apparently got lost

How could I access this drive again and remake it ext3 w/o losing the data?

What other info is needed?

Thanks & regards


Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
