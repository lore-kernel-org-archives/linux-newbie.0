From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: PCI interrupt queries
Date: Wed, 20 Aug 2008 10:20:19 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com> <48AB2E3C.2070600@keyaccess.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <48AB2E3C.2070600@keyaccess.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rene Herman <rene.herman@keyaccess.nl>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hello Rene,

Thanks for the reply.

> On 19-08-08 07:11, Rajat Jain wrote:
> 
>> I want to understand who decides the IRQ number that a agiven PCI
>> card will use. I understand that from a PCI device drivers point of
>> view, it'll find the IRQ vector that it needs to attach by reading
>> it from the configuration space of the device.
> 
> Actually, a quick look at struct pci_dev suggests you should
> be using pci_dev->irq. Note sure why that is; maybe odd
> bridged setups.
> 

Where in source code is pci_dev->irq getting populated? I tried but
could not exactly locate it...

> 
>> 1) My first question is WHO writes that IRQ value in the device
>> configuration space? Is it hardwired on the card? Is it written by
>> the PCI controller driver or some other kernel component? Or some
>> other piece of software takes care of it?
> 
> The thing hardwired on the card is the interrupt PIN(s) it
> uses; A, B, C and/or D (one pin per device and thus per
> config space). The thing that writes the LINE value into the
> register is generally the BIOS; being motherboard specific it
> knows which IRQ line it is that pin X (A, B, C or D) from
> slot N is routed to and it writes those values back into the device.
> 

OK. But who does it in an embedded environment (PPC for eg) where there
is no POST software. The first piece of code that gets executed is
U-boot and then the kernel. So who writes the LINE value into the config
space?

> 
>> 2) Secondly, irrespective of whoever writes it, what determines the
>> irq vector VALUE that will be written? So given that a PCI card uses
>> PCI INTA, what determines the IRQ vector associated with it? My
>> understanding is that the board specifications say something like
>> "The INTA from this PCI slot goes to IRQx input of interrupt
>> controller". And then from interrupt controller dosument we can find
>> out which IRQ vector is associated with input IRQx. Is this right?
> 
> That's the basic form but in reality things are not hardwired
> on the motherboard either; there's a programmable interrupt
> router (part of the PCI chipset) between the lines coming
> from the bus and the lines going into the interrupt
> controller that enables software control of the routing.
> 

Thanks, I got it.

> 
>> 3) Lastly, if we boot linux and a different OS, on the same board
>> with the same PCI card plugged in, are they bound to use the same
>> IRQ number? Why or why not?
> 
> Not bound then. The programmable interrupt router could be
> set up differently.

Ok. Thanks.

Thank you very much for the informative reply,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
