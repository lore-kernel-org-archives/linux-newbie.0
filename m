From: Pei Lin <telent997@gmail.com>
Subject: Re: MSI on Intel APIC
Date: Fri, 19 Jun 2009 16:54:13 +0800
Message-ID: <41d311580906190154s192de8adq16daf21c60a0094d@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
	 <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=cT8hJ3XrC1nznWXaK6XO5RVnWIqhsLynlU0pmSemx50=;
        b=H6GqUlz5NMY5JOEoX1ccqf4v+idzbxbo4W3rKSdsPg90zhQnTP37Asma3OokAjJOiN
         Qn+lReq/Of1V261ji2rKo0mLB43kiTHfCPIdxP1C0zQFgSAXLU5NVLhGBMUpFizI2a0n
         heJyPTSZfpZFgvOzyCR/vulATNHCSMHDx0tIU=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, "Nguyen, Tom L" <tom.l.nguyen@intel.com>

i doubt your hardware write the bus address which is the same address
as your software "see".

i also expect who can give me the answer.... ^-^

BRs,
Lin

2009/6/19 Rajat Jain <Rajat.Jain@infogain.com>:
>
> Hello Pei / Tom,
>
> Thanks for the response. Actually I understand why the error is comin=
g,
> but my question is a little different.
>
> I'm saying that I understand that MSI works like following:
>
> 1) The device is given "an address" and a "value" (using MAR & MDR
> registers) that it can use later on to generate an interrupt.
> 2) The device later on when wants to send an interrupt, simply write
> this "value" into that address using a PCI write transaction.
> 3) This "address" and "value" is decided by the Intel APIC architectu=
re
> (described in section 9.12 (MSI) of ""Intel 64 and IA-32 Architecture=
s
> Software Developer's Manual"
> http://www.intel.com/Assets/PDF/manual/253668.pdf).
> 4) It is the responsibility of the Intel APIC to generate an interrup=
t
> to the processor when that "value" is written to that "address".
>
> Now my question is simply this:
>
> Question
> =3D=3D=3D=3D=3D=3D=3D=3D
> APIC generates an interrupt when the device writes that "value" into
> that "address". But will it also generate an interrupt if a SOFTWARE
> writes that same "value" into the same "address"????
>
> Currently, my software tries the same and gets the APIC error interru=
pt.
> Which is partly justified by the section 9.6.3 (Illegal register acce=
ss)
> since the "address" specified by the same specification (sec 9.12.1)
> actually falls into the reserved category. But since the device can u=
se
> that address, theoritically my SW should also be able to? No?
>
> Thanks & Best Regards,
>
> Rajat Jain
>
>> -----Original Message-----
>> From: Pei Lin [mailto:telent997@gmail.com]
>> Sent: Friday, June 19, 2009 8:14 AM
>> To: Rajat Jain
>> Cc: kernelnewbies@nl.linux.org; linux-newbie@vger.kernel.org
>> Subject: Re: MSI on Intel APIC
>>
>> look at your local APIC error status register =3D 0x80,
>> reference as "9.6.3 Error Handling",it imply
>> "Illegal Reg. Address:
>> (Intel Core, Intel Atom, Pentium 4, Intel Xeon, and P6 family
>> processors only) Set when the processor is trying to access a regist=
er
>> in the processor's local APIC register address space that is reserve=
d
>> (see Table 9-1). Addresses in one of the 0x10 byte regions marked
>> reserved are illegal register addresses.
>> The Local APIC Register Map is the address range of the APIC registe=
r
>> base address (specified in the IA32_APIC_BASE MSR) plus 4 KBytes."
>>
>> i guess there are something wrong with your address space
>> configuration.Refer to the specification "PCI Local Bus Specificatio=
n"
>> Chapter 6 Configuration Space for a check.
>>
>> ps. =A0i am just a newbie for PCI and APIC,hope this can give u
>> some clues.
>>
>> BRs
>> lin
>>
>> 2009/6/18 Rajat Jain <Rajat.Jain@infogain.com>:
>> >
>> > Hello list,
>> >
>> > My query has to do with Intel Hardware and MSI (rather than its
>> > implementation in Linux) but trying my luck to see if anyone has a=
ny
>> > suggestions here. I have an OS independent qury on the MSI using
>> > Intel-APIC (945 chipset).
>> >
>> > I'm trying to make MSI work on a custom OS, and I'm working on the
>> > system "bus driver" level rather than at the device driver level. =
I
>> > understand that to generate MSI, the device function will
>> generate PCI
>> > write transaction to write the contents of its MDR into address
>> > specified in MAR. This is currently not generating the MSI for my
>> > device.
>> >
>> > To blame the device as faulty or to keep Intel processor out of
>> > suspicion, I want to prove that writing the contents of MDR into t=
he
>> > address specified by MAR ACTUALLY will generate an interrupt to th=
e
>> > processor. Is there a way I can prove that by a demonstration in S=
W?
>> >
>> > I wrote a small piece of code that does what the device HW
>> is supposed
>> > to do. It writes the "a value" into "an address" and
>> expects to generate
>> > an interrupt to processor as a result. Please note that
>> this "value" and
>> > "address" are calculated in accordance with sec 9.12 (MSI)
>> of ""Intel(r)
>> > 64 and IA-32 Architectures Software Developer's Manual"
>> > (http://www.intel.com/Assets/PDF/manual/253668.pdf)
>> >
>> > Also note that this "value" and "address" is really what will be
>> > programmed into MDR and MAR respectively on the device. But the en=
d
>> > result is that when my demo code does exactly what the PCI device =
is
>> > supposed to do, it gets an APIC error interrupt with local
>> APIC error
>> > status register =3D 0x80, which implies that the processor is
>> trying to
>> > access a register in the processor's local APIC register
>> address space
>> > that is reserved. Looking into the same above document sec
>> 9.6.3, quite
>> > right, because the "address" that is to be programmed in
>> MAR is actually
>> > reserved.
>> >
>> > So does that mean that the PCI device can write to it, but my SW
>> > (running on processor) cannot write to it?
>> >
>> > I'd really appreciate if you could please give me some
>> pointers in this
>> > regard.
>> >
>> > Thanks & best Regards,
>> >
>> > Rajat Jain
>> >
>> > --
>> > To unsubscribe from this list: send an email with
>> > "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> > Please read the FAQ at http://kernelnewbies.org/FAQ
>> >
>> >
>>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
