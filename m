From: Pulkit Goel <vipulkit.goel@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Mon, 9 Nov 2009 23:57:15 +0530
Message-ID: <fb79474c0911091027lf623cb8q6e91fb17a8801b30@mail.gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com> 
	<9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com> 
	<49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com> <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com> 
	<C86899CCB10A6C4E93D5978DCB232D4B0D593D45@GDCMX01.igglobal.com> 
	<e291fbf10910222220o2999f34cv2fb0033194823cf1@mail.gmail.com> 
	<C86899CCB10A6C4E93D5978DCB232D4B0D593EE1@GDCMX01.igglobal.com> 
	<e291fbf10910222358na8bafdaxbb2157241f59ec1b@mail.gmail.com> 
	<eaf9549291394c8b53f26fba12024a86@virginbroadband.com.au> 
	<b14bc42a0911060423g324caedw3992061796125ea@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=0016e64c3d98f6f8580477f45833
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type;
        bh=Potdn3tovQMRYN3RRAuTfLJiyfC0DW/pyc97ply3vYc=;
        b=HWA9urdgvbES6ULSBxUPpKbF/04Pue5MB3w9RkgpRTHsJveTgd4BOQqHT+wM5vVjtf
         1jQy6r8telHK5nlDNnBlOzTyRKPScVxjDnoZ/GNQ1TRtVnhGL0zdq3IRbvIo/vTRd5Cd
         Vz8p0dP7+yasSkshj85FmXEotROuQ5xPxkkbs=
In-Reply-To: <b14bc42a0911060423g324caedw3992061796125ea@mail.gmail.com>
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
To: nidhi mittal hada <nidhimittal19@gmail.com>
Cc: microbit@virginbroadband.com.au, C <a.la.kaarta@gmail.com>, simonyanix@gmail.com, Siddu <siddu.sjce@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

--0016e64c3d98f6f8580477f45833
Content-Type: text/plain; charset=ISO-8859-1

Hi,

*1) *a) Processor 32/64 bit defines by :::*  Data bus Size*
    b) In Pentium 36 bit Adddress, Basically a PAE, Which is Introduced
First by Intel to  handle the Demand of RAM more than    4GB, in Heavy
Applications.

*2)* a) 64OS not Run On 32bit Processor, But 32bit OS run on 64Bit Processor
by Downgarding its Efficiency of Databus By latching only 32 bit data on
64bit bus by Inserting 32'b0* in MSB of 64Bus...
Processor Generate *Logical* Address, which is Mapped into *Virtual* which
in turn Mapped into *Physical*., At low Level For LOW MEMORY Logical Address
Directly Mapped to Virtual Address,  OS Provides Virtual Address space to a
Process,

*3)* *If* Address Bus Size is 32Bit then Possible no. of Permutation that of
Address Formed are 2^32 = 4.098 GB.


*Reagrds:*
Pulkit Goel
*mail:* vipulkit.goel@gmail.com

On Fri, Nov 6, 2009 at 5:53 PM, nidhi mittal hada
<nidhimittal19@gmail.com>wrote:

