From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: CD writing in ext2 filesystem
Date: Sun, 21 Apr 2002 22:21:13 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204211916.05442.mssnlayam@cs.annauniv.edu>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

Hi all,
	I wrote a CD in ext2 filesystem (that is what I 
thought I did) but now I am unable to read the CD.
What I did was
$ dd if=/dev/zero of=file.ext2 bs=400M count=1
$ mkfs.ext2 file.ext2
# mount file.ext2 /mnt/fileimage -t ext2 -o loop
# cp something /mnt/fileimage
# umount /mnt/fileimage
# cdrecord -v speed=4 dev=0,0,0 -data file.ext2

I was unabe to mount the CD with the command
# mount -t ext2 -o ro /dev/cdrom /mnt/cdrom 

Some observations I made were
$ file file.ext2
file.ext2: Linux rev 1.0 ext2 filesystem data
$ cat /dev/cdrom | file -
standard input:              Linux rev 1.0 ext2 filesystem data
$ dd if=/dev/cdrom of=newfile.ext2
Now I am able to mount newfile.ext2

Could somebody please help me on what could have gone wrong.

Thanks in advance
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
