From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: CD writing in ext2 filesystem
Date: Thu, 25 Apr 2002 06:54:10 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204241631.59061.mssnlayam@cs.annauniv.edu>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pierre Rousselet <pierre.rousselet@wanadoo.fr>
Cc: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

Hi,
	Thank you very much for help. Now I am able to write
CDs in native ext2 format. This is very useful since there is
no need to bother about long filenames, maximum depth, etc.
I would like to summarize how to do it. This is for the benefit
of others who are new to the list or have lost track of this
discussion.
	The point to note is the block size has to be 4k.

	Create a file of the required size
$ dd if=/dev/zero of=file.ext2 bs=650M count=1
	Create an ext2 filesystem in it. Block size 4096 is important
$ mkfs.ext2 file.ext2 -b 4096
$ mkdir mountdir
# mount file.ext2 mountdir -o loop
# cp something mountdir
# umount mountdir
	Write the CD
# cdrecord dev=0,0,0 speed=4 -data file.ext2
	Now mount the CD and use it
# mount /dev/cdrom mountdir -t ext2 -o ro

Thank you,
Suriya Narayanan M S
-- 
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