> Can someone come and please clarify -- it finally
> above chain of mail raises more confusion as conflict stays till end.
>
> 1)processor 32/64 bit --
>     a)data it can process at one instance --- register size --- data bus
> size --
> OR
>     b)internal address bus size of processor ---  if that is true then what
> abt case of pentium 36 bit address lines ---
>
>
> 2)OS 32 /64 bit
>     a)its virtual address space -- what os provides --- to each process --
> which is mapped to physical address space that prcessor provides
>
>   OR
>      b)processor specifies virtual addr space ??
>
>
>
>
> 3)extra ques -- why in case of 32 bit arch -- physical memory RAM
> limitation comes of 4GB ?
>
>
>
> On Fri, Oct 23, 2009 at 4:54 PM, <microbit@virginbroadband.com.au> wrote:
>
>> Hi,
>>
>> On Thu, 22 Oct 2009 23:58:20 -0700, C <a.la.kaarta@gmail.com> wrote:
>> >> Well, IMHO the processor does not decide or even know the size of
>> >> virtual address space.
>> > Ofcourse it does. How else do you think it translates a virtual
>> > address to a physical address? Virtual addresses are simply what the
>> > software 'sees', the processor takes these, translates them into
>> > physical addresses before making any reads / writes to main memory. No
>> > software can use a virtual address space larger than what the
>> > processor specifies.
>> >
>> >> 1) User may run a firmware on the processor that gives a 1-1 mapping
>> >> from virtual to physical (thus making virtual address space equal to
>> >> physical address space).
>> >>
>> > Well, I don't know much about other architectures, so I'll just comment
>> on
>> > x86.
>> > When you switch to 64bit mode, you compulsorily need to have a 4-level
>> > paging table, which translates 64-bit linear addresses (actually a
>> > 48-bit linear address, since the address is subject to the canonical
>> > address requirement) to (upto) 52-bit physical addresses. So
>> > irrespective of what firmware you're running, linear addresses are
>> > actually 64-bit, but physical addresses are not.
>> >
>> > (In fact, physical address space might even be larger than virtual
>> > address space, when we take modes like PAE / PSE into account)
>> >
>> >> 2) Users may be running different OS(s) that give different amount of
>> >> virtual address space to use.
>> > Irrespective of what OS you're using (and whether it switches to the
>> > processor mode that would utilize the 64-bit virtual address space
>> > that the processor provides), the 'internal address bus' (virtual
>> > address space) of the processor is what decides the maximum virtual
>> > address space of any programs that run on it (OS or otherwise).
>> >
>> > C
>> >
>> > On Thu, Oct 22, 2009 at 11:23 PM, Rajat Jain <Rajat.Jain@infogain.com>
>> > wrote:
>> >>
>> >> Hi,
>> >>
>> >> ----Original Message----
>> >> From: C [mailto:a.la.kaarta@gmail.com]
>> >> Sent: Friday, October 23, 2009 10:51 AM
>> >> To: Rajat Jain
>> >> Cc: simonyanix@gmail.com; Siddu; Rick Brown; kernelnewbies;
>> >> linux-newbie@vger.kernel.org
>> >> Subject: Re: 32 bit processors / 64 bit processors
>> >>
>> >>> PAE (Physical Address Extension) expands the _physical_ address space
>> >>> to > 32 bits, but the _virtual_ address space stays the same at
>> >>> 32-bits, and the virtual address size is what I mentioned as qualifies
>> >>> the processor as 32-bit or 64-bit.
>> >>
>> >> Well, IMHO the processor does not decide or even know the size of
>> >> virtual address space.
>> > Ofcourse it does. How else do you think it translates a virtual
>> > address to a physical address?
>> >
>> > It purely depends on the software (OS in this
>> >> case) that runs on it. Consider all of the following is possible on the
>> >> same 32 bit processor:
>> >>
>> >> 1) User may run a firmware on the processor that gives a 1-1 mapping
>> >> from virtual to physical (thus making virtual address space equal to
>> >> physical address space).
>> >>
>> >> 2) Users may be running different OS(s) that give different amount of
>> >> virtual address space to use.
>> >>
>> >> What am I missing?
>> >>
>> >> Thanks,
>> >>
>> >> Rajat
>> >>
>> >>
>> >>>
>> >>> 1. Addressable physical memory / physical address size does not decide
>> >>> whether a processor is 32-bit / 64-bit, there is no processor (AFAIK)
>> >>> which can address 64 bits of physical memory. I suppose sizeof(void*)
>> >>> gives you the size of the _virtual_ address, so yes, I suppose that
>> >>> should be 64 bits on a 64-bit processor (and using a 64-bit compiler)
>> >>> 2. Register size does not decide whether a processor is 32-bit /
>> >>> 64-bit.
>> >>>
>> >>> C
>> >>>
>> >>> On Thu, Oct 22, 2009 at 10:05 PM, Rajat Jain
>> >>> <Rajat.Jain@infogain.com> wrote:
>> >>>>
>> >>>> Hi,
>> >>>>
>> >>>>> 1. The size of the processor's internal address bus (virtual address
>> >>>>> space) is what qualifies it as a 32-bit / 64-bit processor.
>> >>>>
>> >>>> Well, in that sense, isn't Pentium a "36-bit" processor (since it
>> >>>> gives the option of PAE to use 64 GB of memory - it must be having
>> >>>> atleast 36 address lines)?
>> >>>>
>> >>>> On this topic and in this thread, we have had following responses to
>> >>>> the question on what is called a 32-bit or 64-bit processor:
>> >>>>
>> >>>> 1) Addressable Physical memory (=sizeof(void*))
>> >>>> 2) Register Size (=instruction size)
>> >>>>
>> >>>> Are the above two independent of each other? If yes, then how do we
>> >>>> deine a processor as 32-bit / 64-bit?
>> >>>>
>> >>>> Thanks,
>> >>>>
>> >>>> Rajat
>> >>
>> >
>> > --
>> > To unsubscribe from this list: send an email with
>> > "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> > Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
>>
>> >> Well, IMHO the processor does not decide or even know the size of
>> >> virtual address space.
>>
>> > Ofcourse it does. How else do you think it translates a virtual
>>
>> No it doesn't... the previous poster is right. (unless we excessively get
>> into semantics....)
>> That is up to the MMU, it has absolutely nothing to do with the CPU.
>> And FWIW, x86 is hardly a reference... x86, along with 8051 would have to
>> be the biggest abonimation
>> to the concept of elegant processing......
>>
>> -- Kris
>>
>>
>> --
>> To unsubscribe from this list: send an email with
>> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
>
>
> --
> Thanks & Regards
> Nidhi Mittal Hada
>

