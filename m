From: Rene Herman <rene.herman@keyaccess.nl>
Subject: Re: PCI interrupt queries
Date: Tue, 19 Aug 2008 22:34:04 +0200
Message-ID: <48AB2E3C.2070600@keyaccess.nl>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 19-08-08 07:11, Rajat Jain wrote:

> I want to understand who decides the IRQ number that a agiven PCI
> card will use. I understand that from a PCI device drivers point of
> view, it'll find the IRQ vector that it needs to attach by reading it
> from the configuration space of the device.

Actually, a quick look at struct pci_dev suggests you should be using 
pci_dev->irq. Note sure why that is; maybe odd bridged setups.

Greg might know if he's reading this :-)

> 1) My first question is WHO writes that IRQ value in the device 
> configuration space? Is it hardwired on the card? Is it written by
> the PCI controller driver or some other kernel component? Or some
> other piece of software takes care of it?

The thing hardwired on the card is the interrupt PIN(s) it uses; A, B, C 
and/or D (one pin per device and thus per config space). The thing that 
writes the LINE value into the register is generally the BIOS; being 
motherboard specific it knows which IRQ line it is that pin X (A, B, C 
or D) from slot N is routed to and it writes those values back into the 
device.

Well, basically at least. It knows as long as it has programmed the 
interrupt router itself as well:

> 2) Secondly, irrespective of whoever writes it, what determines the irq
> vector VALUE that will be written? So given that a PCI card uses PCI
> INTA, what determines the IRQ vector associated with it? My
> understanding is that the board specifications say something like "The
> INTA from this PCI slot goes to IRQx input of interrupt controller". And
> then from interrupt controller dosument we can find out which IRQ vector
> is associated with input IRQx. Is this right?

That's the basic form but in reality things are not hardwired on the 
motherboard either; there's a programmable interrupt router (part of the 
PCI chipset) between the lines coming from the bus and the lines going 
into the interrupt controller that enables software control of the routing.

So the answer is -- whoever sets up the interrupt routing. In your dmesg 
you will see things like:

ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 7 *9 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 7 9 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 6 7 9 *10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 7 9 10 11 *12 14 15)

which lists the routing as setup by the BIOS. Linux _could_ change the 
routing although I'm not sure if it ever does. What it certainly can do 
is enable devices that the BIOS left disabled (wish it couldn't so it 
would butt out already!) and then it is running the show.

> 3) Lastly, if we boot linux and a different OS, on the same board with
> the same PCI card plugged in, are they bound to use the same IRQ number?
> Why or why not?

Not bound then. The programmable interrupt router could be set up 
differently.

Also see the nice daisy-chaining diagram in

	Documentation/x86/i386/IO-APIC.txt

The programmable interrupt router is to the left, between the PIRQ lines 
and the IRQ input lines on the PIC.

Rene.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
