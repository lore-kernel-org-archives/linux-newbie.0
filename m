From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: 32 bit processors / 64 bit processors
Date: Fri, 23 Oct 2009 11:53:05 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0D593EE1@GDCMX01.igglobal.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com> <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com> <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com> <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B0D593D45@GDCMX01.igglobal.com> <e291fbf10910222220o2999f34cv2fb0033194823cf1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <e291fbf10910222220o2999f34cv2fb0033194823cf1@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: C <a.la.kaarta@gmail.com>
Cc: simonyanix@gmail.com, Siddu <siddu.sjce@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org


Hi,

----Original Message----
From: C [mailto:a.la.kaarta@gmail.com]
Sent: Friday, October 23, 2009 10:51 AM
To: Rajat Jain
Cc: simonyanix@gmail.com; Siddu; Rick Brown; kernelnewbies;
linux-newbie@vger.kernel.org
Subject: Re: 32 bit processors / 64 bit processors

> PAE (Physical Address Extension) expands the _physical_ address space
> to > 32 bits, but the _virtual_ address space stays the same at
> 32-bits, and the virtual address size is what I mentioned as qualifies
> the processor as 32-bit or 64-bit.

Well, IMHO the processor does not decide or even know the size of
virtual address space. It purely depends on the software (OS in this
case) that runs on it. Consider all of the following is possible on the
same 32 bit processor:

1) User may run a firmware on the processor that gives a 1-1 mapping
from virtual to physical (thus making virtual address space equal to
physical address space). 

2) Users may be running different OS(s) that give different amount of
virtual address space to use.

What am I missing?

Thanks,

Rajat


> 
> 1. Addressable physical memory / physical address size does not decide
> whether a processor is 32-bit / 64-bit, there is no processor (AFAIK)
> which can address 64 bits of physical memory. I suppose sizeof(void*)
> gives you the size of the _virtual_ address, so yes, I suppose that
> should be 64 bits on a 64-bit processor (and using a 64-bit compiler)
> 2. Register size does not decide whether a processor is 32-bit /
> 64-bit. 
> 
> C
> 
> On Thu, Oct 22, 2009 at 10:05 PM, Rajat Jain
> <Rajat.Jain@infogain.com> wrote:
>> 
>> Hi,
>> 
>>> 1. The size of the processor's internal address bus (virtual address
>>> space) is what qualifies it as a 32-bit / 64-bit processor.
>> 
>> Well, in that sense, isn't Pentium a "36-bit" processor (since it
>> gives the option of PAE to use 64 GB of memory - it must be having
>> atleast 36 address lines)? 
>> 
>> On this topic and in this thread, we have had following responses to
>> the question on what is called a 32-bit or 64-bit processor:
>> 
>> 1) Addressable Physical memory (=sizeof(void*))
>> 2) Register Size (=instruction size)
>> 
>> Are the above two independent of each other? If yes, then how do we
>> deine a processor as 32-bit / 64-bit?
>> 
>> Thanks,
>> 
>> Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
