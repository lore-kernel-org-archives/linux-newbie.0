From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: accessing USB memory stick
Date: Wed, 4 Feb 2004 14:46:38 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0402041422210.17345-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

How do I mount a usb memory stick? I do see something connected to usb on
the output mount (I am running Redhat 9):
$ mount | grep usb
usbdevfs on /proc/bus/usb type usbdevfs (rw)

On plugging the device into the machine and looking at dmesg, shows me 
stuff (which I think is connected to plugging in the usb stick):

hub.c: new USB device 00:1d.7-6, assigned address 3
WARNING: USB Mass Storage data integrity not assured
USB Mass Storage device found at 3

Is the device being recognized? How can I access it? 

Thanks,

-K

---------------------
Genius may have its limitations, but stupidity is not thus handicapped.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
