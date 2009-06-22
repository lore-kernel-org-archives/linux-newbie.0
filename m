From: Pei Lin <telent997@gmail.com>
Subject: Re: MSI on Intel APIC
Date: Mon, 22 Jun 2009 09:46:49 +0800
Message-ID: <41d311580906211846v4b1851acxe74ef04f9696eb2@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
	 <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com>
	 <804dabb00906210456q671caa59y95bccd597bffa85e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=1x2EzFBhvXpRUHhb/drcEgloJsVznRqeMIvOqg9kqp8=;
        b=EtST684xzDh1dAtnJ+dzYWMmkond99Wz01EL6wz5BBujjIj2ENfQhed5HigqkImwKu
         bv0kseFTrTz8NSTGJ7M8w4NVdE6t0iwS3+/flv5R648Ij3TAIaNuzf0jOyjErxIWljRD
         96NDRV0QCcY2NBxWptx1aLQ/NwBEK+zY3dG4s=
In-Reply-To: <804dabb00906210456q671caa59y95bccd597bffa85e@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: Rajat Jain <Rajat.Jain@infogain.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, "Nguyen, Tom L" <tom.l.nguyen@intel.com>

i think the "bus address" is not always equality to "physical
address".In X86 ,maybe they are the same,but i think it associate with
the hardware.
i think Rajat's software is not a linux driver, it is the low level
under the OS. PCI firmware, right?

If i was wrong, correct me. Thanks.
Reference:
Document/IO-mapping.txt
http://en.wikipedia.org/wiki/Peripheral_Component_Interconnect

BRs

lin,

2009/6/21 Peter Teoh <htmldeveloper@gmail.com>:
> On Fri, Jun 19, 2009 at 1:40 PM, Rajat Jain<Rajat.Jain@infogain.com> =
wrote:
>>
>> Hello Pei / Tom,
>>
>> Thanks for the response. Actually I understand why the error is comi=
ng,
>> but my question is a little different.
>>
>> I'm saying that I understand that MSI works like following:
>>
>> 1) The device is given "an address" and a "value" (using MAR & MDR
>> registers) that it can use later on to generate an interrupt.
>> 2) The device later on when wants to send an interrupt, simply write
>> this "value" into that address using a PCI write transaction.
>> 3) This "address" and "value" is decided by the Intel APIC architect=
ure
>> (described in section 9.12 (MSI) of ""Intel 64 and IA-32 Architectur=
es
>> Software Developer's Manual"
>> http://www.intel.com/Assets/PDF/manual/253668.pdf).
>> 4) It is the responsibility of the Intel APIC to generate an interru=
pt
>> to the processor when that "value" is written to that "address".
>>
>> Now my question is simply this:
>>
>> Question
>> =3D=3D=3D=3D=3D=3D=3D=3D
>> APIC generates an interrupt when the device writes that "value" into
>> that "address". But will it also generate an interrupt if a SOFTWARE
>
> normally, when a device write to an address, it is a physical address
> from the device's perspective.
>
>> writes that same "value" into the same "address"????
>
> but when a CPU write to an address, due to MMU/pagetable in operation=
,
> it is always a virtual address, that have yet to be translated to a
> physical address. =A0 the API ioremap() and friends are used for gett=
ing
> virtual address that will map to the physical address of the hardware
> device.
>
>>
>> Currently, my software tries the same and gets the APIC error interr=
upt.
>> Which is partly justified by the section 9.6.3 (Illegal register acc=
ess)
>> since the "address" specified by the same specification (sec 9.12.1)
>> actually falls into the reserved category. But since the device can =
use
>> that address, theoritically my SW should also be able to? No?
>
> whether it is the hardware device accessing the DMA memory or softwar=
e
> accessing the DMA memory, is the same. =A0 yes, should be able to. =A0=
 but
> u have to make sure that they are touching the same physical address.
> =A0not sure if ioremap() have been used?
>
> sorry if my answer is incorrect......just trying my luck...:-).
>
>>
>> Thanks & Best Regards,
>>
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
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
