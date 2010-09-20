From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Re: mmap confusion
Date: Mon, 20 Sep 2010 17:57:37 -0400
Message-ID: <AANLkTinJFXCzykTa8dz6xv2_1annmHeWD2h+sOLi6Yov@mail.gmail.com>
References: <220544EE49E5824C9DE242B5ACE58C300930E512@EMBX01-BNG.jnpr.net>
	<AANLkTi=2rUg1DOsTsMB4Rx-6oz2OhNqySCbGF48OmEO4@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=0016364175212a51f30490b8003a
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type;
        bh=IMVootJFiZV40Zmp8jgvZf6C0VwCV/IYpavo3ORUFCc=;
        b=fUh7rd4uAj0di8W97ut0fY3n712KZ3F7Y8C0gjWZubUZIGX73oSeZFd1utWqS80Eap
         pa9splqKjMPqSn7Exrk7xRRN28K7w2jGtrqKyY0kudttP2qi9QiUc1upIJ/loinznUL8
         LEo76gJQ+PvYiI8HhXrCbHq2cU8/XNQcAYUoY=
In-Reply-To: <AANLkTi=2rUg1DOsTsMB4Rx-6oz2OhNqySCbGF48OmEO4@mail.gmail.com>
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
To: Rajat Jain <rajatjain@juniper.net>
Cc: "kernelnewbies@nl.linux.org" <kernelnewbies@nl.linux.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "rajat.noida.india@gmail.com" <rajat.noida.india@gmail.com>

--0016364175212a51f30490b8003a
Content-Type: text/plain; charset=ISO-8859-1

> Hi Rajat,
>
>       mmap is used to map file(devices) or shared memory to process virtual
> address.
>
>       So, for any device or file, which you want to map, everything is
> treated as file. So, in all cases you are trying to avoid file system.
> Typically read(),write() all these functions are generic functions provided
> by filesystem for a uniform access to all devices and files hiding the
> details.
>
> So, when you are using mmap, you are excluding file system and directly
> accessing memory as if it is within process address space.
> Typically when you map certain virtual address of process, depending on
> requested memory, those size pages are allocated to the calling process.
>
> Now depending upon what you have mapped to, the OS is going to perform
> operations on that entity for the memory addressed in store and load
> instructions.  This entity can be device, file stored on IDE, shared memory
> segment across networks. So, this also an abstraction provided by OS. ok.
>
> Regards,
> Sri.
>
>
> On Mon, Sep 20, 2010 at 1:33 AM, Rajat Jain <rajatjain@juniper.net> wrote:
>
>> Hello List,
>>
>> I wanted to understand how the mmap works. I mean, not from the kernel
>> APIs or data structures perspective, but from the HW perspective. I
>> understand that the use case is this: typically applications will mmap() a
>> file (a device file or any other file) into user space, and then use direct
>> pointers to read / write to that file. So as I understand, after the call to
>> mmap, the compiler will generate simple load and store instructions fo any
>> reads / writes into that file. What I'm trying to understand is that how is
>> it ensured that those load & store instructions get translated into file
>> reads/ writes. I think there are two cases:
>>
>> 1) If the backing file is /dev/mem or a device file, then at the time of
>> mmap(), the page table entries / TLB entries are set up such that the
>> virtual address in the user space, maps to the actual physical address
>> desired. And the thus job is done. This case is clear.
>>
>> 2) The other case is that when the file is actually a datafile present in
>> a file system lets say on a SATA disk. Now, for each load / store in the
>> application, some driver code needs to trigger that will program the SATA
>> controller registers and do n number of thinks to initiate the diska read /
>> write transaction. How is this achieved? Because application is not making
>> any System calls. Its just having load / store instructions.
>>
>> Thanks,
>>
>> Rajat Jain
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
>
>
>
> --
> Regards,
> Sri.
>
>


-- 
Regards,
Sri.

--0016364175212a51f30490b8003a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">Hi Rajat,<di=
v><br></div><div>=A0=A0 =A0 =A0mmap is used to map file(devices) or shared =
memory to process virtual address.</div>
<div>=A0=A0</div><div>=A0=A0 =A0 =A0So, for any device or file, which you w=
ant to map, everything is treated as file. So, in all cases you are trying =
to avoid file system. Typically read(),write() all these functions are gene=
ric functions provided by filesystem for a uniform access to all devices an=
d files hiding the details.</div>

<div><br></div><div>So, when you are using mmap, you are excluding file sys=
tem and directly accessing memory as if it is within process address space.=
=A0</div><div>Typically when you map certain virtual address of process, de=
pending on requested memory, those size pages are allocated to the calling =
process.</div>

<div><br></div><div>Now depending upon what you have mapped to, the OS is g=
oing to perform operations on that entity for the memory addressed in store=
 and load instructions. =A0This entity can be device, file stored on IDE, s=
hared memory segment across networks. So, this also an abstraction provided=
 by OS. ok.</div>

<div><br></div><div>Regards,</div><div>Sri.<div><div></div><div class=3D"h5=
"><br><br><div class=3D"gmail_quote">On Mon, Sep 20, 2010 at 1:33 AM, Rajat=
 Jain <span dir=3D"ltr">&lt;<a href=3D"mailto:rajatjain@juniper.net" target=
=3D"_blank">rajatjain@juniper.net</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello List,<br>
<br>
I wanted to understand how the mmap works. I mean, not from the kernel APIs=
 or data structures perspective, but from the HW perspective. I understand =
that the use case is this: typically applications will mmap() a file (a dev=
ice file or any other file) into user space, and then use direct pointers t=
o read / write to that file. So as I understand, after the call to mmap, th=
e compiler will generate simple load and store instructions fo any reads / =
writes into that file. What I&#39;m trying to understand is that how is it =
ensured that those load &amp; store instructions get translated into file r=
eads/ writes. I think there are two cases:<br>


<br>
1) If the backing file is /dev/mem or a device file, then at the time of mm=
ap(), the page table entries / TLB entries are set up such that the virtual=
 address in the user space, maps to the actual physical address desired. An=
d the thus job is done. This case is clear.<br>


<br>
2) The other case is that when the file is actually a datafile present in a=
 file system lets say on a SATA disk. Now, for each load / store in the app=
lication, some driver code needs to trigger that will program the SATA cont=
roller registers and do n number of thinks to initiate the diska read / wri=
te transaction. How is this achieved? Because application is not making any=
 System calls. Its just having load / store instructions.<br>


<br>
Thanks,<br>
<br>
Rajat Jain<br>
<font color=3D"#888888">--<br>
To unsubscribe from this list: send the line &quot;unsubscribe linux-newbie=
&quot; in<br>
the body of a message to <a href=3D"mailto:majordomo@vger.kernel.org" targe=
t=3D"_blank">majordomo@vger.kernel.org</a><br>
More majordomo info at =A0<a href=3D"http://vger.kernel.org/majordomo-info.=
html" target=3D"_blank">http://vger.kernel.org/majordomo-info.html</a><br>
Please read the FAQ at <a href=3D"http://www.linux-learn.org/faqs" target=
=3D"_blank">http://www.linux-learn.org/faqs</a><br>
</font></blockquote></div><br><br clear=3D"all"><br></div></div>-- <br>Rega=
rds,<div>Sri.</div><br>
</div>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Regards,<div>Sri.</div>=
<br>

--0016364175212a51f30490b8003a--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

