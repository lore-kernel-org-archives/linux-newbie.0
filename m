From: Ray Olszewski <ray@comarre.com>
Subject: Re: still bugging me...pblm on->how to get mass storage
  devices (memory card readers) to work
Date: Wed, 06 Apr 2005 08:30:53 -0700
Message-ID: <5.1.0.14.1.20050406074046.02006dc8@celine>
References: <1112784755.3598.31.camel@prasad.isilica.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1112784755.3598.31.camel@prasad.isilica.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Preliminary comment: This message is very hard to read. Should you post a 
followup, please try to use standard English spelling and grammar. For the 
moment, I'll do my best to reply, but I may be misunderstanding some of 
what you say ... this *really* is hard for me to read.

At 04:22 PM 4/6/2005 +0530, prasad wrote:
>Problem:-I hav external usb harddrive,how can i make it detect from
>         fedora core linux...( itried every thing wht u published...in ur
>         message)

Are we discussing an actual USB hard drive, as this says, or a memory card 
reader acting like a hard drive, as the subject line says? If a hard drive, 
what does its partition table look like? In particular, is its sd*1 
partition a valid filesystem type? If so, what is it (usbdevfs? unlikely 
vfat? more likely)?

Please be as specific as you can about the hardware involved.

>Even i followed dha steps dat u replied for message(94020),i still cant
>able to detect my External USB hardrrive..frum Fedora core linux.
>
>i did all trials,
>what i did iz:
># /sbin/modprobe sg
>#/sbin/modprobe usb_storage
>
>lsmod giving me da exact thing,as below:
>#  /sbin/lsmod | grep sg
>    sg  28513  0
>    scsi_mod 105360  4 usb_storage,sg,libata,sd_mod

Could we see this lsmod output unedited? (Without the pipe to grep, I mean.)

Also, in your logs, are you seeing a message something like this one:

         kernel: Attached scsi disk sda at scsi1, channel 0, id 0, lun 0

Or, what does "more /proc/scsi/scsi" report as present?

If a drive is present at /dev/sda (or any sd*), what does fdisk report 
about its partition table?

>pblm cums wher , it was showing like as below:
># mount -t usbdevfs 0 /proc/bus/usb
>   mount: 0 already mounted or /proc/bus/usb busy
>   mount: according to mtab, usbdevfs is already mounted on /proc/bus/usb

If it is already mounted (as the last line says), then this is not a 
problem. You might tell us what /proc/bus/usb reports about the status of 
the USB bus.

># mount -t vfat /dev/sda1 /mnt/HD12
>   mount: /dev/sda1 is not a valid block device

I would expect this command to work (assuming a vfat filesystem is present 
at sda1). This response does usually mean that the device entry does not 
have a physical partition associated with it.

>As u said, i tried with other scsi devices for mounting,,,
>but not worked out,,
>Wht i tried iz:
>sda,sda1-5,
>sdb, sdb1.
>  i tried every possibilty....

Am I correct in inferring that you always got the same response ("is not a 
valid block device")? Or did something different happen in any of these 
attempts?

At this point, based on your report, it is hard to pin down where in the 
process of attaching this device your efforts have failed. If you respond 
with a more systematic report, I (or someone else here) may be able to 
offer a helpful suggestion. In addition to the specifics I've asked above, 
please mention or quote, as appropriate:

         the output of "uname -a" (If you are using a kernel you compiled 
yourself, and not the stock Fedora version of that kernel, you need to 
mention that too.)
         whether you have *any* other USB devices on this system (e.g., a 
keyboard or a mouse).
         the specifics of the drive itself (make and model, and whether you 
have had it working in other contexts)
         the output of "lspci -vv" that relates to the USB interface

Based on my own experience ... with USB flash drives, not hard drives ... 
the general approach you are taking is correct, at least as far as you have 
described it. So the problem is probably in some "unimportant" detail 
you've omitted.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
