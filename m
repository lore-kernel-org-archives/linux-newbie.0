From: Jamie Lokier <jamie@shareable.org>
Subject: Re: Paging and system calls
Date: Mon, 28 Apr 2003 14:14:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030428131418.GB8906@mail.jlokier.co.uk>
References: <20030428124808.M37677@bilmuh.ege.edu.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030428124808.M37677@bilmuh.ege.edu.tr>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kasim Sinan Yildirim <yildirim@bilmuh.ege.edu.tr>
Cc: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Kasim Sinan Yildirim wrote:
> ?n my operating system, when a system call occurs, the user level code jumps 
> to system level code by changing its selectors to KernelCS and KernelDS. But 
> at this point, the cr3 register still points to the page directory of the 
> user process. So, the actual code that is pointed by kernel level page 
> directory is not equal to the user level page directory entry. As a result , 
> the system fails.
> 
> How this problem is solved in Linux? Have you got any solution to my problem?

In Linux, there is no separate kernel page directory.  The the upper
1GB (configurable) of each process address space holds the same kernel
level page mappings in _all_ page directories, so process context
switches don't change those mappings.

The exception is vmalloc() kernel mappings.  For these the kernel area
of each process address spaceis filled in lazily by the page fault
handler.  Once filled, these also have the same values in all contexts.

This is why user space can only address 0-3GB of address space in
Linux.  It has the huge benefits that (a) system calls and interrupts
don't need to switch page directories and incur TLB flush costs; (b)
the kernel code can easily read and write user space.

It gets a bit more complex when dealing with more than about 1GB RAM
(actually the threshold is some imprecise 10's of meg below that.
Then PAE page tables are used instead, and you have kmap() mappings in
the kernel area.  But you probably aren't using PAE in your operating
system.

-- Jamie


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
