From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Partitioning
Date: Fri, 9 Aug 2002 19:31:06 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208091925150.8397-100000@Consulate.UFP.CX>
References: <200208092058.34055.natarajan_k@hotpop.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208092058.34055.natarajan_k@hotpop.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Natarajan K <natarajan_k@hotpop.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Hi.

> I tried changing an existing dos partition into a ext2 one using
> mkfs.ext2 and mk2efs.

>> # mkfs.ext2 /dev/hda7

> But the partition type is still FAT32 when I use fdisk (in Linux).
> I am not able to mount it as a FAT partition though.

Actually, the "Windows partition type" is still FAT32 as that's what is
stored in the partition table. You correct this by using the 't' command
within Linux fdisk and setting the relevant partition's value to 83.

> If I delete the partition then my partition numbers get changed i.e.
> If I am delete /dev/hda7 -- FAT 32 (mentioned above) then the
> following happens

> /dev/hda8 -----> /dev/hda9 (Linux swap)
> /dev/hda9 -----> /dev/hda8 (ext2)

> The /dev/hda9 partition houses LInux.

This happens because you are dealing with what Windows calls "Logical
partitions", and those can only be safely deleted from the end.

> If the partition number changes then I may need to run LILO again.

As it happens, you won't need to rerun lilo but you WILL need to tweak
various Linux configuration files to adjust which partitions are mounted
or exported where, so I would suggest you don't do this.

> But is there no other way out to convert the existing FAT partition
> to an ext2 partition.

See above.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
