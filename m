From: Ray Olszewski <ray@comarre.com>
Subject: Re: Partitioning
Date: Fri, 09 Aug 2002 08:52:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020809084138.021318a0@celine>
References: <200208092058.34055.natarajan_k@hotpop.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208092058.34055.natarajan_k@hotpop.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: natarajan_k@hotpop.com, ILUGC <ilugc@aero.iitm.ernet.in>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

At 08:58 PM 8/9/02 -0400, Natarajan K wrote:
>HI,
>         I tried changing an existing dos partition into a ext2 one using 
> mkfs.ext2
>and mk2efs.
>  # mkfs.ext2 /dev/hda7

You do this and it does not return an error?

>But the partition type is still FAT 32 when I use fdisk(in Linux). I am not
>able to mount it as a FAT partition though.

Right. That's because you have a mess, not a working partition/filesystem 
combination. You need to change the partition type in fdisk, using the "t" 
command.

Only after you have changed the partition type to "Linux" (0x83) should you 
try to create a filesystem using mke2fs or mkfs.ext2 .

>If I delete the partition then my
>partition numbers get changed i.e.
>If I am delete /dev/hda7 -- FAT 32 (mentioned above)
>then the following happens
>/dev/hda8 -----> /dev/hda9 (Linux swap)
>/dev/hda9 -----> /dev/hda8 (ext2)
>
>The /dev/hda9 partition houses LInux.

I don't understand this part. If the swap partition became hda7, I would 
have a *guess* about what is going on (basically, that logical partitions 
need to be numbered in order, so deleting one causes the others to move up 
... I haven't actually seen this behavior, but I doubt I've ever actually 
tried anything that would cause it). But I can't think of a reason why the 
deletion would cause two other partitions to *exchange* their listings in 
the partition table.

>If the partition number changes then I
>may need to run LILO again. But is there no other way out to convert the
>existing FAT partition to an ext2 partition.

There is, and I described it above. Recaping, you need to do it in two steps:

         1. Use fdisk to change the partition type to Linux (0x83).
         2. Use mke2fs to create an ext2 filesystem in the partition.




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
