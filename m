From: osk <linuxkarthi@gmail.com>
Subject: Re: How do i detect a USB device from the Linux Box
Date: Fri, 19 Aug 2005 16:36:54 +0530
Message-ID: <3ed7d0be0508190406741752a7@mail.gmail.com>
References: <3AEC1E10243A314391FE9C01CD65429B38C4@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3AEC1E10243A314391FE9C01CD65429B38C4@mail.esn.co.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB`." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

no need ... that's server identification number

regards
osk

On 8/19/05, Mukund JB`. <mukundjb@esntechnologies.co.in> wrote:
> 
> 
> Dear all,
> 
> I have a USB device connected to Linux BOX running 2.6.10 kernel (F3).
> 
> I am able to mount read/write to the device with NO problem.
> 
> 
> 
> I find the following messages at attach time:-
> 
> 
> 
> usb 1-3: new high speed device using ehci_hcd and address 5
> 
> scsi4: SCSI emulation for USB Mass storage devices
> 
> usb-storage: device fount at 5
> 
> 
> 
> This are the messages are generated when I have plugged in my USB to the
> system.
> 
> The address value & the device found value keeps on increasing for every
> plug-in.
> 
> 
> 
> I find the following messages at detach time:-
> 
> 
> 
> usb 1-3: USB disconnected, address 5
> 
> 
> 
> The address value & the device found value keeps on increasing for every
> plugin
> 
> 
> 
> What is it doing?
> 
> Do I need to run something like " detach the device safely" before
> detaching the USB-device?
> 
> 
> 
> Thanks & Regards,
> 
> Mukund Jampala
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
winners don't do different things
they do things differently
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
