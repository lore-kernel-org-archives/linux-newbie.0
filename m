From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: MSI on Intel APIC
Date: Mon, 22 Jun 2009 10:16:31 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0BDE4F00@GDCMX01.igglobal.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com> <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com> <804dabb00906210456q671caa59y95bccd597bffa85e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <804dabb00906210456q671caa59y95bccd597bffa85e@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: Pei Lin <telent997@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, "Nguyen, Tom L" <tom.l.nguyen@intel.com>


Hello Peter,

Yes, I'm using a virtual address to write to that physical address (I'm
building page tables myself, something like what ioremap() does) 

:-(

Rajat 

> -----Original Message-----
> From: Peter Teoh [mailto:htmldeveloper@gmail.com] 
> Sent: Sunday, June 21, 2009 5:26 PM
> To: Rajat Jain
> Cc: Pei Lin; kernelnewbies@nl.linux.org; 
> linux-newbie@vger.kernel.org; Nguyen, Tom L
> Subject: Re: MSI on Intel APIC
> 
> On Fri, Jun 19, 2009 at 1:40 PM, Rajat 
> Jain<Rajat.Jain@infogain.com> wrote:
> >
> > Hello Pei / Tom,
> >
> > Thanks for the response. Actually I understand why the 
> error is coming,
> > but my question is a little different.
> >
> > I'm saying that I understand that MSI works like following:
> >
> > 1) The device is given "an address" and a "value" (using MAR & MDR
> > registers) that it can use later on to generate an interrupt.
> > 2) The device later on when wants to send an interrupt, simply write
> > this "value" into that address using a PCI write transaction.
> > 3) This "address" and "value" is decided by the Intel APIC 
> architecture
> > (described in section 9.12 (MSI) of ""Intel 64 and IA-32 
> Architectures
> > Software Developer's Manual"
> > http://www.intel.com/Assets/PDF/manual/253668.pdf).
> > 4) It is the responsibility of the Intel APIC to generate 
> an interrupt
> > to the processor when that "value" is written to that "address".
> >
> > Now my question is simply this:
> >
> > Question
> > ========
> > APIC generates an interrupt when the device writes that "value" into
> > that "address". But will it also generate an interrupt if a SOFTWARE
> 
> normally, when a device write to an address, it is a physical address
> from the device's perspective.
> 
> > writes that same "value" into the same "address"????
> 
> but when a CPU write to an address, due to MMU/pagetable in operation,
> it is always a virtual address, that have yet to be translated to a
> physical address.   the API ioremap() and friends are used for getting
> virtual address that will map to the physical address of the hardware
> device.
> 
> >
> > Currently, my software tries the same and gets the APIC 
> error interrupt.
> > Which is partly justified by the section 9.6.3 (Illegal 
> register access)
> > since the "address" specified by the same specification (sec 9.12.1)
> > actually falls into the reserved category. But since the 
> device can use
> > that address, theoritically my SW should also be able to? No?
> 
> whether it is the hardware device accessing the DMA memory or software
> accessing the DMA memory, is the same.   yes, should be able to.   but
> u have to make sure that they are touching the same physical address.
>  not sure if ioremap() have been used?
> 
> sorry if my answer is incorrect......just trying my luck...:-).
> 
> >
> > Thanks & Best Regards,
> >
> 
> 
> 
> 
> 
> -- 
> Regards,
> Peter Teoh
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
