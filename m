From: Hal <haltec@kvinet.com>
Subject: Re: USB Help Needed
Date: Thu, 11 Jan 2007 15:14:08 -0500
Message-ID: <20070111201408.GA2509@lnx2>
References: <200701110442.l0B4g9g8004554@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200701110442.l0B4g9g8004554@skyinet.net>
Content-disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 01-11, Peter wrote:
> Hi,
> 
> slackware 11, kernel 2.6.18.5
> 
> On my motherboard the parallel printer port apparently went bust and as a 
> remedy I got a parallel-USB-printer-adopter-cable.
> 
> This is the first time I am using a USB port connection.
> 
> rc.udev is set to executable. Now after booting I can only print when I run 
> "rc.hotplug start" first.
> 
> If I read correctly, is that with these new kernels rc.hotplug is not needed 
> any longer since rc.udev takes care of whatever is supposed to do.
> 
> Here is some output from dmesg:
> 
> usb usb1: configuration #1 chosen from 1 choice
> hub 1-0:1.0: USB hub found
> hub 1-0:1.0: 6 ports detected
> ohci_hcd: 2005 April 22 USB 1.1 'Open' Host Controller (OHCI) Driver (PCI)
> USB Universal Host Controller Interface driver v3.0
> ....
> drivers/usb/class/usblp.c: usblp0: USB Bidirectional printer dev 2 if 0 alt 1 
> pr
> oto 2 vid 0x067B pid 0x2305
> usbcore: registered new driver usblp
> drivers/usb/class/usblp.c: v0.13: USB Printer Device Class driver
> 
> What would I have to do that the printer is working w/o running hotplug first?
> I know that I could put the hotplug start command into rc.local, but that does 
> not seem to be the right solution.
> 

	Greetings Peter; I run the last three versions of Slackware
including 11.0 but all kernel 2.4.X so can't directly comment..

	However, I have noticed one thing with one of the boxes in that I
have to boot with the USB device connected or else the kernel can't find
it.. I, also, note that some BIOS's handle USB support different than
others..  Another enigma is the fact that some USB extension cords work or
don't work depending on how they feel.. All check out continuity of course..
Computers are a lot different than they were many moons ago.. One machine
cant find the USB flash drive if a mouse is plugged into another USB port..
Other machines; that's not a problem..

	I think USB support still has growing pains even with one of it's
designers; M$, so some flailing around may be necessary depending on
individual lashups.. Maybe it's the old adage; try, try, try, eh?  And; all
of my Slackware installs rc.hotplug is default. 

	Best..

-- 

                 Hal        GNU/Linux - Slackware 10.2, 2.4.31
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
