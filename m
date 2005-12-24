From: bob krasko <rkrasko1@nycap.rr.com>
Subject: usb  sd cardreader
Date: Sat, 24 Dec 2005 16:10:01 -0500
Message-ID: <43ADB929.7010206@nycap.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


i am setting up debian sarge with the 2.4 kernel.

my computer has a dvd burner(dev/cdrom, ls-120 drive (dev/sda), and a 
floppy. all of which i finally set up.

the usb reader i want to use is a lexar jumpdrive trio, (the sandisk 
readers are next)

i have tried many things and have followed the flash memory how to in 
detail.(as well as many hours of other things from google)

when trying to get the usb reader to set up, i added the following to fstab:
next line under proc:
none	/proc/bus/usb	usbdevfs	defaults	0	0

and the last line added under my ls 120 drive (dev/sda) is

/dev/sdb	/media/lexar	usbdevfs	rw,user,noauto,	0    0

	
the command mount -t usbfs /dev/sdb /media/lexar mounts the device to 
the media directory in lexar.

when i go into /media/lexar and do a ls command i get:
001 002 003 devices drivers

instead of reading the files that i put on the sd card and carried over 
from my win 2000 machine. (i put a wav file, an mp3, txt, etc just to 
see how linux would read the various files.

it appears that i have come to the end of my wire and really would 
appreciate some help.

the how to indicates that my device is a scsi, and my ls 120 shows up as 
the first scsi device, making the next device sdb, right ???

tia
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
