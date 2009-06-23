From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: MSI on Intel APIC
Date: Tue, 23 Jun 2009 08:27:03 +0800
Message-ID: <804dabb00906221727r499a9270r18143d211212b897@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0BD962A2@GDCMX01.igglobal.com>
	 <41d311580906181943l5c33885epf1f2c15853a461dc@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B0BD96612@GDCMX01.igglobal.com>
	 <804dabb00906210456q671caa59y95bccd597bffa85e@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B0BDE4F00@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=e/Ubs+y0Jm/tYeO20YFSoDAYNvwyTt9s6G3YcnJKk9w=;
        b=PHHDoZUDfHEXb3s5yjhYsHvJN3W+wCIC+KWcbRBp3mDHhV11NY6OB1bxImCaQjelHV
         +1XS7m5gL80JPJhKAXyc4k/D1KDWwc8XA6wDgWpCdVrxiLAEOUW1duTwm/DkVUhOqDL+
         bQySts1XoGYwlnGxery57vA0MgUTL67RNRu38=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0BDE4F00@GDCMX01.igglobal.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="iso-8859-1"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: Pei Lin <telent997@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, "Nguyen, Tom L" <tom.l.nguyen@intel.com>

welll....thanks PeiLin for pointing out the doc:   DMA-mapping.txt,
and IO-mapping.txt.   These explained very well what is needed to be
done.   but issue now is how Rajat build his own page table?   care to
show the code snippets?   did u verify it is working?  and how?   :-).

thanks.

On Mon, Jun 22, 2009 at 12:46 PM, Rajat Jain<Rajat.Jain@infogain.com> wrote=
:
>
> Hello Peter,
>
> Yes, I'm using a virtual address to write to that physical address (I'm
> building page tables myself, something like what ioremap() does)
>
> :-(
>
> Rajat
>
>> -----Original Message-----
>> From: Peter Teoh [mailto:htmldeveloper@gmail.com]
>> Sent: Sunday, June 21, 2009 5:26 PM
>> To: Rajat Jain
>> Cc: Pei Lin; kernelnewbies@nl.linux.org;
>> linux-newbie@vger.kernel.org; Nguyen, Tom L
>> Subject: Re: MSI on Intel APIC
>>
>> On Fri, Jun 19, 2009 at 1:40 PM, Rajat
>> Jain<Rajat.Jain@infogain.com> wrote:
>> >
>> > Hello Pei / Tom,
>> >
>> > Thanks for the response. Actually I understand why the
>> error is coming,
>> > but my question is a little different.
>> >
>> > I'm saying that I understand that MSI works like following:
>> >
>> > 1) The device is given "an address" and a "value" (using MAR & MDR
>> > registers) that it can use later on to generate an interrupt.
>> > 2) The device later on when wants to send an interrupt, simply write
>> > this "value" into that address using a PCI write transaction.
>> > 3) This "address" and "value" is decided by the Intel APIC
>> architecture
>> > (described in section 9.12 (MSI) of ""Intel 64 and IA-32
>> Architectures
>> > Software Developer's Manual"
>> > http://www.intel.com/Assets/PDF/manual/253668.pdf).
>> > 4) It is the responsibility of the Intel APIC to generate
>> an interrupt
>> > to the processor when that "value" is written to that "address".
>> >
>> > Now my question is simply this:
>> >
>> > Question
>> > =3D=3D=3D=3D=3D=3D=3D=3D
>> > APIC generates an interrupt when the device writes that "value" into
>> > that "address". But will it also generate an interrupt if a SOFTWARE
>>
>> normally, when a device write to an address, it is a physical address
>> from the device's perspective.
>>
>> > writes that same "value" into the same "address"????
>>
>> but when a CPU write to an address, due to MMU/pagetable in operation,
>> it is always a virtual address, that have yet to be translated to a
>> physical address. =A0 the API ioremap() and friends are used for getting
>> virtual address that will map to the physical address of the hardware
>> device.
>>
>> >
>> > Currently, my software tries the same and gets the APIC
>> error interrupt.
>> > Which is partly justified by the section 9.6.3 (Illegal
>> register access)
>> > since the "address" specified by the same specification (sec 9.12.1)
>> > actually falls into the reserved category. But since the
>> device can use
>> > that address, theoritically my SW should also be able to? No?
>>
>> whether it is the hardware device accessing the DMA memory or software
>> accessing the DMA memory, is the same. =A0 yes, should be able to. =A0 b=
ut
>> u have to make sure that they are touching the same physical address.
>> =A0not sure if ioremap() have been used?
>>
>> sorry if my answer is incorrect......just trying my luck...:-).
>>
>> >
>> > Thanks & Best Regards,
>> >
>>
>>
>>
>>
>>
>> --
>> Regards,
>> Peter Teoh
>>
>



--=20
Regards,
Peter Teoh

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