--0016e64c3d98f6f8580477f45833
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><b>1) </b>a) Processor 32/64 bit defines by :::<b>=A0 Data bus S=
ize</b><br>=A0=A0=A0 b) In Pentium 36 bit Adddress, Basically a PAE, Which =
is Introduced First by Intel to=A0 handle the Demand of RAM more than=A0=A0=
=A0 4GB, in Heavy Applications.<br>

<br><b>2)</b> a) 64OS not Run On 32bit Processor, But 32bit OS run on 64Bit=
 Processor by Downgarding its Efficiency of Databus By latching only 32 bit=
 data on 64bit bus by Inserting 32&#39;b0* in MSB of 64Bus...<br>Processor =
Generate <b>Logical</b> Address, which is Mapped into <b>Virtual</b> which =
in turn Mapped into <b>Physical</b>., At low Level For LOW MEMORY Logical A=
ddress Directly Mapped to Virtual Address,=A0 OS Provides Virtual Address s=
pace to a Process,<br>

<br><b>3)</b> <b>If</b> Address Bus Size is 32Bit then Possible no. of Perm=
utation that of Address Formed are 2^32 =3D 4.098 GB.<br><br><br><b>Reagrds=
:</b><br>Pulkit Goel<br><b>mail:</b> <a href=3D"mailto:vipulkit.goel@gmail.=
com">vipulkit.goel@gmail.com</a><br>

<br><div class=3D"gmail_quote">On Fri, Nov 6, 2009 at 5:53 PM, nidhi mittal=
 hada <span dir=3D"ltr">&lt;<a href=3D"mailto:nidhimittal19@gmail.com">nidh=
imittal19@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt=
 0.8ex; padding-left: 1ex;">

Can someone come and please clarify -- it finally <br>above chain of mail r=
aises more confusion as conflict stays till end.<br><br>1)processor 32/64 b=
it -- <br>=A0 =A0 a)data it can process at one instance --- register size -=
-- data bus size -- <br>


OR<br>=A0=A0=A0 b)internal address bus size of processor ---=A0 if that is =
true then what abt case of pentium 36 bit address lines --- <br><br><br>2)O=
S 32 /64 bit<br>=A0=A0=A0 a)its virtual address space -- what os provides -=
-- to each process -- which is mapped to physical address space that prcess=
or provides <br>


=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>=A0 OR<br>=A0=A0=A0=A0 b)processor speci=
fies virtual addr space ??<br><br><br><br><br>3)extra ques -- why in case o=
f 32 bit arch -- physical memory RAM limitation comes of 4GB ?<br><br><br><=
br>


