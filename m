From: John Kelly <bilbo@waitrose.com>
Subject: Re: fedora and how to get mass storage devices (memory card readers) to work
Date: Wed, 14 Apr 2004 18:16:41 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040414181641.137a5e65.bilbo@waitrose.com>
References: <20040413025903.GD3579@panix.com>
	<20040413171659.03c65dda.bilbo@waitrose.com>
	<20040414023454.GA10063@panix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040414023454.GA10063@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

On Tue, 13 Apr 2004 22:34:55 -0400
Rei Shinozuka <shino@panix.com> wrote:

> well, lsmod did show:
> 
> 
> Module                  Size  Used by    Tainted: P  
> usb-storage            75136   0 
> ....
> 
> and interestingly, usbview
> showed the the card reader is recognized:
> 
> http://www.shinozuka-family.com/USBViewer.jpg
> 
> but the last 2 commands return errors:
> 
> [root@tuxedo root]# mount -t usbdevfs 0  /proc/bus/usb
> mount: 0 already mounted or /proc/bus/usb busy
> mount: according to mtab, usbdevfs is already mounted on
> /proc/bus/usb[root@tuxedo root]# mount -t vfat /dev/sda1 /mnt/usb/
> mount: /dev/sda1 is not a valid block device
> [root@tuxedo root]# 
> 
> i feel we are getting closer!!
> 
> thanks,
> 
The error you get while trying to mount usbdevfs is a good thing - it
shows ussbdevfs is already mounted. Well there is one other thing, is
generic SCCI support enabled? This can be compiled into the kernel or
loaded as a module. lsmod should show the generic SCCI module as sg.
For example on my system, I get:

jpk@debian:~$ /sbin/lsmod | grep sg
sg                     24420   0 (unused)

And if SCCI support is in the kernel (either as a module or compiled
in) and you still get an error trying to mount /dev/sda1, then I would
suggest trying to mount another SCCI drive. ie. Try
mount -t vfat /dev/sda2 /mnt/usb/
or 
mount -t vfat /dev/sdb1 /mnt/usb/

I am not sure but I seem to recall that with generic scci, the first
'thingy' to use it gets the first scci device ie /dev/sda and the next
'thingy' gets the next scci device. So if something is using /dev/sda1
- for example a cd writer - then the usb device will be the next
available scci device. 

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
