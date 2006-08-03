From: "Ritesh Kumar" <ritesh@cs.unc.edu>
Subject: Re: Why "high memory" in x86?
Date: Thu, 3 Aug 2006 02:35:55 -0400
Message-ID: <fc67f8b70608022335q6a96608cv3c4f094c13eba0e9@mail.gmail.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
	 <44D0292C.8000602@solidcore.com>
	 <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>
	 <44D187B3.3070007@solidcore.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_1333_31215949.1154586955982"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <44D187B3.3070007@solidcore.com>
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
To: Rajendra <rpm@solidcore.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

------=_Part_1333_31215949.1154586955982
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 8/3/06, Rajendra <rpm@solidcore.com> wrote:
>
> Ok, it seems like the stuff that i wrote was not quiet clear, let me
> rephrase.
>
>   o When something runs on a processor, processor just understands the
> the privilege
>      level (PL) of the code in case of linux it is either 0 or 3. The
> whole idea of kernel space
>      and user space is an abstraction for understanding and
> implementation.
>
>   o If the processor has paging enabled (which is always true), then it
> requires to have
>      a page table entry for every page that is accessed be it  PL 0 or PL
> 3.
>
>   o Now we need some code to manage to whole of the physical memory and
> suitably add
>      or remove the page table entries and we call such a code as kernel
> code.
>
>   o In case of Linux everything that runs on the processor is always a
> part of something called
>      a process. So, every instruction that runs has to be a part of some
> process (except for interrupts)
>      The "process" is again a unix abstraction of grouping certain
> sequence of instructions.
>
> o We say that the process has access of the whole 4 GB virtual address
> space as the processor
>     can generate that many unique virtual addresses.
>
> o What we say is, the first three GB address will always run at PL3
> while the next 1 GB will
>      be at PL 0.



I couldn't quite understand the previous statement. I hope you mean that
code running in PL3 will never have access to the last 1 GB of address
space.


o The top 1 GB address space is called the kernel and is common for all
> processes.


o When a process is created, the X86 linux creates a page table for
> process's first 3 GB entries
>     as required by the executable running while the last 1 GB is shared
> with all processes
>     as it is the kernel address.
>
> o Since the kernel code has to be always present and can never be paged
> out, so it's entries
>     are pinned i.e. always present in page tables. Hence we identity map
> the pages i.e. virtual
>     address is same as physical address (except for the MSB nibble which
> is  >= 0xC).
>
> o Now the question that comes is, what if the physical memory is more
> then 1 GB, so for
>     such a case we call it as high memory and manage it using temp. page
> table entries.
>
> o One thing we have to note here is that, kernel is the code that
> creates page table entries
>     for user process and sometimes needs to access the pages. Now for
> accessing the pages
>     it needs some entry in the page table that maps the virtual page
> with physical page. For
>     the first 896 MB of physical pages, the entries are identity mapped
> while for the rest we
>     have to first add an entry in page table and mark it as PL0 and then
> only the processor
>     will allow a valid access.
>
> o If we want to access the high memory with user space addresses then
> kernel will
>     have to find the virtual address in the user space which is free and
> map it to the high
>     memory  and such a mapping will be available only for the process as
> the entries are
>     present in it's page table only. (Page tables are per process in
> linux)