<div class=3D"gmail_quote">On Fri, Oct 23, 2009 at 4:54 PM,  <span dir=3D"l=
tr">&lt;<a href=3D"mailto:microbit@virginbroadband.com.au" target=3D"_blank=
">microbit@virginbroadband.com.au</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, 204, 204); margi=
n: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">


Hi,<br>
<div><div></div><div><br>
On Thu, 22 Oct 2009 23:58:20 -0700, C &lt;<a href=3D"mailto:a.la.kaarta@gma=
il.com" target=3D"_blank">a.la.kaarta@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Well, IMHO the processor does not decide or even know the size of<=
br>
&gt;&gt; virtual address space.<br>
&gt; Ofcourse it does. How else do you think it translates a virtual<br>
&gt; address to a physical address? Virtual addresses are simply what the<b=
r>
&gt; software &#39;sees&#39;, the processor takes these, translates them in=
to<br>
&gt; physical addresses before making any reads / writes to main memory. No=
<br>
&gt; software can use a virtual address space larger than what the<br>
&gt; processor specifies.<br>
&gt;<br>
&gt;&gt; 1) User may run a firmware on the processor that gives a 1-1 mappi=
ng<br>
&gt;&gt; from virtual to physical (thus making virtual address space equal =
to<br>
&gt;&gt; physical address space).<br>
&gt;&gt;<br>
&gt; Well, I don&#39;t know much about other architectures, so I&#39;ll jus=
t comment<br>
on<br>
&gt; x86.<br>
&gt; When you switch to 64bit mode, you compulsorily need to have a 4-level=
<br>
&gt; paging table, which translates 64-bit linear addresses (actually a<br>
&gt; 48-bit linear address, since the address is subject to the canonical<b=
r>
&gt; address requirement) to (upto) 52-bit physical addresses. So<br>
&gt; irrespective of what firmware you&#39;re running, linear addresses are=
<br>
&gt; actually 64-bit, but physical addresses are not.<br>
&gt;<br>
&gt; (In fact, physical address space might even be larger than virtual<br>
&gt; address space, when we take modes like PAE / PSE into account)<br>
&gt;<br>
&gt;&gt; 2) Users may be running different OS(s) that give different amount=
 of<br>
&gt;&gt; virtual address space to use.<br>
&gt; Irrespective of what OS you&#39;re using (and whether it switches to t=
he<br>
&gt; processor mode that would utilize the 64-bit virtual address space<br>
&gt; that the processor provides), the &#39;internal address bus&#39; (virt=
ual<br>
&gt; address space) of the processor is what decides the maximum virtual<br=
>
&gt; address space of any programs that run on it (OS or otherwise).<br>
&gt;<br>
&gt; C<br>
&gt;<br>
&gt; On Thu, Oct 22, 2009 at 11:23 PM, Rajat Jain &lt;<a href=3D"mailto:Raj=
at.Jain@infogain.com" target=3D"_blank">Rajat.Jain@infogain.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; ----Original Message----<br>
&gt;&gt; From: C [mailto:<a href=3D"mailto:a.la.kaarta@gmail.com" target=3D=
"_blank">a.la.kaarta@gmail.com</a>]<br>
&gt;&gt; Sent: Friday, October 23, 2009 10:51 AM<br>
&gt;&gt; To: Rajat Jain<br>
&gt;&gt; Cc: <a href=3D"mailto:simonyanix@gmail.com" target=3D"_blank">simo=
nyanix@gmail.com</a>; Siddu; Rick Brown; kernelnewbies;<br>
&gt;&gt; <a href=3D"mailto:linux-newbie@vger.kernel.org" target=3D"_blank">=
linux-newbie@vger.kernel.org</a><br>
&gt;&gt; Subject: Re: 32 bit processors / 64 bit processors<br>
&gt;&gt;<br>
&gt;&gt;&gt; PAE (Physical Address Extension) expands the _physical_ addres=
s space<br>
&gt;&gt;&gt; to &gt; 32 bits, but the _virtual_ address space stays the sam=
e at<br>
&gt;&gt;&gt; 32-bits, and the virtual address size is what I mentioned as q=
ualifies<br>
&gt;&gt;&gt; the processor as 32-bit or 64-bit.<br>
&gt;&gt;<br>
&gt;&gt; Well, IMHO the processor does not decide or even know the size of<=
br>
&gt;&gt; virtual address space.<br>
&gt; Ofcourse it does. How else do you think it translates a virtual<br>
&gt; address to a physical address?<br>
&gt;<br>
&gt; It purely depends on the software (OS in this<br>
&gt;&gt; case) that runs on it. Consider all of the following is possible o=
n the<br>
&gt;&gt; same 32 bit processor:<br>
&gt;&gt;<br>
&gt;&gt; 1) User may run a firmware on the processor that gives a 1-1 mappi=
ng<br>
&gt;&gt; from virtual to physical (thus making virtual address space equal =
to<br>
&gt;&gt; physical address space).<br>
&gt;&gt;<br>
&gt;&gt; 2) Users may be running different OS(s) that give different amount=
 of<br>
