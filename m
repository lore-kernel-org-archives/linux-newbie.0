From: Natarajan K <natarajan_k@hotpop.com>
Subject: Partitioning
Date: Fri, 9 Aug 2002 20:58:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208092058.34055.natarajan_k@hotpop.com>
Reply-To: natarajan_k@hotpop.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ILUGC <ilugc@aero.iitm.ernet.in>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

HI,
	I tried changing an existing dos partition into a ext2 one using mkfs.ext2 
and mk2efs. 
 # mkfs.ext2 /dev/hda7
But the partition type is still FAT 32 when I use fdisk(in Linux). I am not 
able to mount it as a FAT partition though. If I delete the partition then my 
partition numbers get changed i.e. 
If I am delete /dev/hda7 -- FAT 32 (mentioned above)
then the following happens
/dev/hda8 -----> /dev/hda9 (Linux swap)
/dev/hda9 -----> /dev/hda8 (ext2)

The /dev/hda9 partition houses LInux. If the partition number changes then I 
may need to run LILO again. But is there no other way out to convert the 
existing FAT partition to an ext2 partition.
-- 
Natarajan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
