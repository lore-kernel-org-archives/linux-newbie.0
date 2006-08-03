From: Rajendra <rpm@solidcore.com>
Subject: Re: Why "high memory" in x86?
Date: Thu, 03 Aug 2006 16:22:30 +0530
Message-ID: <44D1D56E.2080100@solidcore.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>	 <44D0292C.8000602@solidcore.com>	 <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>	 <44D187B3.3070007@solidcore.com> <b115cb5f0608022259w40c3f63fr4383e7f9f7873bc4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <b115cb5f0608022259w40c3f63fr4383e7f9f7873bc4@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Rajat Jain wrote:

> On 8/3/06, Rajendra <rpm@solidcore.com> wrote:
>
>> Ok, it seems like the stuff that i wrote was not quiet clear, let me
>> rephrase.
>>
>>  o When something runs on a processor, processor just understands the
>> the privilege
>>     level (PL) of the code in case of linux it is either 0 or 3. The
>> whole idea of kernel space
>>     and user space is an abstraction for understanding and 
>> implementation.
>>
>>  o If the processor has paging enabled (which is always true), then it
>> requires to have
>>     a page table entry for every page that is accessed be it  PL 0 or 
>> PL 3.
>>
>>  o Now we need some code to manage to whole of the physical memory and
>> suitably add
>>     or remove the page table entries and we call such a code as kernel
>> code.
>>
>>  o In case of Linux everything that runs on the processor is always a
>> part of something called
>>     a process. So, every instruction that runs has to be a part of some
>> process (except for interrupts)
>>     The "process" is again a unix abstraction of grouping certain
>> sequence of instructions.
>>
>>  o We say that the process has access of the whole 4 GB virtual address
>> space as the processor
>>    can generate that many unique virtual addresses.
>>
>>  o What we say is, the first three GB address will always run at PL3
>> while the next 1 GB will
>>     be at PL 0.
>>
>>  o The top 1 GB address space is called the kernel and is common for all
>> processes.
>>
>>  o When a process is created, the X86 linux creates a page table for
>> process's first 3 GB entries
>>    as required by the executable running while the last 1 GB is shared
>> with all processes
>>    as it is the kernel address.
>>
>>  o Since the kernel code has to be always present and can never be paged
>> out, so it's entries
>>    are pinned i.e. always present in page tables. Hence we identity map
>> the pages i.e. virtual
>>    address is same as physical address (except for the MSB nibble which
>> is  >= 0xC).
>>
>>  o Now the question that comes is, what if the physical memory is more
>> then 1 GB, so for
>>    such a case we call it as high memory and manage it using temp. page
>> table entries.
>>
>>  o One thing we have to note here is that, kernel is the code that
>> creates page table entries
>>    for user process and sometimes needs to access the pages. Now for
>> accessing the pages
>>    it needs some entry in the page table that maps the virtual page
>> with physical page. For
>>    the first 896 MB of physical pages, the entries are identity mapped
>> while for the rest we
>>    have to first add an entry in page table and mark it as PL0 and then
>> only the processor
>>    will allow a valid access.
>>
>>  o If we want to access the high memory with user space addresses then
>> kernel will
>>    have to find the virtual address in the user space which is free and
>> map it to the high
>>    memory  and such a mapping will be available only for the process as
>> the entries are
>>    present in it's page table only. (Page tables are per process in
>> linux)
>>
>
> Firstly, Thanks a TONN for the above mail (surely clarified all my
> doubts)! But just one query.
>
> If the kernel wants to access the high memory, it will map it into the
> virtual address space of the KERNEL (3GB -> 4GB), right? Now at this
> point, what will happen to the original (identity) mapping of that
> kernel virtual memory address (to which it has now mapped the high
> memory)?
>
> TIA,
>
> Rajat
>
That is why kernel does not access the whole 1 GB, it's only 896MB, the rest
of the 128MB is used to create temp page table entries for the high mem.
e.g. if you have 2 GB of ram, then the 896 MB will be identity mapped while
for the rest 1GB + 128MB we will use the 128 MB kernel address space for
accessing the "high memory". The 896 MB limit comes only if you have 
compiled the
kernel with CONFIG_HIGHMEM option enabled else it is assumed that
you do not have high memory in you system.

regards,
~rpm

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

