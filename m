From: Greg KH <greg@kroah.com>
Subject: Re: PCI interrupt queries
Date: Wed, 20 Aug 2008 22:42:49 -0700
Message-ID: <20080821054249.GA3192@kroah.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Tue, Aug 19, 2008 at 10:41:26AM +0530, Rajat Jain wrote:
> 
> Hi,
> 
> I want to understand who decides the IRQ number that a agiven PCI card
> will use. I understand that from a PCI device drivers point of view,
> it'll find the IRQ vector that it needs to attach by reading it from the
> configuration space of the device. 
> 
> 1) My first question is WHO writes that IRQ value in the device
> configuration space? Is it hardwired on the card? Is it written by the
> PCI controller driver or some other kernel component? Or some other
> piece of software takes care of it?

The BIOS/ACPI handles this, the kernel does not assign this directly
(well, kind of indirectly, but it's complex...)

> 2) Secondly, irrespective of whoever writes it, what determines the irq
> vector VALUE that will be written? So given that a PCI card uses PCI
> INTA, what determines the IRQ vector associated with it? My
> understanding is that the board specifications say something like "The
> INTA from this PCI slot goes to IRQx input of interrupt controller". And
> then from interrupt controller dosument we can find out which IRQ vector
> is associated with input IRQx. Is this right?

Kind of, please realize that irq's are getting to be more and more
"fake" with the advent of pci express and MSI.

All of this is handled by ACPI on intel-based processors, if you want to
go read that mess of a spec.

> 3) Lastly, if we boot linux and a different OS, on the same board with
> the same PCI card plugged in, are they bound to use the same IRQ number?
> Why or why not?

They should be, but I have seen plenty of instances where it is not the
same.  This is usually bios bugs.  Older versions of the kernel used to
tell ACPI that the OS was Linux, now we say we are windows so this
shouldn't happen anymore.

Sorry for being vague, but for a driver writer or a user, none of this
matters, as it out of your hands :)

thanks,

greg k-h
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