&gt;&gt; virtual address space to use.<br>
&gt;&gt;<br>
&gt;&gt; What am I missing?<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Rajat<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1. Addressable physical memory / physical address size does no=
t decide<br>
&gt;&gt;&gt; whether a processor is 32-bit / 64-bit, there is no processor =
(AFAIK)<br>
&gt;&gt;&gt; which can address 64 bits of physical memory. I suppose sizeof=
(void*)<br>
&gt;&gt;&gt; gives you the size of the _virtual_ address, so yes, I suppose=
 that<br>
&gt;&gt;&gt; should be 64 bits on a 64-bit processor (and using a 64-bit co=
mpiler)<br>
&gt;&gt;&gt; 2. Register size does not decide whether a processor is 32-bit=
 /<br>
&gt;&gt;&gt; 64-bit.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; C<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Oct 22, 2009 at 10:05 PM, Rajat Jain<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:Rajat.Jain@infogain.com" target=3D"_blan=
k">Rajat.Jain@infogain.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; 1. The size of the processor&#39;s internal address bu=
s (virtual address<br>
&gt;&gt;&gt;&gt;&gt; space) is what qualifies it as a 32-bit / 64-bit proce=
ssor.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Well, in that sense, isn&#39;t Pentium a &quot;36-bit&quot=
; processor (since it<br>
&gt;&gt;&gt;&gt; gives the option of PAE to use 64 GB of memory - it must b=
e having<br>
&gt;&gt;&gt;&gt; atleast 36 address lines)?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On this topic and in this thread, we have had following re=
sponses to<br>
&gt;&gt;&gt;&gt; the question on what is called a 32-bit or 64-bit processo=
r:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; 1) Addressable Physical memory (=3Dsizeof(void*))<br>
&gt;&gt;&gt;&gt; 2) Register Size (=3Dinstruction size)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Are the above two independent of each other? If yes, then =
how do we<br>
&gt;&gt;&gt;&gt; deine a processor as 32-bit / 64-bit?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Rajat<br>
&gt;&gt;<br>
&gt;<br>
&gt; --<br>
&gt; To unsubscribe from this list: send an email with<br>
&gt; &quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.=
linux.org" target=3D"_blank">ecartis@nl.linux.org</a><br>
&gt; Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=
=3D"_blank">http://kernelnewbies.org/FAQ</a><br>
<br>
<br>
<br>
&gt;&gt; Well, IMHO the processor does not decide or even know the size of<=
br>
&gt;&gt; virtual address space.<br>
<br>
&gt; Ofcourse it does. How else do you think it translates a virtual<br>
<br>
</div></div>No it doesn&#39;t... the previous poster is right. (unless we e=
xcessively get<br>
into semantics....)<br>
That is up to the MMU, it has absolutely nothing to do with the CPU.<br>
And FWIW, x86 is hardly a reference... x86, along with 8051 would have to<b=
r>
be the biggest abonimation<br>
to the concept of elegant processing......<br>
<br>
-- Kris<br>
<div><div></div><div><br>
<br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org" target=3D"_blank">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>Thanks &amp=
; Regards <br><font color=3D"#888888">Nidhi Mittal Hada<br>
</font></blockquote></div><br>

--0016e64c3d98f6f8580477f45833--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

