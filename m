From: Mark Butsch <mbutsch@syntech-fuelmaster.com>
Subject: How do you keep output from a USB Mag card reader from going to
 STDIN?
Date: Thu, 28 May 2009 14:00:14 -0400
Message-ID: <6C2434209962DC46B88345CA85C334A240CA9707DC@Courier.syntech.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Hello,

I have both a USB keyboard and a USB Mag card reader (works like a USB keyboard) connected to my system.

I would like to make it so the real keyboard is the only device that feeds STDIN and the mag card reader is only readable by reading that device directly.

If I "cat /proc/bus/input/devices" it shows:

I: Bus=0003 Vendor=04da Product=117c Version=0001
N: Name="Panasonic Panasonic USB keyboard compliant Mag-CR"
P: Phys=usb-0000:00:1d.3-1/input0
S: Sysfs=/class/input/input37
H: Handlers=kbd event5
B: EV=120003
B: KEY=10000 7 ff80007a 7ff febeffdf ffefffff ffffffff fffffffe
B: LED=1f

I: Bus=0003 Vendor=413c Product=2105 Version=0352
N: Name="Dell Dell USB Keyboard"
P: Phys=usb-0000:00:1d.0-1/input0
S: Sysfs=/class/input/input38
H: Handlers=kbd event2
B: EV=120003
B: KEY=10000 7 ff87207a c14057ff febeffdf ffefffff ffffffff fffffffe
B: LED=7

How would I disconnect the "kbd" handler from the mag card reader or is that the wrong approach?

Thanks in advance.

Mark Butsch
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