Do you mean to say that high memory can be exclusively mapped to just the
user address space? And in such cases the kernel goes through some hoops to
fetch the data from that memory when it requires it (like either temporarily
mapping it in its own address space or copying the data from the userspace
to its memory)? If that's true then my question is answered ;-)
I always thought (though I haven't looked at the mm code) that any userspace
memory is *always* also mapped in the kernel. With highmem, you basically
would remap the parts of memory into kernel space as you need them.

Ritesh


Ritesh Kumar wrote:
>
> > On 8/2/06, *Rajendra* <rpm@solidcore.com <mailto:rpm@solidcore.com>>
> > wrote:
> >
> >     When protection and paging is switched on the processor, it
> >     requires valid
> >     page tables entry for every page that is accessed. Now there are
> >     only 4 GB
> >     addresses that are available, so we have to divide it in such a
> >     way that the
> >     kernel as well as the user can access it. So what we do is we say
> >     that first
> >     three GB address will always be user space address. The page table
> >     entries
> >     of these will keep on changing as the process loads, allocates and
> >     deallocates
> >     memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to
> >     kernel and
> >     it's page table entries are always present in the processor page
> >     tables.
> >     The kernel
> >     address are hence identity mapped i.e .  phy_addr = (virt_addr <<
> >     4) >>
> >     4. Since
> >     the kernel is the program that manages all the resources including
> >     memory, so it needs
> >     access to all the memory that is there in the system, so for
> >     regions of
> >     memory
> >     above 1 GB (physical), we use special mechanism and call it as
> >     high memory.
> >
> >     ~rpm
> >
> >
> >
> > There is a very good thread/article on kerneltrap discussing high
> > memory and the memory split. However, another thought came to my mind
> > while reading this.
> > Why does the kernel really have to map all the memory pages in its 1GB
> > address space? If the memory is (only) mapped in the lower 3GB, the
> > kernel sill can access it right? The kernel just might need to be a
> > little careful when dealing with memory in the lower 3GB space as 1)
> > it might change on the next context switch 2) Its not trusted.
> > The basic advantage would be being able to use all the 4GB of RAM on a
> > 32 bit machine without any HighMem overhead.
> >
> > Ritesh
> >
> >     Dave B. Sharp wrote:
> >
> >     >Yes, but why is only 1GB of memory "available"? The
> >     >whole address space is available to other kernels.
> >     >
> >     >  Dave Sharp
> >     >
> >     >--- Rajendra < rpm@solidcore.com <mailto:rpm@solidcore.com>> wrote:
> >     >
> >     >
> >     >
> >     >>The reason for the high memory is this.
> >     >>
> >     >>   o Linux divides the address space into two parts,
> >     >>user and kernel.
> >     >>   o Kernel gets 1 GB of address space while user
> >     >>gets 3GB virtual
> >     >>address space.
> >     >>   o Kernel needs to access all of the  memory so
> >     >>ideally it needs 4 GB
> >     >>of virtual addresses.
> >     >>   o But since only 1 GB (i.e . beyond 0xc000 0000)
> >     >>is available, so we
> >     >>call the rest as
> >     >>      high memory (approx 3 GB)
> >     >>   o The high memory is accessed using temp. page
> >     >>table entries that map
> >     >>the high memory
> >     >>      areas in kernel address space.
> >     >>   o The high memory region is mostly allocated to
> >     >>the user space programs.
> >     >>
> >     >>hope it answers the question !
> >     >>
> >     >>regd,
> >     >>~rpm
> >     >>Rajat Jain wrote:
> >     >>
> >     >>
> >     >>
> >     >>>Hi list,
> >     >>>
> >     >>>I recently read that the concept of "High Memory"
> >     >>>
> >     >>>
> >     >>was introduced
> >     >>
> >     >>
> >     >>>because certain architectures are capable of
> >     >>>
> >     >>>
> >     >>physically addressing
> >     >>
> >     >>
> >     >>>larger amounts of memory than they can virtually
> >     >>>
> >     >>>
> >     >>address (physical
> >     >>
> >     >>
> >     >>>address space > virtual address space). I also
> >     >>>
> >     >>>
> >     >>read that nowadays
> >     >>
> >     >>
> >     >>>"high Memory" exists only in x86.
> >     >>>
> >     >>>1) Why is virtual memory > 896 MB on x86
> >     >>>
> >     >>>
> >     >>designated as high memory?
> >     >>
> >     >>
> >     >>>AFAIK x86 has 4 GB of virtual address space
> >     >>>
> >     >>>
> >     >>(=physical address space?)
> >     >>
> >     >>
> >     >>>2) Has the "high Memory" concept got anything to
> >     >>>
> >     >>>
> >     >>do with PAE (Page
> >     >>
> >     >>
> >     >>>Address Extention) feature of x86?
> >     >>>
> >     >>>3) Do any other architectures than x86 have the
> >     >>>
> >     >>>
> >     >>concept of high memory?
> >     >>
> >     >>
> >     >>>TIA,
> >     >>>
> >     >>>Rajat
> >     >>>-
> >     >>>To unsubscribe from this list: send the line
> >     >>>
> >     >>>
> >     >>"unsubscribe
> >     >>
> >     >>
> >     >>>linux-newbie" in
> >     >>>the body of a message to majordomo@vger.kernel.org
> >     <mailto:majordomo@vger.kernel.org>
> >     >>>More majordomo info at
> >     >>>
> >     >>>
> >     >>http://vger.kernel.org/majordomo-info.html
> >     <http://vger.kernel.org/majordomo-info.html>
> >     >>
> >     >>
> >     >>>Please read the FAQ at
> >     >>>
> >     >>>
> >     >>http://www.linux-learn.org/faqs
> >     >>
> >     >>
> >     >>-
> >     >>To unsubscribe from this list: send the line
> >     >>"unsubscribe linux-newbie" in
> >     >>the body of a message to majordomo@vger.kernel.org
> >     <mailto:majordomo@vger.kernel.org>
> >     >>More majordomo info at
> >     >>http://vger.kernel.org/majordomo-info.html
> >     >>Please read the FAQ at
> >     >>http://www.linux-learn.org/faqs <http://www.linux-learn.org/faqs>
> >     >>
> >     >>
> >     >>
> >     >
> >     >
> >     >__________________________________________________
> >     >Do You Yahoo!?
> >     >Tired of spam?  Yahoo! Mail has the best spam protection around
> >     > http://mail.yahoo.com
> >     >-
> >     >To unsubscribe from this list: send the line "unsubscribe
> >     linux-newbie" in
> >     >the body of a message to majordomo@vger.kernel.org
> >     <mailto:majordomo@vger.kernel.org>
> >     >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >     >Please read the FAQ at http://www.linux-learn.org/faqs
> >     <http://www.linux-learn.org/faqs>
> >     >
> >     >
> >     >
> >
> >
> >     --
> >     Kernelnewbies: Help each other learn about the Linux kernel.
> >     Archive:       http://mail.nl.linux.org/kernelnewbies/
> >     FAQ:           http://kernelnewbies.org/faq/
> >
> >
>
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>

