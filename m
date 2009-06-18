From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: MSI on Intel APIC
Date: Thu, 18 Jun 2009 18:19:01 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hello list,

My query has to do with Intel Hardware and MSI (rather than its
implementation in Linux) but trying my luck to see if anyone has any
suggestions here. I have an OS independent qury on the MSI using
Intel-APIC (945 chipset). 

I'm trying to make MSI work on a custom OS, and I'm working on the
system "bus driver" level rather than at the device driver level. I
understand that to generate MSI, the device function will generate PCI
write transaction to write the contents of its MDR into address
specified in MAR. This is currently not generating the MSI for my
device. 

To blame the device as faulty or to keep Intel processor out of
suspicion, I want to prove that writing the contents of MDR into the
address specified by MAR ACTUALLY will generate an interrupt to the
processor. Is there a way I can prove that by a demonstration in SW?

I wrote a small piece of code that does what the device HW is supposed
to do. It writes the "a value" into "an address" and expects to generate
an interrupt to processor as a result. Please note that this "value" and
"address" are calculated in accordance with sec 9.12 (MSI) of ""Intel(r)
64 and IA-32 Architectures Software Developer's Manual"
(http://www.intel.com/Assets/PDF/manual/253668.pdf) 

Also note that this "value" and "address" is really what will be
programmed into MDR and MAR respectively on the device. But the end
result is that when my demo code does exactly what the PCI device is
supposed to do, it gets an APIC error interrupt with local APIC error
status register = 0x80, which implies that the processor is trying to
access a register in the processor's local APIC register address space
that is reserved. Looking into the same above document sec 9.6.3, quite
right, because the "address" that is to be programmed in MAR is actually
reserved.

So does that mean that the PCI device can write to it, but my SW
(running on processor) cannot write to it?

I'd really appreciate if you could please give me some pointers in this
regard.

Thanks & best Regards,

Rajat Jain
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
