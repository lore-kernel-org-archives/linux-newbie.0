From: chuck gelm <chuck@gelm.net>
Subject: Re: retrieval
Date: Fri, 07 Jan 2005 09:13:11 -0500
Message-ID: <41DE98F7.9000206@gelm.net>
References: <20050107085806.17319.qmail@web52909.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050107085806.17319.qmail@web52909.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:
> hi
> 
> sorry but i could not understand by unmounting the
> partition. i dont use floppy drive or something like
> that. if i am using hard disk then i cant unmopunt the
> whole partition
> 
> so what to do
> 
> thanks
> 
> ankit jain

Hi, ankit jain:

  The syntax of the command is 'umount' rather than 'unmount'.
Yes, you can 'umount' an entire partition and, actually,
you must 'mount' and 'umount' entire partitions.

  If the partition where the deleted files existed was '/',
then you can (restart the system and) change the mount of
the partition to be 'ro'; read only. This will keep the data
area from being written over.  I think that there is a
command to "re-mount ro" a partition, so you man not need
to restart your system.

  You may choose to shut down the system and reboot using
your distribution install or a recovery CD-ROM disk or any
other recovery media.  Using a boot media created from a
KNOPPIX.iso is a popular way to recover data from many a
operating system and distribution; even M$-Windoze.

Perhaps,
  if your '/' partition contained the deleted file and
  it was mounted as partition /dev/hda1 and
  its type of filesystem was second extended:

mount -t ext2 -o remount,ro /dev/hda1 /

would be syntactically correct.

I hope this helps,  Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
