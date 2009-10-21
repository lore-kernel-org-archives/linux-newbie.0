From: C <a.la.kaarta@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Tue, 20 Oct 2009 23:52:59 -0700
Message-ID: <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
	 <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
	 <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=2VfZZcqQbY2Iohx7U+l/Q+10x3G6DWKuEsorb3Z5TPs=;
        b=xy+L4d+Qafqy0qN5JIpa4d34/xxXh7rfdLgJ8TmaJcd6duWdXpLrTPxCbOC0DFufj2
         Fw0yKmrG0Ckvhi4DXRh5uO3tFbESBYwUQsrDguCXMH7sg0piazII00sU3bItUkwaCepq
         IVqTL4spSsycHamH1a69I99ojwp6NZgIDVv2Q=
In-Reply-To: <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?UTF-8?B?55uK54mZ?= <simonyanix@gmail.com>
Cc: Siddu <siddu.sjce@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

1. The size of the processor's internal address bus (virtual address
space) is what qualifies it as a 32-bit / 64-bit processor.
Whether or not the OS changes the processor mode to 64-bit(IA-32e/Long
etc) (and thereby has access to the 64-bit virtual address space,
extended register set etc) is what qualifies it as a 32-bit / 64-bit
OS.

AFAIK, no x86 processor truly supports the complete 64-bit address spac=
e (yet) -
a. The virtual address space is 64 bits, but still limited by the
canonical addressing restriction ( no access to the complete 64-bit
virtual address space)
b. The physical address is not 64 bits (no system uses such a large
amount of physical memory, so there's no point providing such a large
number of address pins out to the memory controller / DRAM)

2. sizeof(int) would be depend on the compiler (which in turn depends
on the OS it is compiling for, which in turn depends on what processor
it is running on). (Though personally I haven't seen sizeof(int) being
anything other than 4 bytes .. but I've seen sizeof(long int) being 64
bits for x86-64 gcc, and 32 bits for i386 gcc)

3. If you consider x86 architecture, since they're always backward
compatible, any code you generated for an earlier processor should
theoretically run on a newer processor (when the processor in a
specific mode). Hence, a 64-bit processor can run a 32-bit OS / 64-bit
OS. A 64-bit OS can run programs compiled for 64-bit /32-bit mode(by
reverting to a 32-bit mode on the fly). This might not apply to other
architectures though.

C

On Tue, Oct 20, 2009 at 11:02 PM, =E7=9B=8A=E7=89=99 <simonyanix@gmail.=
com> wrote:
>
> On Oct 21, 2009, at 1:39 PM, Siddu wrote:
>
>>
>>
>> On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown <rick.brown.3@gmail.com>
>> wrote:
>> Hi,
>>
>> Firstly, I'm trying to understand what exactly characterizes a
>> procesor or an operating system as 32bit / 64 bit. I've read that it
>> means the "native word size" of a machine. But what exactly is that?
>> Register size? Address bus size? Anything else?
>>
>>
>> When they say its 32/64 bit machine its the capability of the system=
 or
>> processor to process so many bits at once !
>
> I had an understanding of this being how many bits you have to addres=
s your
> RAM.
>
>>
>>
>> Secondly, I'm trying to understand what exactly does a sizeof(int)
>> depend on when we say it is "platform specific". Is it dependent of
>> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or th=
e
>> processor being 32 / 64 bit?
>>
>> its dependent on processor being 32/64 bit
>
> Just did a comparison test but it tells me otherwise. But I'm not sur=
e if
> the test case if correct, can someone improve it?
> On a 64bit CentOS:
> [root@yyan ~]# more test.c
> #include <stdio.h>
>
> int main ()
> {
> =C2=A0 =C2=A0printf ("%d\n", sizeof(int));
> =C2=A0 =C2=A0return 0;
> }
> [root@yyan ~]# gcc test.c
> [root@yyan ~]# ./a.out
> 4
> [root@yyan ~]# uname -a
> Linux yyan.pmlab.com 2.6.18-128.el5 #1 SMP Wed Jan 21 10:41:14 EST 20=
09
> x86_64 x86_64 x86_64 GNU/Linux
> [root@yyan ~]#
>
> On my Leopard: (Hopefully it's a 32bit OS as it shows)
> simonmac:coding yansimon$ cat test.c
> #include <stdio.h>
>
> int main ()
> {
> =C2=A0 =C2=A0printf ("%d\n", sizeof(int));
> =C2=A0 =C2=A0return 0;
> }
> simonmac:coding yansimon$ gcc test.c
> simonmac:coding yansimon$ ./a.out
> 4
> simonmac:coding yansimon$ uname -a
> Darwin simonmac.local 9.8.0 Darwin Kernel Version 9.8.0: Wed Jul 15 1=
6:55:01
> PDT 2009; root:xnu-1228.15.4~1/RELEASE_I386 i386
> simonmac:coding yansimon$
>
>
>>
>> Lastly, How are "sizes" of compiler / OS / processor inter related?
>> Here is my understanding. A 32 bit processor can only be running a 3=
2
>> bit OS.
>>
>> No ... 32 bit OS can run anything <=3D 32 bit
>>
>> A 64 bit processor may run a 32 or a 64 bit OS.
>>
>> yes thats right !
>>
>> A 32 bit
>> compiler genrates code only to be run on a 32 bit OS; ditto for 64
>> bit.
>>
>> Not sure about this let others have their say !
>> Is this right?
>>
>>
>> Please correct me if i am wrong !
>> TIA,
>>
>> Rick
>>
>> --
>> To unsubscribe from this list: send an email with
>> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
>>
>>
>> --
>> Regards,
>> ~Sid~
>> I have never met a man so ignorant that i couldn't learn something f=
rom
>> him
>>
>
> --
> =E7=9B=8A=E7=89=99
>
> http://www.google.com/profiles/simonyanix
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
