From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mustek 1200 UB scanner
Date: Fri, 10 May 2002 10:51:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020510175126.00e027f8@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:12 PM 5/9/02 +0530, G Anna wrote:
>Dear All,
>
>Today I downloaded the linux driver for Mustek 1200 UB scanner (This
>is a USB scanner) from
>
>ftp://ftp.mustek.com.tw/pub/driver/1200UB/Linux/V1.0.3/1200ub.tar.gz 
>
>This package has a readme file (readme_English.txt).. In this file
>they have mentioned that
>
>(begin-quote)
>
>2. After the kernel upgrade, please mount the USB file system. You can
>login root, and type "mount -t usbdevfs none /proc/bus/usb/." If you
>would like to mount the file system automatically, add "action
>"Mounting USB File System" mount -t usbdevfs none /proc/bus/usb" to
>your etc/rc.d/rc.sysinit.
>
>(end-quote)
>
>When I tried to do the mount manually, I got the following error.
>
># mount -t usbdevfs none /proc/bus/usb/
>mount: mount point /proc/bus/usb/ does not exist
>
>And, sure enough, I didn't have the usb directory under /proc/bus/.  I
>tried to do
>
># pwd
>/proc/bus
># mkdir usb
>mkdir: cannot create directory `usb': No such file or directory
>
>What am I supposed to do now?  Does anyone have experience in making
>the Mustek 1200 UB scanner work under linux?
>
>BTW, I am using RH 7.1 and 
>
>$ uname -a
>Linux wobble 2.4.16 #4 Thu May 9 11:19:49 IST 2002 i686 unknown

Well ... I don't know if you've compiled your own kernel or not. If not, I
don't know what components the stock RH 2.4.16 kernel has included. But I'd
*guess* that your kernel does not include USB filesystem support.

If you're compiling your own kernel, the bits you need are (if you use "make
menuconfig") all under the "USB support" choice, including "Preliminary USB
device filesystem". (I'm basing this on my 2.4.17 source tree, but I doubt
2.4.16 is different in relevant ways.)

Afraid I can't help specifically with the scanner, as I've not tried to hook
up a USB scanner to Linux.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
