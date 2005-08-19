From: "Mukund JB`." <mukundjb@esntechnologies.co.in>
Subject: RE: How do i detect a USB device from the Linux Box
Date: Fri, 19 Aug 2005 16:40:44 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B3912@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: osk <linuxkarthi@gmail.com>
Cc: linux-newbie@vger.kernel.org


I understood it. Thanks

However I have doubt regarding how Linux can work with any USB device
attached to it.
How does a device run without a device driver specific to the controller
on the attached USB?

Is it like it has all driver included for each & every device?
That cannot be possible. That will result in so BIG nasty kernel.

Thanks & regards,
Mukund Jampala


>-----Original Message-----
>From: osk [mailto:linuxkarthi@gmail.com]
>Sent: Friday, August 19, 2005 4:37 PM
>To: Mukund JB`.
>Cc: linux-newbie@vger.kernel.org
>Subject: Re: How do i detect a USB device from the Linux Box
>
>no need ... that's server identification number
>
>regards
>osk
>
>On 8/19/05, Mukund JB`. <mukundjb@esntechnologies.co.in> wrote:
>>
>>
>> Dear all,
>>
>> I have a USB device connected to Linux BOX running 2.6.10 kernel
(F3).
>>
>> I am able to mount read/write to the device with NO problem.
>>
>>
>>
>> I find the following messages at attach time:-
>>
>>
>>
>> usb 1-3: new high speed device using ehci_hcd and address 5
>>
>> scsi4: SCSI emulation for USB Mass storage devices
>>
>> usb-storage: device fount at 5
>>
>>
>>
>> This are the messages are generated when I have plugged in my USB to
the
>> system.
>>
>> The address value & the device found value keeps on increasing for
every
>> plug-in.
>>
>>
>>
>> I find the following messages at detach time:-
>>
>>
>>
>> usb 1-3: USB disconnected, address 5
>>
>>
>>
>> The address value & the device found value keeps on increasing for
every
>> plugin
>>
>>
>>
>> What is it doing?
>>
>> Do I need to run something like " detach the device safely" before
>> detaching the USB-device?
>>
>>
>>
>> Thanks & Regards,
>>
>> Mukund Jampala
>>
>>
>> -
>> To unsubscribe from this list: send the line "unsubscribe
linux-newbie"
>in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
>
>
>--
>winners don't do different things
>they do things differently
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
