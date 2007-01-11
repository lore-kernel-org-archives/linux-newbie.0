From: Peter <heisspf@skyinet.net>
Subject: USB Help Needed
Date: Thu, 11 Jan 2007 12:42:09 +0800
Message-ID: <200701110442.l0B4g9g8004554@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

slackware 11, kernel 2.6.18.5

On my motherboard the parallel printer port apparently went bust and as a 
remedy I got a parallel-USB-printer-adopter-cable.

This is the first time I am using a USB port connection.

rc.udev is set to executable. Now after booting I can only print when I run 
"rc.hotplug start" first.

If I read correctly, is that with these new kernels rc.hotplug is not needed 
any longer since rc.udev takes care of whatever is supposed to do.

Here is some output from dmesg:

usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 6 ports detected
ohci_hcd: 2005 April 22 USB 1.1 'Open' Host Controller (OHCI) Driver (PCI)
USB Universal Host Controller Interface driver v3.0
.....
drivers/usb/class/usblp.c: usblp0: USB Bidirectional printer dev 2 if 0 alt 1 
pr
oto 2 vid 0x067B pid 0x2305
usbcore: registered new driver usblp
drivers/usb/class/usblp.c: v0.13: USB Printer Device Class driver

What would I have to do that the printer is working w/o running hotplug first?
I know that I could put the hotplug start command into rc.local, but that does 
not seem to be the right solution.

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