------=_Part_1333_31215949.1154586955982
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 8/3/06, <b class="gmail_sendername">Rajendra</b> &lt;<a href="mailto:rpm@solidcore.com">rpm@solidcore.com</a>&gt; wrote:<div><span class="gmail_quote"></span><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Ok, it seems like the stuff that i wrote was not quiet clear, let me<br>rephrase.<br><br>&nbsp;&nbsp;o When something runs on a processor, processor just understands the<br>the privilege<br>&nbsp;&nbsp;&nbsp;&nbsp; level (PL) of the code in case of linux it is either 0 or 3. The
<br>whole idea of kernel space<br>&nbsp;&nbsp;&nbsp;&nbsp; and user space is an abstraction for understanding and implementation.<br><br>&nbsp;&nbsp;o If the processor has paging enabled (which is always true), then it<br>requires to have<br>&nbsp;&nbsp;&nbsp;&nbsp; a page table entry for every page that is accessed be it&nbsp;&nbsp;PL 0 or PL 3.
<br><br>&nbsp;&nbsp;o Now we need some code to manage to whole of the physical memory and<br>suitably add<br>&nbsp;&nbsp;&nbsp;&nbsp; or remove the page table entries and we call such a code as kernel<br>code.<br><br>&nbsp;&nbsp;o In case of Linux everything that runs on the processor is always a
<br>part of something called<br>&nbsp;&nbsp;&nbsp;&nbsp; a process. So, every instruction that runs has to be a part of some<br>process (except for interrupts)<br>&nbsp;&nbsp;&nbsp;&nbsp; The &quot;process&quot; is again a unix abstraction of grouping certain<br>
sequence of instructions.<br><br> o We say that the process has access of the whole 4 GB virtual address<br>space as the processor<br>&nbsp;&nbsp;&nbsp;&nbsp;can generate that many unique virtual addresses.<br><br> o What we say is, the first three GB address will always run at PL3
<br>while the next 1 GB will<br>&nbsp;&nbsp;&nbsp;&nbsp; be at PL 0.</blockquote><div><br><br>I couldn't quite understand the previous statement. I hope you mean that code running in PL3 will never have access to the last 1 GB of address space.
<br>&nbsp;</div><br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"> o The top 1 GB address space is called the kernel and is common for all<br>processes.&nbsp;
</blockquote><br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"> o When a process is created, the X86 linux creates a page table for<br>process's first 3 GB entries
<br>&nbsp;&nbsp;&nbsp;&nbsp;as required by the executable running while the last 1 GB is shared<br>with all processes<br>&nbsp;&nbsp;&nbsp;&nbsp;as it is the kernel address.<br><br> o Since the kernel code has to be always present and can never be paged<br>out, so it's entries
<br>&nbsp;&nbsp;&nbsp;&nbsp;are pinned i.e. always present in page tables. Hence we identity map<br>the pages i.e. virtual<br>&nbsp;&nbsp;&nbsp;&nbsp;address is same as physical address (except for the MSB nibble which<br>is&nbsp;&nbsp;&gt;= 0xC).<br><br> o Now the question that comes is, what if the physical memory is more
<br>then 1 GB, so for<br>&nbsp;&nbsp;&nbsp;&nbsp;such a case we call it as high memory and manage it using temp. page<br>table entries.<br><br> o One thing we have to note here is that, kernel is the code that<br>creates page table entries<br>
&nbsp;&nbsp;&nbsp;&nbsp;for user process and sometimes needs to access the pages. Now for<br>accessing the pages<br>&nbsp;&nbsp;&nbsp;&nbsp;it needs some entry in the page table that maps the virtual page<br>with physical page. For<br>&nbsp;&nbsp;&nbsp;&nbsp;the first 896 MB of physical pages, the entries are identity mapped
<br>while for the rest we<br>&nbsp;&nbsp;&nbsp;&nbsp;have to first add an entry in page table and mark it as PL0 and then<br>only the processor<br>&nbsp;&nbsp;&nbsp;&nbsp;will allow a valid access.<br><br> o If we want to access the high memory with user space addresses then
<br>kernel will<br>&nbsp;&nbsp;&nbsp;&nbsp;have to find the virtual address in the user space which is free and<br>map it to the high<br>&nbsp;&nbsp;&nbsp;&nbsp;memory&nbsp;&nbsp;and such a mapping will be available only for the process as<br>the entries are<br>&nbsp;&nbsp;&nbsp;&nbsp;present in it's page table only. (Page tables are per process in
<br>linux)</blockquote><div><br><br>Do you mean to say that high memory can be exclusively mapped to just the user address space? And in such cases the kernel goes through some hoops to fetch the data from that memory when it requires it (like either temporarily mapping it in its own address space or copying the data from the userspace to its memory)? If that's true then my question is answered ;-)
<br>I always thought (though I haven't looked at the mm code) that any userspace memory is *always* also mapped in the kernel. With highmem, you basically would remap the parts of memory into kernel space as you need them.
<br><br>Ritesh<br>&nbsp;</div><br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Ritesh Kumar wrote:<br><br>&gt; On 8/2/06, *Rajendra* &lt;<a href="mailto:rpm@solidcore.com">
rpm@solidcore.com</a> &lt;mailto:<a href="mailto:rpm@solidcore.com">rpm@solidcore.com</a>&gt;&gt;<br>&gt; wrote:<br>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; When protection and paging is switched on the processor, it<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; requires valid<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; page tables entry for every page that is accessed. Now there are<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; only 4 GB<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; addresses that are available, so we have to divide it in such a<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; way that the<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; kernel as well as the user can access it. So what we do is we say
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; that first<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; three GB address will always be user space address. The page table<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; entries<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; of these will keep on changing as the process loads, allocates and<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; deallocates
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; kernel and<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; it's page table entries are always present in the processor page<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; tables.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; The kernel<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; address are hence identity mapped i.e .&nbsp;&nbsp;phy_addr = (virt_addr &lt;&lt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; 4) &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; 4. Since<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; the kernel is the program that manages all the resources including<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; memory, so it needs
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; access to all the memory that is there in the system, so for<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; regions of<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; memory<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; above 1 GB (physical), we use special mechanism and call it as<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; high memory.<br>&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; ~rpm<br>&gt;<br>&gt;<br>&gt;<br>&gt; There is a very good thread/article on kerneltrap discussing high<br>&gt; memory and the memory split. However, another thought came to my mind<br>&gt; while reading this.
<br>&gt; Why does the kernel really have to map all the memory pages in its 1GB<br>&gt; address space? If the memory is (only) mapped in the lower 3GB, the<br>&gt; kernel sill can access it right? The kernel just might need to be a
<br>&gt; little careful when dealing with memory in the lower 3GB space as 1)<br>&gt; it might change on the next context switch 2) Its not trusted.<br>&gt; The basic advantage would be being able to use all the 4GB of RAM on a
<br>&gt; 32 bit machine without any HighMem overhead.<br>&gt;<br>&gt; Ritesh<br>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Dave B. Sharp wrote:<br>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;Yes, but why is only 1GB of memory &quot;available&quot;? The<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;whole address space is available to other kernels.
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;Dave Sharp<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;--- Rajendra &lt; <a href="mailto:rpm@solidcore.com">rpm@solidcore.com</a> &lt;mailto:<a href="mailto:rpm@solidcore.com">rpm@solidcore.com</a>
&gt;&gt; wrote:<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;The reason for the high memory is this.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o Linux divides the address space into two parts,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;user and kernel.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o Kernel gets 1 GB of address space while user<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;gets 3GB virtual<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;address space.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o Kernel needs to access all of the&nbsp;&nbsp;memory so
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;ideally it needs 4 GB<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;of virtual addresses.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o But since only 1 GB (i.e . beyond 0xc000 0000)<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;is available, so we<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;call the rest as
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;high memory (approx 3 GB)<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o The high memory is accessed using temp. page<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;table entries that map<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;the high memory<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;areas in kernel address space.
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&nbsp;&nbsp; o The high memory region is mostly allocated to<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;the user space programs.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;hope it answers the question !<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;regd,
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;~rpm<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;Rajat Jain wrote:<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;Hi list,<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;I recently read that the concept of &quot;High Memory&quot;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;was introduced<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;because certain architectures are capable of<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;physically addressing<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;larger amounts of memory than they can virtually<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;address (physical<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;address space &gt; virtual address space). I also<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;read that nowadays
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;&quot;high Memory&quot; exists only in x86.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;1) Why is virtual memory &gt; 896 MB on x86<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;designated as high memory?<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;AFAIK x86 has 4 GB of virtual address space<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;(=physical address space?)<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;2) Has the &quot;high Memory&quot; concept got anything to<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;do with PAE (Page<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;Address Extention) feature of x86?<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;3) Do any other architectures than x86 have the
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;concept of high memory?<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;TIA,<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;Rajat<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;-<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;To unsubscribe from this list: send the line<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&quot;unsubscribe<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;linux-newbie&quot; in<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;the body of a message to <a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;mailto:<a href="mailto:majordomo@vger.kernel.org">
majordomo@vger.kernel.org</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;More majordomo info at<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html
</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;Please read the FAQ at<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;-<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;To unsubscribe from this list: send the line
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;&quot;unsubscribe linux-newbie&quot; in<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;the body of a message to <a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;mailto:<a href="mailto:majordomo@vger.kernel.org">
majordomo@vger.kernel.org</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;More majordomo info at<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;Please read the FAQ at
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs</a> &lt;<a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;__________________________________________________<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;Do You Yahoo!?<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;Tired of spam?&nbsp;&nbsp;Yahoo! Mail has the best spam protection around
<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; <a href="http://mail.yahoo.com">http://mail.yahoo.com</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;-<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;To unsubscribe from this list: send the line &quot;unsubscribe<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; linux-newbie&quot; in<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;the body of a message to 
<a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;mailto:<a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;More majordomo info at&nbsp;&nbsp;<a href="http://vger.kernel.org/majordomo-info.html">
http://vger.kernel.org/majordomo-info.html</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;Please read the FAQ at <a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href="http://www.linux-learn.org/faqs">
http://www.linux-learn.org/faqs</a>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br>&gt;<br>&gt;<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; --<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Kernelnewbies: Help each other learn about the Linux kernel.<br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Archive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.org/kernelnewbies/</a><br>&gt;&nbsp;&nbsp;&nbsp;&nbsp; FAQ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://kernelnewbies.org/faq/">http://kernelnewbies.org/faq/</a><br>&gt;<br>&gt;<br><br><br>
--<br>Kernelnewbies: Help each other learn about the Linux kernel.<br>Archive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.org/kernelnewbies/</a><br>FAQ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://kernelnewbies.org/faq/">
http://kernelnewbies.org/faq/</a><br><br></blockquote></div><br>

------=_Part_1333_31215949.1154586955982--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

