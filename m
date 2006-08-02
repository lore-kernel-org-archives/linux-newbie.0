From: "Ritesh Kumar" <ritesh@cs.unc.edu>
Subject: Re: Why "high memory" in x86?
Date: Wed, 2 Aug 2006 12:37:06 -0400
Message-ID: <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
	 <44D0292C.8000602@solidcore.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_10471_31862754.1154536626980"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <44D0292C.8000602@solidcore.com>
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

------=_Part_10471_31862754.1154536626980
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 8/2/06, Rajendra <rpm@solidcore.com> wrote:
>
> When protection and paging is switched on the processor, it requires valid
> page tables entry for every page that is accessed. Now there are only 4 GB
> addresses that are available, so we have to divide it in such a way that
> the
> kernel as well as the user can access it. So what we do is we say that
> first
> three GB address will always be user space address. The page table entries
> of these will keep on changing as the process loads, allocates and
> deallocates
> memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to kernel and
> it's page table entries are always present in the processor page tables.
> The kernel
> address are hence identity mapped i.e.  phy_addr = (virt_addr << 4) >>
> 4. Since
> the kernel is the program that manages all the resources including
> memory, so it needs
> access to all the memory that is there in the system, so for regions of
> memory
> above 1 GB (physical), we use special mechanism and call it as high
> memory.
>
> ~rpm



There is a very good thread/article on kerneltrap discussing high memory and
the memory split. However, another thought came to my mind while reading
this.
Why does the kernel really have to map all the memory pages in its 1GB
address space? If the memory is (only) mapped in the lower 3GB, the kernel
sill can access it right? The kernel just might need to be a little careful
when dealing with memory in the lower 3GB space as 1) it might change on the
next context switch 2) Its not trusted.
The basic advantage would be being able to use all the 4GB of RAM on a 32
bit machine without any HighMem overhead.

Ritesh

> Dave B. Sharp wrote:
>
> >Yes, but why is only 1GB of memory "available"? The
> >whole address space is available to other kernels.
> >
> >  Dave Sharp
> >
> >--- Rajendra <rpm@solidcore.com> wrote:
> >
> >
> >
> >>The reason for the high memory is this.
> >>
> >>   o Linux divides the address space into two parts,
> >>user and kernel.
> >>   o Kernel gets 1 GB of address space while user
> >>gets 3GB virtual
> >>address space.
> >>   o Kernel needs to access all of the  memory so
> >>ideally it needs 4 GB
> >>of virtual addresses.
> >>   o But since only 1 GB (i.e. beyond 0xc000 0000)
> >>is available, so we
> >>call the rest as
> >>      high memory (approx 3 GB)
> >>   o The high memory is accessed using temp. page
> >>table entries that map
> >>the high memory
> >>      areas in kernel address space.
> >>   o The high memory region is mostly allocated to
> >>the user space programs.
> >>
> >>hope it answers the question !
> >>
> >>regd,
> >>~rpm
> >>Rajat Jain wrote:
> >>
> >>
> >>
> >>>Hi list,
> >>>
> >>>I recently read that the concept of "High Memory"
> >>>
> >>>
> >>was introduced
> >>
> >>
> >>>because certain architectures are capable of
> >>>
> >>>
> >>physically addressing
> >>
> >>
> >>>larger amounts of memory than they can virtually
> >>>
> >>>
> >>address (physical
> >>
> >>
> >>>address space > virtual address space). I also
> >>>
> >>>
> >>read that nowadays
> >>
> >>
> >>>"high Memory" exists only in x86.
> >>>
> >>>1) Why is virtual memory > 896 MB on x86
> >>>
> >>>
> >>designated as high memory?
> >>
> >>
> >>>AFAIK x86 has 4 GB of virtual address space
> >>>
> >>>
> >>(=physical address space?)
> >>
> >>
> >>>2) Has the "high Memory" concept got anything to
> >>>
> >>>
> >>do with PAE (Page
> >>
> >>
> >>>Address Extention) feature of x86?
> >>>
> >>>3) Do any other architectures than x86 have the
> >>>
> >>>
> >>concept of high memory?
> >>
> >>
> >>>TIA,
> >>>
> >>>Rajat
> >>>-
> >>>To unsubscribe from this list: send the line
> >>>
> >>>
> >>"unsubscribe
> >>
> >>
> >>>linux-newbie" in
> >>>the body of a message to majordomo@vger.kernel.org
> >>>More majordomo info at
> >>>
> >>>
> >>http://vger.kernel.org/majordomo-info.html
> >>
> >>
> >>>Please read the FAQ at
> >>>
> >>>
> >>http://www.linux-learn.org/faqs
> >>
> >>
> >>-
> >>To unsubscribe from this list: send the line
> >>"unsubscribe linux-newbie" in
> >>the body of a message to majordomo@vger.kernel.org
> >>More majordomo info at
> >>http://vger.kernel.org/majordomo-info.html
> >>Please read the FAQ at
> >>http://www.linux-learn.org/faqs
> >>
> >>
> >>
> >
> >
> >__________________________________________________
> >Do You Yahoo!?
> >Tired of spam?  Yahoo! Mail has the best spam protection around
> >http://mail.yahoo.com
> >-
> >To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >Please read the FAQ at http://www.linux-learn.org/faqs
> >
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

