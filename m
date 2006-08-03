From: Rajendra <rpm@solidcore.com>
Subject: Re: Why "high memory" in x86?
Date: Thu, 03 Aug 2006 10:50:51 +0530
Message-ID: <44D187B3.3070007@solidcore.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>	 <44D0292C.8000602@solidcore.com> <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Ok, it seems like the stuff that i wrote was not quiet clear, let me 
rephrase.

  o When something runs on a processor, processor just understands the 
the privilege
     level (PL) of the code in case of linux it is either 0 or 3. The 
whole idea of kernel space
     and user space is an abstraction for understanding and implementation.

  o If the processor has paging enabled (which is always true), then it 
requires to have
     a page table entry for every page that is accessed be it  PL 0 or PL 3.

  o Now we need some code to manage to whole of the physical memory and 
suitably add
     or remove the page table entries and we call such a code as kernel 
code.

  o In case of Linux everything that runs on the processor is always a 
part of something called
     a process. So, every instruction that runs has to be a part of some 
process (except for interrupts)
     The "process" is again a unix abstraction of grouping certain 
sequence of instructions.
 
 o We say that the process has access of the whole 4 GB virtual address 
space as the processor
    can generate that many unique virtual addresses.

 o What we say is, the first three GB address will always run at PL3 
while the next 1 GB will
     be at PL 0.

 o The top 1 GB address space is called the kernel and is common for all 
processes.

 o When a process is created, the X86 linux creates a page table for 
process's first 3 GB entries
    as required by the executable running while the last 1 GB is shared 
with all processes
    as it is the kernel address.

 o Since the kernel code has to be always present and can never be paged 
out, so it's entries
    are pinned i.e. always present in page tables. Hence we identity map 
the pages i.e. virtual
    address is same as physical address (except for the MSB nibble which 
is  >= 0xC).

 o Now the question that comes is, what if the physical memory is more 
then 1 GB, so for
    such a case we call it as high memory and manage it using temp. page 
table entries.

 o One thing we have to note here is that, kernel is the code that 
creates page table entries
    for user process and sometimes needs to access the pages. Now for 
accessing the pages
    it needs some entry in the page table that maps the virtual page 
with physical page. For
    the first 896 MB of physical pages, the entries are identity mapped 
while for the rest we
    have to first add an entry in page table and mark it as PL0 and then 
only the processor
    will allow a valid access.

 o If we want to access the high memory with user space addresses then 
kernel will
    have to find the virtual address in the user space which is free and 
map it to the high
    memory  and such a mapping will be available only for the process as 
the entries are
    present in it's page table only. (Page tables are per process in 
linux)  

    

Ritesh Kumar wrote:

