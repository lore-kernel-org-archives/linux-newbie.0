From: "Weston M. Price" <weston_p@yahoo.com>
Subject: USB-Wireless Mouse Issues with compiled kernel
Date: Fri, 5 Sep 2003 17:16:26 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309051716.26918.weston_p@yahoo.com>
Reply-To: weston_p@yahoo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,
	Originally I installed Red-Hat 8 with a minimal configuration (basically the 
router option offered by RedHat). From there I download source X, KDE etc and 
install using the normal GNU tools (make, autoconf etc). After awhile I 
updated my version of RedHat to 9.0 and all I did was basically update the 
kernel. After a time, I installed a Logitech USB wirless mouse. The mouse 
receiver plugs into a USB port and works fine under X with the RedHat kernel. 
My system info for this configuration is:

kernel (precompiled) 2.4.20-8
XFree86 4.3.0
KDE 3.1.3
00:1f.2 USB Controller: Intel Corp. 82801BA/BAM USB (Hub #1) (rev 12)

Output from lsusb for the Logitech device
Bus 001 Device 002: ID 046d:c506 Logitech Inc.
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               1.10
  bDeviceClass            0 Interface
  bDeviceSubClass         0
  bDeviceProtocol         0
  bMaxPacketSize0         8
  idVendor           0x046d Logitech Inc.
  idProduct          0xc506
  bcdDevice           16.00
  iManufacturer           1 Logitech
  iProduct                2 USB Receiver
  iSerial                 0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           34
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xa0
      Remote Wakeup
    MaxPower               50mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass         3 Human Interface Devices
      bInterfaceSubClass      1 Boot Interface Subclass
      bInterfaceProtocol      2 Mouse
      iInterface              0
        HID Device Descriptor:
          bLength                 9
          bDescriptorType        33
          bcdHID               1.10
          bCountryCode            0
          bNumDescriptors         1
          bDescriptorType        34 Report
          wDescriptorLength      84
cannot get report descriptor
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               none
        wMaxPacketSize          8
        bInterval              10
  Language IDs: (length=4)
     0409 English(US)

	Now, as stated, the device works fine whenever I use the RedHat kernel. 
However, when I try and compile my own kernel, that's when things do not go 
as planned.
	I have tried 2.4.21 in with two seperate configurations: in the first I make 
some minor modifications to the .config file (correct type of processor, 
memory config), in the second, I merely copy over the .config file from the /
boot directory and compile. In both instances the Logitech receiver does not 
work. 
        The lsusb command recognizes the device just as with the RedHat 
kernel. However, when the system boots while the boot message does indeed say 
that the mouse system console is starting, when the boot completes I cannot 
use the mouse on a tty (which I can on the RedHat kernel) nor can I use the 
mouse in X. 
	I am really stumped on this one to tell the truth. Everything seems to work 
ok being that I am never presented with an outright error message. I have 
tried unplugging the mouse, rebooting and then plugging it back in but to no 
avail. 
	Any help or pointers on this issue would be appreciated. If more information 
is needed please let me know. I didn't want to attach a whole bunch of files 
(kernel configurations, log files etc) and clog the list. 

Regards,

Weston




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