------=_Part_10471_31862754.1154536626980
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 8/2/06, <b class="gmail_sendername">Rajendra</b> &lt;<a href="mailto:rpm@solidcore.com">rpm@solidcore.com</a>&gt; wrote:<div><span class="gmail_quote"></span><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
When protection and paging is switched on the processor, it requires valid<br>page tables entry for every page that is accessed. Now there are only 4 GB<br>addresses that are available, so we have to divide it in such a way that the
<br>kernel as well as the user can access it. So what we do is we say that first<br>three GB address will always be user space address. The page table entries<br>of these will keep on changing as the process loads, allocates and
<br>deallocates<br>memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to kernel and<br>it's page table entries are always present in the processor page tables.<br>The kernel<br>address are hence identity mapped i.e
.&nbsp;&nbsp;phy_addr = (virt_addr &lt;&lt; 4) &gt;&gt;<br>4. Since<br>the kernel is the program that manages all the resources including<br>memory, so it needs<br>access to all the memory that is there in the system, so for regions of
<br>memory<br>above 1 GB (physical), we use special mechanism and call it as high memory.<br><br>~rpm</blockquote><div><br><br>There is a very good thread/article on kerneltrap discussing high memory and the memory split. However, another thought came to my mind while reading this.
<br>Why does the kernel really have to map all the memory pages in its 1GB address space? If the memory is (only) mapped in the lower 3GB, the kernel sill can access it right? The kernel just might need to be a little careful when dealing with memory in the lower 3GB space as 1) it might change on the next context switch 2) Its not trusted.
<br></div>The basic advantage would be being able to use all the 4GB of RAM on a 32 bit machine without any HighMem overhead.<br><br>Ritesh<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Dave B. Sharp wrote:<br><br>&gt;Yes, but why is only 1GB of memory &quot;available&quot;? The<br>&gt;whole address space is available to other kernels.<br>&gt;<br>&gt;&nbsp;&nbsp;Dave Sharp<br>&gt;<br>&gt;--- Rajendra &lt;<a href="mailto:rpm@solidcore.com">
rpm@solidcore.com</a>&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt;&gt;The reason for the high memory is this.<br>&gt;&gt;<br>&gt;&gt;&nbsp;&nbsp; o Linux divides the address space into two parts,<br>&gt;&gt;user and kernel.<br>&gt;&gt;&nbsp;&nbsp; o Kernel gets 1 GB of address space while user
<br>&gt;&gt;gets 3GB virtual<br>&gt;&gt;address space.<br>&gt;&gt;&nbsp;&nbsp; o Kernel needs to access all of the&nbsp;&nbsp;memory so<br>&gt;&gt;ideally it needs 4 GB<br>&gt;&gt;of virtual addresses.<br>&gt;&gt;&nbsp;&nbsp; o But since only 1 GB (i.e
. beyond 0xc000 0000)<br>&gt;&gt;is available, so we<br>&gt;&gt;call the rest as<br>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;high memory (approx 3 GB)<br>&gt;&gt;&nbsp;&nbsp; o The high memory is accessed using temp. page<br>&gt;&gt;table entries that map<br>
&gt;&gt;the high memory<br>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;areas in kernel address space.<br>&gt;&gt;&nbsp;&nbsp; o The high memory region is mostly allocated to<br>&gt;&gt;the user space programs.<br>&gt;&gt;<br>&gt;&gt;hope it answers the question !
<br>&gt;&gt;<br>&gt;&gt;regd,<br>&gt;&gt;~rpm<br>&gt;&gt;Rajat Jain wrote:<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;Hi list,<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;I recently read that the concept of &quot;High Memory&quot;
<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;was introduced<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;because certain architectures are capable of<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;physically addressing<br>&gt;&gt;<br>
&gt;&gt;<br>&gt;&gt;&gt;larger amounts of memory than they can virtually<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;address (physical<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;address space &gt; virtual address space). I also
<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;read that nowadays<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;&quot;high Memory&quot; exists only in x86.<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;1) Why is virtual memory &gt; 896 MB on x86<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;designated as high memory?<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;AFAIK x86 has 4 GB of virtual address space<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;(=physical address space?)<br>
&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;2) Has the &quot;high Memory&quot; concept got anything to<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;do with PAE (Page<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;Address Extention) feature of x86?
<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;3) Do any other architectures than x86 have the<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;concept of high memory?<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;TIA,<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;Rajat
<br>&gt;&gt;&gt;-<br>&gt;&gt;&gt;To unsubscribe from this list: send the line<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;&quot;unsubscribe<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;linux-newbie&quot; in<br>&gt;&gt;&gt;the body of a message to 
<a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a><br>&gt;&gt;&gt;More majordomo info at<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html
</a><br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;&gt;Please read the FAQ at<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&gt;<a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs</a><br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;-
<br>&gt;&gt;To unsubscribe from this list: send the line<br>&gt;&gt;&quot;unsubscribe linux-newbie&quot; in<br>&gt;&gt;the body of a message to <a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org</a><br>&gt;&gt;More majordomo info at
<br>&gt;&gt;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html</a><br>&gt;&gt;Please read the FAQ at<br>&gt;&gt;<a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs
</a><br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;<br>&gt;<br>&gt;__________________________________________________<br>&gt;Do You Yahoo!?<br>&gt;Tired of spam?&nbsp;&nbsp;Yahoo! Mail has the best spam protection around<br>&gt;<a href="http://mail.yahoo.com">
http://mail.yahoo.com</a><br>&gt;-<br>&gt;To unsubscribe from this list: send the line &quot;unsubscribe linux-newbie&quot; in<br>&gt;the body of a message to <a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org
</a><br>&gt;More majordomo info at&nbsp;&nbsp;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html</a><br>&gt;Please read the FAQ at <a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs
</a><br>&gt;<br>&gt;<br>&gt;<br><br><br>--<br>Kernelnewbies: Help each other learn about the Linux kernel.<br>Archive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.org/kernelnewbies/</a><br>
FAQ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://kernelnewbies.org/faq/">http://kernelnewbies.org/faq/</a><br><br></blockquote></div><br>

------=_Part_10471_31862754.1154536626980--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

