From: Hal MacArgle <haltec@kvinet.com>
Subject: USB and GPM??
Date: Sat, 18 Dec 2004 13:46:58 -0500
Message-ID: <20041218184658.GA611@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Been using Logitech Optical Mice on two machines for some
time with excellent results using the supplied adapter from it's USB
socket to PS/2 plug. Gpm no problem invoking gpm -tps2 of course..

Needed another mouse with an identical one not available, but a
Logitech Model M/N UV56A, with a USB plug but no PS/2 adapter..
Plugged into the USB supported machine running Slack9.0, 2.4.20
kernel, bare.i - the kernel saw the device and automatically
installed all the modules needed according to all the docos I fetched
from linux-usb.org... Invoking gpm -tps2 is accepted assigning a pid
but no normal block pointer appears on the screen.. Invoking
_anything_ except -tps2 completely locks the KB big time.. gpm config
- anything tried produces a complete lock up needing a hard reset and
the usual files system repairs.. The BIOS set to USBKeyboard disable
or enable, no change.. I've listed an edited copy of dmesg which
looks OK to _me_, but, obviously isn't... :^)..

All the /dev/ listings are the same as the docos: I'm stuck.. Could
it be that Logitech has made a "WinMouse?" This particular model with
the aforementioned USB to PS/2 adapter doesn't work either, so the
subject mouse is definately "different." I wonder if anyone has had a
similar fate?? Appreciate and TIA.. (I have not tried the mouse with
anything except gpm because that's the only reason for the mouse on
that particular machine.)

dmesg, edited, follows:
------------------------------------------------------------------------------
Linux version 2.4.20 (root@midas) (gcc version 3.2.2) #2 Mon Mar 17 22:02:15 PST 2003
<snipped>
usb.c: registered new driver usbdevfs
usb.c: registered new driver hub
uhci.c: USB Universal Host Controller Interface driver v1.1
PCI: Found IRQ 12 for device 00:07.2
PCI: Sharing IRQ 12 with 00:07.3
uhci.c: USB UHCI at I/O 0xd400, IRQ 12
usb.c: new USB bus registered, assigned bus number 1
hub.c: USB hub found
hub.c: 2 ports detected
PCI: Found IRQ 12 for device 00:07.3
PCI: Sharing IRQ 12 with 00:07.2
uhci.c: USB UHCI at I/O 0xd800, IRQ 12
usb.c: new USB bus registered, assigned bus number 2
hub.c: USB hub found
hub.c: 2 ports detected
parport0: PC-style at 0x378 [PCSPP,EPP]
parport_pc: Via 686A parallel port: io=0x378
hub.c: new USB device 00:07.2-1, assigned address 2
usb.c: USB device 2 (vend/prod 0x46d/0xc016) is not claimed by any active driver.
usb-uhci.c: $Revision: 1.275 $ time 15:38:38 Mar 11 2003
usb-uhci.c: High bandwidth mode enabled
usb-uhci.c: v1.275:USB Universal Host Controller Interface driver
usb.c: registered new driver usb_mouse
input0: Logitech Optical USB Mouse on usb1:2.0
usbmouse.c: v1.6:USB HID Boot Protocol mouse driver
usb.c: registered new driver hiddev
usb.c: registered new driver hid
hid-core.c: v1.8.1 Andreas Gal, Vojtech Pavlik <vojtech@suse.cz>
hid-core.c: USB HID support drivers
mice: PS/2 mouse device common for all mice
------------------------------------------------------------------------------
-- 

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
