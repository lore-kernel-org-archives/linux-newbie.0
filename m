From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: MSI on Intel APIC
Date: Fri, 19 Jun 2009 11:10:30 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com> <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pei Lin <telent997@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, "Nguyen, Tom L" <tom.l.nguyen@intel.com>


Hello Pei / Tom,

Thanks for the response. Actually I understand why the error is coming,
but my question is a little different.

I'm saying that I understand that MSI works like following:

1) The device is given "an address" and a "value" (using MAR & MDR
registers) that it can use later on to generate an interrupt. 
2) The device later on when wants to send an interrupt, simply write
this "value" into that address using a PCI write transaction.
3) This "address" and "value" is decided by the Intel APIC architecture
(described in section 9.12 (MSI) of ""Intel 64 and IA-32 Architectures
Software Developer's Manual"
http://www.intel.com/Assets/PDF/manual/253668.pdf).
4) It is the responsibility of the Intel APIC to generate an interrupt
to the processor when that "value" is written to that "address". 

Now my question is simply this:

Question
========
APIC generates an interrupt when the device writes that "value" into
that "address". But will it also generate an interrupt if a SOFTWARE
writes that same "value" into the same "address"????

Currently, my software tries the same and gets the APIC error interrupt.
Which is partly justified by the section 9.6.3 (Illegal register access)
since the "address" specified by the same specification (sec 9.12.1)
actually falls into the reserved category. But since the device can use
that address, theoritically my SW should also be able to? No?

Thanks & Best Regards,

Rajat Jain

> -----Original Message-----
> From: Pei Lin [mailto:telent997@gmail.com] 
> Sent: Friday, June 19, 2009 8:14 AM
> To: Rajat Jain
> Cc: kernelnewbies@nl.linux.org; linux-newbie@vger.kernel.org
> Subject: Re: MSI on Intel APIC
> 
> look at your local APIC error status register = 0x80,
> reference as "9.6.3 Error Handling",it imply
> "Illegal Reg. Address:
> (Intel Core, Intel Atom, Pentium 4, Intel Xeon, and P6 family
> processors only) Set when the processor is trying to access a register
> in the processor's local APIC register address space that is reserved
> (see Table 9-1). Addresses in one of the 0x10 byte regions marked
> reserved are illegal register addresses.
> The Local APIC Register Map is the address range of the APIC register
> base address (specified in the IA32_APIC_BASE MSR) plus 4 KBytes."
> 
> i guess there are something wrong with your address space
> configuration.Refer to the specification "PCI Local Bus Specification"
> Chapter 6 Configuration Space for a check.
> 
> ps.  i am just a newbie for PCI and APIC,hope this can give u 
> some clues.
> 
> BRs
> lin
> 
> 2009/6/18 Rajat Jain <Rajat.Jain@infogain.com>:
> >
> > Hello list,
> >
> > My query has to do with Intel Hardware and MSI (rather than its
> > implementation in Linux) but trying my luck to see if anyone has any
> > suggestions here. I have an OS independent qury on the MSI using
> > Intel-APIC (945 chipset).
> >
> > I'm trying to make MSI work on a custom OS, and I'm working on the
> > system "bus driver" level rather than at the device driver level. I
> > understand that to generate MSI, the device function will 
> generate PCI
> > write transaction to write the contents of its MDR into address
> > specified in MAR. This is currently not generating the MSI for my
> > device.
> >
> > To blame the device as faulty or to keep Intel processor out of
> > suspicion, I want to prove that writing the contents of MDR into the
> > address specified by MAR ACTUALLY will generate an interrupt to the
> > processor. Is there a way I can prove that by a demonstration in SW?
> >
> > I wrote a small piece of code that does what the device HW 
> is supposed
> > to do. It writes the "a value" into "an address" and 
> expects to generate
> > an interrupt to processor as a result. Please note that 
> this "value" and
> > "address" are calculated in accordance with sec 9.12 (MSI) 
> of ""Intel(r)
> > 64 and IA-32 Architectures Software Developer's Manual"
> > (http://www.intel.com/Assets/PDF/manual/253668.pdf)
> >
> > Also note that this "value" and "address" is really what will be
> > programmed into MDR and MAR respectively on the device. But the end
> > result is that when my demo code does exactly what the PCI device is
> > supposed to do, it gets an APIC error interrupt with local 
> APIC error
> > status register = 0x80, which implies that the processor is 
> trying to
> > access a register in the processor's local APIC register 
> address space
> > that is reserved. Looking into the same above document sec 
> 9.6.3, quite
> > right, because the "address" that is to be programmed in 
> MAR is actually
> > reserved.
> >
> > So does that mean that the PCI device can write to it, but my SW
> > (running on processor) cannot write to it?
> >
> > I'd really appreciate if you could please give me some 
> pointers in this
> > regard.
> >
> > Thanks & best Regards,
> >
> > Rajat Jain
> >
> > --
> > To unsubscribe from this list: send an email with
> > "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> > Please read the FAQ at http://kernelnewbies.org/FAQ
> >
> >
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
