From: prasad <prasad@isilica.net>
Subject: still bugging me...pblm on->how to get mass storage devices
	(memory card readers) to work
Date: Wed, 06 Apr 2005 16:22:36 +0530
Message-ID: <1112784755.3598.31.camel@prasad.isilica.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Problem:-I hav external usb harddrive,how can i make it detect from
	fedora core linux...( itried every thing wht u published...in ur
	message) 


Even i followed dha steps dat u replied for message(94020),i still cant
able to detect my External USB hardrrive..frum Fedora core linux.

i did all trials,
what i did iz:
# /sbin/modprobe sg
#/sbin/modprobe usb_storage

lsmod giving me da exact thing,as below:
#  /sbin/lsmod | grep sg
   sg  28513  0
   scsi_mod 105360  4 usb_storage,sg,libata,sd_mod

pblm cums wher , it was showing like as below:
# mount -t usbdevfs 0 /proc/bus/usb
  mount: 0 already mounted or /proc/bus/usb busy
  mount: according to mtab, usbdevfs is already mounted on /proc/bus/usb
# mount -t vfat /dev/sda1 /mnt/HD12
  mount: /dev/sda1 is not a valid block device



As u said, i tried with other scsi devices for mounting,,,
but not worked out,,
Wht i tried iz:
sda,sda1-5,
sdb, sdb1.
 i tried every possibilty....



Hope i get reply from u,

Thank u,,
Prasad..

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
