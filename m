From: chuck gelm <chuck@gelm.net>
Subject: Re: usb  sd cardreader
Date: Wed, 28 Dec 2005 08:07:20 -0500
Message-ID: <43B28E08.2070204@gelm.net>
References: <43ADB929.7010206@nycap.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43ADB929.7010206@nycap.rr.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: bob krasko <rkrasko1@nycap.rr.com>
Cc: linux-newbie@vger.kernel.org

bob krasko wrote:

>
> i am setting up debian sarge with the 2.4 kernel.
>
> my computer has a dvd burner(dev/cdrom, ls-120 drive (dev/sda), and a 
> floppy. all of which i finally set up.
>
> the usb reader i want to use is a lexar jumpdrive trio, (the sandisk 
> readers are next)
>
> i have tried many things and have followed the flash memory how to in 
> detail.(as well as many hours of other things from google)
>
> when trying to get the usb reader to set up, i added the following to 
> fstab:
> next line under proc:
> none    /proc/bus/usb    usbdevfs    defaults    0    0
>
> and the last line added under my ls 120 drive (dev/sda) is
>
> /dev/sdb    /media/lexar    usbdevfs    rw,user,noauto,    0    0
>
>     
> the command mount -t usbfs /dev/sdb /media/lexar mounts the device to 
> the media directory in lexar.
>
> when i go into /media/lexar and do a ls command i get:
> 001 002 003 devices drivers
>
> instead of reading the files that i put on the sd card and carried 
> over from my win 2000 machine. (i put a wav file, an mp3, txt, etc 
> just to see how linux would read the various files.
>
> it appears that i have come to the end of my wire and really would 
> appreciate some help.
>
> the how to indicates that my device is a scsi, and my ls 120 shows up 
> as the first scsi device, making the next device sdb, right ???
>
> tia
>
Dear Bob:

 All my USB memory devices (thumbdrives, readers) respond similarily on my
Slackware systems.  I think that 'hotplug' detects them and automatically
installs module 'usb-storage'.  The first USB device that I insert seems 
to get
the first SCSI device name; /dev/sda1.  Whereas your ls-120 drive is 
/dev/sda#,
you may need to replace 'sda1' with 'sdb1'.  I mount it thus:

mount -t vfat /dev/sda1 /mnt/hd (/mnt/hd is a default spare mount point 
in Slackware)

 I think that if you do not specify type 'vfat', it will be mounted as 
type 'msdos'.

You did not show your 'mount' command.

I follow this sequence:

 install memory media into USB reader
 install USB reader into USB port
 mount -t vfat /dev/sda1 /{mount-point}
 ...
 umount /dev/sda1 {or /{mount-point}
 remove reader
 remove memory card

When I insert my thumbdrive or reader (with card already inserted),
tail /var/log/messages returns:

Dec 28 07:39:00 g2000 kernel: hub.c: new USB device 00:10.3-1, assigned 
address 2
Dec 28 07:39:00 g2000 kernel: hub.c: USB hub found
Dec 28 07:39:00 g2000 kernel: hub.c: 1 port detected
Dec 28 07:39:00 g2000 kernel: hub.c: new USB device 00:10.3-1.1, 
assigned address 3
Dec 28 07:39:04 g2000 kernel: Initializing USB Mass Storage driver...
Dec 28 07:39:04 g2000 kernel: usb.c: registered new driver usb-storage
Dec 28 07:39:04 g2000 kernel: scsi1 : SCSI emulation for USB Mass 
Storage devices
Dec 28 07:39:04 g2000 kernel:  sda: sda1
Dec 28 07:39:04 g2000 kernel: USB Mass Storage support registered.

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
