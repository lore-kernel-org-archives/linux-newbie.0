From: <stackframe@charter.net>
Subject: No copy on write system call?
Date: Mon, 21 Mar 2005 22:38:51 -0600
Message-ID: <3rr9ri$pii5sp@mxip18a.cluster1.charter.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

How is it that a write (man 2 write) can be passed a buffer 
that exceeds most of the physical and virtual memory on a 
system and work successfully?

I wrote a simple program that allocates a large buffer on 
the heap, zeros the space and then calls write 
(man 2 write).  Even though the buffer is almost as large 
as physical memory + page space the call completes without 
error.  In my example I allocated 705MB on a system that 
has 256MB physical and 512MB virtual.  When it completes 
there is a 705MB file on disk as expected.

So is it in the case of the sys_write that the memory is 
accessed and allowed to page fault as needed while running 
in the context of the kernel?  Most of the kernel books 
talk about using copy_from_user on system calls before
using memory from the user.  Strace shows one write 
call with the entire length.

So what is going on to allow this to happen?

Thanks,
Tony

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
