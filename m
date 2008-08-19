From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: PCI interrupt queries
Date: Tue, 19 Aug 2008 10:41:26 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hi,

I want to understand who decides the IRQ number that a agiven PCI card
will use. I understand that from a PCI device drivers point of view,
it'll find the IRQ vector that it needs to attach by reading it from the
configuration space of the device. 

1) My first question is WHO writes that IRQ value in the device
configuration space? Is it hardwired on the card? Is it written by the
PCI controller driver or some other kernel component? Or some other
piece of software takes care of it?

2) Secondly, irrespective of whoever writes it, what determines the irq
vector VALUE that will be written? So given that a PCI card uses PCI
INTA, what determines the IRQ vector associated with it? My
understanding is that the board specifications say something like "The
INTA from this PCI slot goes to IRQx input of interrupt controller". And
then from interrupt controller dosument we can find out which IRQ vector
is associated with input IRQx. Is this right?

3) Lastly, if we boot linux and a different OS, on the same board with
the same PCI card plugged in, are they bound to use the same IRQ number?
Why or why not?

Thanks,

Rajat

----Original Message----
From: Rene Herman [mailto:rene.herman@keyaccess.nl]
Sent: Wednesday, August 06, 2008 11:19 PM
To: Rajat Jain
Cc: linux-newbie@vger.kernel.org; kernelnewbies@nl.linux.org
Subject: Re: Who decides PCI device number?

> On 06-08-08 07:54, Rajat Jain wrote:
> 
>> In the PCI addess (domain + PCI bus num + PCI Device num + function
>> num) of a PCI device, who decides the PCI device number assigned to
>> a PCI device? 
>> 
>> - Is it hard wired for a particular PCI slot? (So that any PCI card
>> plugged into this slot will always have a particular PCI device
>> number). 
> 
> Yes, for a definition of "hard-wired" which if I'm not
> mistaken (which I might be, but believe I remember reading
> that once) includes the possibility for busses to change
> numbering depending on bridge detection order.
> 
> But yes, the "dd" in the DDDD:bb:dd.f lspci -D output indeed
> signifies the slot, not the card -- exchange two PCI cards in
> your system and see them change numbering around as well.
> 
>> -Or is it hardwired on the PCI card? (So that this card if plugged on
>> any slot in any machine will have the same PCI device number)?
> 
> No.
> 
> Rene.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
