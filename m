From: "Microbit_P43000" <microbit@virginbroadband.com.au>
Subject: RE: 32 bit processors / 64 bit processors
Date: Tue, 10 Nov 2009 13:09:08 +1100
Message-ID: <2FA6ABFA2D494E0DBD00FCF35CDEDEC8@development>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com> <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com> <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com> <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B0D593D45@GDCMX01.igglobal.com> <e291fbf10910222220o2999f34cv2fb0033194823cf1@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B0D593EE1@GDCMX01.igglobal.com> <e291fbf10910222358na8bafdaxbb2157241f59ec1b@mail.gmail.com> <eaf9549291394c8b53f26fba12024a86@virginbroadband.com.au> <b14bc42a0911060423g324caedw3992061796125ea@mail.gmail.com> <fb79474c0911091027lf623cb8q6e91fb17a8801b30@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <fb79474c0911091027lf623cb8q6e91fb17a8801b30@mail.gmail.com>
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
To: 'Pulkit Goel' <vipulkit.goel@gmail.com>, 'nidhi mittal hada' <nidhimittal19@gmail.com>
Cc: 'C' <a.la.kaarta@gmail.com>, simonyanix@gmail.com, 'Siddu' <siddu.sjce@gmail.com>, 'Rick Brown' <rick.brown.3@gmail.com>, 'kernelnewbies' <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

What you posted below might hold true for the specific case of Intel =
CPUs. But that's
about it....
The Intel "assumptions" fail on many other CPUs....
Perhaps agree to disagree ? If you only code on x86 PCs, then your =
assertion just
*happens* to be correct....=20

Conversely - a square is a rectangle, but rectangles are not =
*necessarily* a square !
We can go round and round I guess....

Best Regards,
Kris=20
________________________________________
From: Pulkit Goel [mailto:vipulkit.goel@gmail.com]=20
Sent: Tuesday, 10 November 2009 5:27 AM
To: nidhi mittal hada
Cc: microbit@virginbroadband.com.au; C; simonyanix@gmail.com; Siddu; =
Rick Brown;
kernelnewbies; linux-newbie@vger.kernel.org
Subject: Re: 32 bit processors / 64 bit processors

Hi,

1) a) Processor 32/64 bit defines by :::=A0 Data bus Size
=A0=A0=A0 b) In Pentium 36 bit Adddress, Basically a PAE, Which is =
Introduced First by Intel to=A0
handle the Demand of RAM more than=A0=A0=A0 4GB, in Heavy Applications.

2) a) 64OS not Run On 32bit Processor, But 32bit OS run on 64Bit =
Processor by Downgarding
its Efficiency of Databus By latching only 32 bit data on 64bit bus by =
Inserting 32'b0* in
MSB of 64Bus...
Processor Generate Logical Address, which is Mapped into Virtual which =
in turn Mapped into
Physical., At low Level For LOW MEMORY Logical Address Directly Mapped =
to Virtual
Address,=A0 OS Provides Virtual Address space to a Process,

3) If Address Bus Size is 32Bit then Possible no. of Permutation that of =
Address Formed
are 2^32 =3D 4.098 GB.


Reagrds:
Pulkit Goel
mail: vipulkit.goel@gmail.com
On Fri, Nov 6, 2009 at 5:53 PM, nidhi mittal hada =
<nidhimittal19@gmail.com> wrote:
Can someone come and please clarify -- it finally=20
above chain of mail raises more confusion as conflict stays till end.

1)processor 32/64 bit --=20
=A0 =A0 a)data it can process at one instance --- register size --- data =
bus size --=20
OR
=A0=A0=A0 b)internal address bus size of processor ---=A0 if that is =
true then what abt case of
pentium 36 bit address lines ---=20


2)OS 32 /64 bit
=A0=A0=A0 a)its virtual address space -- what os provides --- to each =
process -- which is mapped
to physical address space that prcessor provides=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=20
=A0 OR
=A0=A0=A0=A0 b)processor specifies virtual addr space ??




3)extra ques -- why in case of 32 bit arch -- physical memory RAM =
limitation comes of 4GB
?


On Fri, Oct 23, 2009 at 4:54 PM, <microbit@virginbroadband.com.au> =
wrote:
Hi,

