From: Jacob Langley <j_langley@sbcglobal.net>
Subject: Re: accessing USB memory stick
Date: Wed, 04 Feb 2004 17:48:06 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1075934765.3589.22.camel@localhost>
References: <Pine.LNX.4.44.0402041422210.17345-100000@legolas.personal.engin.umich.edu>
Reply-To: j_langley@sbcglobal.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0402041422210.17345-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I know that when I got my 2 flash memory devices, I had to recompile me
kernel with scsi support to be able to access them and then I could do a

$ mount -t vfat /dev/sda1 /mnt/usbhd

I added it to my fstab to make life easier.  

When I plug my stick in I see this from my dmesg:

Feb  4 17:42:20 [kernel] sda: assuming Write Enabled
Feb  4 17:42:20 [kernel] sda: assuming drive cache: write through
Feb  4 17:42:20 [kernel] WARNING: USB Mass Storage data integrity not
assured
Feb  4 17:42:45 [kernel] usb 2-1: USB disconnect, address 3
Feb  4 17:42:48 [kernel] hub 2-0:1.0: new USB device on port 1, assigned
address 4
Feb  4 17:42:48 [kernel] scsi2 : SCSI emulation for USB Mass Storage
devices
Feb  4 17:42:49 [kernel]   Vendor: LEXAR     Model: JUMPDRIVE        
Rev: 1.20
Feb  4 17:42:49 [kernel] SCSI device sda: 251904 512-byte hdwr sectors
(129 MB)
Feb  4 17:42:49 [kernel] WARNING: USB Mass Storage data integrity not
assured
Feb  4 17:42:49 [kernel] USB Mass Storage device found at 4

Hope that helps a little.
-j
On Wed, 2004-02-04 at 14:46, Karthik Vishwanath wrote:
> Hello,
> 
> How do I mount a usb memory stick? I do see something connected to usb on
> the output mount (I am running Redhat 9):
> $ mount | grep usb
> usbdevfs on /proc/bus/usb type usbdevfs (rw)
> 
> On plugging the device into the machine and looking at dmesg, shows me 
> stuff (which I think is connected to plugging in the usb stick):
> 
> hub.c: new USB device 00:1d.7-6, assigned address 3
> WARNING: USB Mass Storage data integrity not assured
> USB Mass Storage device found at 3
> 
> Is the device being recognized? How can I access it? 
> 
> Thanks,
> 
> -K
> 
> ---------------------
> Genius may have its limitations, but stupidity is not thus handicapped.
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Jacob Langley <j_langley@sbcglobal.net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
