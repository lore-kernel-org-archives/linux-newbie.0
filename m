From: rekha vn <vidiyala_r@yahoo.com>
Subject: problem with mount
Date: Thu, 28 Jul 2005 01:24:54 -0700 (PDT)
Message-ID: <20050728082454.15098.qmail@web40625.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ihave both win98 and linux(red hat) on my system
I have used the command : sfdisk -l 
to view my partition info on my system.
The output of the command is:

DEVICE       BOOT  START   END   ID   SYSTEM
/dev/hda1     *      0+    607    b   Win95 FAT32
/dev/hda2           608    4863   f   Win95 Ext'd(LBA)

/dev/hda3            0      0     0   Empty
/dev/hda4            0      0     0   Empty
/dev/hda5           608+   3985   e   Win95 FAT16(LBA)
/dev/hda6           3986+  3998   83  Linux
/dev/hda7           3999+  4798   83  Linux
/dev/hda8           4799+  4863   82  Linux Swap
 
Warning: start=63 - this looks like partition rather
than the entire disk.Using fdisk on it is probably
meaningless.[Use the --force option if you really want
this]

I've got the above warning message too.

Most of my downloaded files are in win98 D: drive.
Now how do i access these files from linux.
Please help ASAP.


		
____________________________________________________
Start your day with Yahoo! - make it your home page 
http://www.yahoo.com/r/hs 
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
