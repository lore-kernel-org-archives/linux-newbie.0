From: Pei Lin <telent997@gmail.com>
Subject: Re: MSI on Intel APIC
Date: Fri, 19 Jun 2009 10:43:36 +0800
Message-ID: <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=o4Ca7eSCLMktSgmpVIuBZN5rRX6tri1z+ikvuta6NhY=;
        b=EGcCtRU2ePp6cj0/w7+TjYwMiFN7VGufz1MP4p5YX4GR3QAkmf48PRZ2GUFaO2EyPo
         4NrVXq+GnmL0oM1QUP1vAbQgUxq+WDG7+D1+QzrHHStQ3GUsxjQqbQSfLjlA9QTtgh/G
         jzkDl+BZoAXwPvNWr1rx6GFSE0LSQxLR/r9h0=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

look at your local APIC error status register = 0x80,
reference as "9.6.3 Error Handling",it imply
"Illegal Reg. Address:
(Intel Core, Intel Atom, Pentium 4, Intel Xeon, and P6 family
processors only) Set when the processor is trying to access a register
in the processor's local APIC register address space that is reserved
(see Table 9-1). Addresses in one of the 0x10 byte regions marked
reserved are illegal register addresses.
The Local APIC Register Map is the address range of the APIC register
base address (specified in the IA32_APIC_BASE MSR) plus 4 KBytes."

i guess there are something wrong with your address space
configuration.Refer to the specification "PCI Local Bus Specification"
Chapter 6 Configuration Space for a check.

ps.  i am just a newbie for PCI and APIC,hope this can give u some clues.

BRs
lin

2009/6/18 Rajat Jain <Rajat.Jain@infogain.com>:
>
> Hello list,
>
> My query has to do with Intel Hardware and MSI (rather than its
> implementation in Linux) but trying my luck to see if anyone has any
> suggestions here. I have an OS independent qury on the MSI using
> Intel-APIC (945 chipset).
>
> I'm trying to make MSI work on a custom OS, and I'm working on the
> system "bus driver" level rather than at the device driver level. I
> understand that to generate MSI, the device function will generate PCI
> write transaction to write the contents of its MDR into address
> specified in MAR. This is currently not generating the MSI for my
> device.
>
> To blame the device as faulty or to keep Intel processor out of
> suspicion, I want to prove that writing the contents of MDR into the
> address specified by MAR ACTUALLY will generate an interrupt to the
> processor. Is there a way I can prove that by a demonstration in SW?
>
> I wrote a small piece of code that does what the device HW is supposed
> to do. It writes the "a value" into "an address" and expects to generate
> an interrupt to processor as a result. Please note that this "value" and
> "address" are calculated in accordance with sec 9.12 (MSI) of ""Intel(r)
> 64 and IA-32 Architectures Software Developer's Manual"
> (http://www.intel.com/Assets/PDF/manual/253668.pdf)
>
> Also note that this "value" and "address" is really what will be
> programmed into MDR and MAR respectively on the device. But the end
> result is that when my demo code does exactly what the PCI device is
> supposed to do, it gets an APIC error interrupt with local APIC error
> status register = 0x80, which implies that the processor is trying to
> access a register in the processor's local APIC register address space
> that is reserved. Looking into the same above document sec 9.6.3, quite
> right, because the "address" that is to be programmed in MAR is actually
> reserved.
>
> So does that mean that the PCI device can write to it, but my SW
> (running on processor) cannot write to it?
>
> I'd really appreciate if you could please give me some pointers in this
> regard.
>
> Thanks & best Regards,
>
> Rajat Jain
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