On Thu, 22 Oct 2009 23:58:20 -0700, C <a.la.kaarta@gmail.com> wrote:
>> Well, IMHO the processor does not decide or even know the size of
>> virtual address space.
> Ofcourse it does. How else do you think it translates a virtual
> address to a physical address? Virtual addresses are simply what the
> software 'sees', the processor takes these, translates them into
> physical addresses before making any reads / writes to main memory. No
> software can use a virtual address space larger than what the
> processor specifies.
>
>> 1) User may run a firmware on the processor that gives a 1-1 mapping
>> from virtual to physical (thus making virtual address space equal to
>> physical address space).
>>
> Well, I don't know much about other architectures, so I'll just =
comment
on
> x86.
> When you switch to 64bit mode, you compulsorily need to have a 4-level
> paging table, which translates 64-bit linear addresses (actually a
> 48-bit linear address, since the address is subject to the canonical
> address requirement) to (upto) 52-bit physical addresses. So
> irrespective of what firmware you're running, linear addresses are
> actually 64-bit, but physical addresses are not.
>
> (In fact, physical address space might even be larger than virtual
> address space, when we take modes like PAE / PSE into account)
>
>> 2) Users may be running different OS(s) that give different amount of
>> virtual address space to use.
> Irrespective of what OS you're using (and whether it switches to the
> processor mode that would utilize the 64-bit virtual address space
> that the processor provides), the 'internal address bus' (virtual
> address space) of the processor is what decides the maximum virtual
> address space of any programs that run on it (OS or otherwise).
>
> C
>
> On Thu, Oct 22, 2009 at 11:23 PM, Rajat Jain <Rajat.Jain@infogain.com>
> wrote:
>>
>> Hi,
>>
>> ----Original Message----
>> From: C [mailto:a.la.kaarta@gmail.com]
>> Sent: Friday, October 23, 2009 10:51 AM
>> To: Rajat Jain
>> Cc: simonyanix@gmail.com; Siddu; Rick Brown; kernelnewbies;
>> linux-newbie@vger.kernel.org
>> Subject: Re: 32 bit processors / 64 bit processors
>>
>>> PAE (Physical Address Extension) expands the _physical_ address =
space
>>> to > 32 bits, but the _virtual_ address space stays the same at
>>> 32-bits, and the virtual address size is what I mentioned as =
qualifies
>>> the processor as 32-bit or 64-bit.
>>
>> Well, IMHO the processor does not decide or even know the size of
>> virtual address space.
> Ofcourse it does. How else do you think it translates a virtual
> address to a physical address?
>
> It purely depends on the software (OS in this
>> case) that runs on it. Consider all of the following is possible on =
the
>> same 32 bit processor:
>>
>> 1) User may run a firmware on the processor that gives a 1-1 mapping
>> from virtual to physical (thus making virtual address space equal to
>> physical address space).
>>
>> 2) Users may be running different OS(s) that give different amount of
>> virtual address space to use.
>>
>> What am I missing?
>>
>> Thanks,
>>
>> Rajat
>>
>>
>>>
>>> 1. Addressable physical memory / physical address size does not =
decide
>>> whether a processor is 32-bit / 64-bit, there is no processor =
(AFAIK)
>>> which can address 64 bits of physical memory. I suppose =
sizeof(void*)
>>> gives you the size of the _virtual_ address, so yes, I suppose that
>>> should be 64 bits on a 64-bit processor (and using a 64-bit =
compiler)
>>> 2. Register size does not decide whether a processor is 32-bit /
>>> 64-bit.
>>>
>>> C
>>>
>>> On Thu, Oct 22, 2009 at 10:05 PM, Rajat Jain
>>> <Rajat.Jain@infogain.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>>> 1. The size of the processor's internal address bus (virtual =
address
>>>>> space) is what qualifies it as a 32-bit / 64-bit processor.
>>>>
>>>> Well, in that sense, isn't Pentium a "36-bit" processor (since it
>>>> gives the option of PAE to use 64 GB of memory - it must be having
>>>> atleast 36 address lines)?
>>>>
>>>> On this topic and in this thread, we have had following responses =
to
>>>> the question on what is called a 32-bit or 64-bit processor:
>>>>
>>>> 1) Addressable Physical memory (=3Dsizeof(void*))
>>>> 2) Register Size (=3Dinstruction size)
>>>>
>>>> Are the above two independent of each other? If yes, then how do we
>>>> deine a processor as 32-bit / 64-bit?
>>>>
>>>> Thanks,
>>>>
>>>> Rajat
>>
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ



>> Well, IMHO the processor does not decide or even know the size of
>> virtual address space.

> Ofcourse it does. How else do you think it translates a virtual
No it doesn't... the previous poster is right. (unless we excessively =
get
into semantics....)
That is up to the MMU, it has absolutely nothing to do with the CPU.
And FWIW, x86 is hardly a reference... x86, along with 8051 would have =
to
be the biggest abonimation
to the concept of elegant processing......

-- Kris


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ



--=20
Thanks & Regards=20
Nidhi Mittal Hada



--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

