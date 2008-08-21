From: Om <om.turyx@gmail.com>
Subject: Re: PCI interrupt queries
Date: Thu, 21 Aug 2008 10:14:41 -0700
Message-ID: <48ADA281.2020804@gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
 <48AB2E3C.2070600@keyaccess.nl>
 <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
 <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: 
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Welch, Martyn (GE EntSol, Intelligent Platforms) wrote:
> Rajat Jain wrote:
>> Hello Rene,
>>
>> Thanks for the reply.
>>
>>> On 19-08-08 07:11, Rajat Jain wrote:
>>>
>>>> 1) My first question is WHO writes that IRQ value in the device
>>>> configuration space? Is it hardwired on the card? Is it written by
>>>> the PCI controller driver or some other kernel component? Or some
>>>> other piece of software takes care of it?
>>> The thing hardwired on the card is the interrupt PIN(s) it
>>> uses; A, B, C and/or D (one pin per device and thus per
>>> config space). The thing that writes the LINE value into the
>>> register is generally the BIOS; being motherboard specific it
>>> knows which IRQ line it is that pin X (A, B, C or D) from
>>> slot N is routed to and it writes those values back into the device.
>>>
>> OK. But who does it in an embedded environment (PPC for eg) where
>> there 
>> is no POST software. The first piece of code that gets executed is
>> U-boot and then the kernel. So who writes the LINE value into the
>> config 
>> space?
>>
> 
> U-boot does. There is a fairly standardised way to connect PCI interrupt
> lines, especially for PCI slots where various cards can be plugged in:
> 
> A rotation on 1 is applied to the wiring of the interrupt lines between
> each device/slot, order is dependant on the wiring of the device select
> lines, I think chapter 6 of TLK[1] has some of the basics. These
> rotations also need to be carried across PCI-to-PCI bridges. Hence the
> third device on bus 0 should have: A->INT3; B->INT4; C->INT1; d->INT2.
> INT[1-4] then map into a set of interrupt numbers, which are also highly
> dependant on the hardware.
I think this rotation is required by PCI bridge spec, and it was 
included primarily to reduce loading of any one line alone.

Thanks,
Om.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
