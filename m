From: "Mukund JB`." <mukundjb@esntechnologies.co.in>
Subject: RE: How do i detect a USB device from the Linux Box
Date: Fri, 19 Aug 2005 17:18:14 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B3921@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arturas Moskvinas <arturas.moskvinas@gmail.com>, osk <linuxkarthi@gmail.com>
Cc: linux-newbie@vger.kernel.org

Hi Arthurus,

>I also think that lot's of device are very generic, I mean there is
>tons of USB flash drives, and for most of them there is one driver
>that "emulates" scsi interface (i think i'm wrong by saying
>emulating...). The same goes to most of printers and so on, of course
>there are specific drivers, but not much... Look in linux sources,
>directory "/drivers/usb/" and you'll see that it is not that big...

What u r saying looks absolutely correct?
I get some messages when ever I plug-in a USB device saying 
SCSIxx: SCSI emulation for USB Mass Storage device.

Where can see this code that integrates any USB device with the SCSI
Emulation?
I am just exited to know how it works.

Regards,
Mukund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