> On 8/2/06, *Rajendra* <rpm@solidcore.com <mailto:rpm@solidcore.com>> 
> wrote:
>
>     When protection and paging is switched on the processor, it
>     requires valid
>     page tables entry for every page that is accessed. Now there are
>     only 4 GB
>     addresses that are available, so we have to divide it in such a
>     way that the
>     kernel as well as the user can access it. So what we do is we say
>     that first
>     three GB address will always be user space address. The page table
>     entries
>     of these will keep on changing as the process loads, allocates and
>     deallocates
>     memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to
>     kernel and
>     it's page table entries are always present in the processor page
>     tables.
>     The kernel
>     address are hence identity mapped i.e .  phy_addr = (virt_addr <<
>     4) >>
>     4. Since
>     the kernel is the program that manages all the resources including
>     memory, so it needs
>     access to all the memory that is there in the system, so for
>     regions of
>     memory
>     above 1 GB (physical), we use special mechanism and call it as
>     high memory.
>
>     ~rpm
>
>
>
> There is a very good thread/article on kerneltrap discussing high 
> memory and the memory split. However, another thought came to my mind 
> while reading this.
> Why does the kernel really have to map all the memory pages in its 1GB 
> address space? If the memory is (only) mapped in the lower 3GB, the 
> kernel sill can access it right? The kernel just might need to be a 
> little careful when dealing with memory in the lower 3GB space as 1) 
> it might change on the next context switch 2) Its not trusted.
> The basic advantage would be being able to use all the 4GB of RAM on a 
> 32 bit machine without any HighMem overhead.
>
> Ritesh
>
>     Dave B. Sharp wrote:
>
>     >Yes, but why is only 1GB of memory "available"? The
>     >whole address space is available to other kernels.
>     >
>     >  Dave Sharp
>     >
>     >--- Rajendra < rpm@solidcore.com <mailto:rpm@solidcore.com>> wrote:
>     >
>     >
>     >
>     >>The reason for the high memory is this.
>     >>
>     >>   o Linux divides the address space into two parts,
>     >>user and kernel.
>     >>   o Kernel gets 1 GB of address space while user
>     >>gets 3GB virtual
>     >>address space.
>     >>   o Kernel needs to access all of the  memory so
>     >>ideally it needs 4 GB
>     >>of virtual addresses.
>     >>   o But since only 1 GB (i.e . beyond 0xc000 0000)
>     >>is available, so we
>     >>call the rest as
>     >>      high memory (approx 3 GB)
>     >>   o The high memory is accessed using temp. page
>     >>table entries that map
>     >>the high memory
>     >>      areas in kernel address space.
>     >>   o The high memory region is mostly allocated to
>     >>the user space programs.
>     >>
>     >>hope it answers the question !
>     >>
>     >>regd,
>     >>~rpm
>     >>Rajat Jain wrote:
>     >>
>     >>
>     >>
>     >>>Hi list,
>     >>>
>     >>>I recently read that the concept of "High Memory"
>     >>>
>     >>>
>     >>was introduced
>     >>
>     >>
>     >>>because certain architectures are capable of
>     >>>
>     >>>
>     >>physically addressing
>     >>
>     >>
>     >>>larger amounts of memory than they can virtually
>     >>>
>     >>>
>     >>address (physical
>     >>
>     >>
>     >>>address space > virtual address space). I also
>     >>>
>     >>>
>     >>read that nowadays
>     >>
>     >>
>     >>>"high Memory" exists only in x86.
>     >>>
>     >>>1) Why is virtual memory > 896 MB on x86
>     >>>
>     >>>
>     >>designated as high memory?
>     >>
>     >>
>     >>>AFAIK x86 has 4 GB of virtual address space
>     >>>
>     >>>
>     >>(=physical address space?)
>     >>
>     >>
>     >>>2) Has the "high Memory" concept got anything to
>     >>>
>     >>>
>     >>do with PAE (Page
>     >>
>     >>
>     >>>Address Extention) feature of x86?
>     >>>
>     >>>3) Do any other architectures than x86 have the
>     >>>
>     >>>
>     >>concept of high memory?
>     >>
>     >>
>     >>>TIA,
>     >>>
>     >>>Rajat
>     >>>-
>     >>>To unsubscribe from this list: send the line
>     >>>
>     >>>
>     >>"unsubscribe
>     >>
>     >>
>     >>>linux-newbie" in
>     >>>the body of a message to majordomo@vger.kernel.org
>     <mailto:majordomo@vger.kernel.org>
>     >>>More majordomo info at
>     >>>
>     >>>
>     >>http://vger.kernel.org/majordomo-info.html
>     <http://vger.kernel.org/majordomo-info.html>
>     >>
>     >>
>     >>>Please read the FAQ at
>     >>>
>     >>>
>     >>http://www.linux-learn.org/faqs
>     >>
>     >>
>     >>-
>     >>To unsubscribe from this list: send the line
>     >>"unsubscribe linux-newbie" in
>     >>the body of a message to majordomo@vger.kernel.org
>     <mailto:majordomo@vger.kernel.org>
>     >>More majordomo info at
>     >>http://vger.kernel.org/majordomo-info.html
>     >>Please read the FAQ at
>     >>http://www.linux-learn.org/faqs <http://www.linux-learn.org/faqs>
>     >>
>     >>
>     >>
>     >
>     >
>     >__________________________________________________
>     >Do You Yahoo!?
>     >Tired of spam?  Yahoo! Mail has the best spam protection around
>     > http://mail.yahoo.com
>     >-
>     >To unsubscribe from this list: send the line "unsubscribe
>     linux-newbie" in
>     >the body of a message to majordomo@vger.kernel.org
>     <mailto:majordomo@vger.kernel.org>
>     >More majordomo info at  http://vger.kernel.org/majordomo-info.html
>     >Please read the FAQ at http://www.linux-learn.org/faqs
>     <http://www.linux-learn.org/faqs>
>     >
>     >
>     >
>
>
>     --
>     Kernelnewbies: Help each other learn about the Linux kernel.
>     Archive:       http://mail.nl.linux.org/kernelnewbies/
>     FAQ:           http://kernelnewbies.org/faq/
>
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
