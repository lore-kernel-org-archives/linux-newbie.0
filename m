From: Jim Nelson <james4765@verizon.net>
Subject: Re: Query regarding Copy-on-write
Date: Sat, 20 Nov 2004 09:17:32 -0500
Message-ID: <419F51FC.2030101@verizon.net>
References: <1100947162.4038.43.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1100947162.4038.43.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Jagadeesh Bhaskar P wrote:
> Hi,
> 
>  When a process forks, every resource of the parent, including the
> virtual memory is copied to the child process. The copying of VM uses
> copy-on-write(COW). I know that COW comes when a write request comes,
> and then the copy is made. Now my query follows:
> 
> How will the copy be distributed. Whether giving the child process a new
> copy of VM be permanent or whether they will be merged anywhere? And
> shouldn't the operations/updations by one process be visible to the
> other which inherited the copy of the same VM?
> 
> How can this work? Can someone please help me on this regard?
> 
> 

Standard *nix forking does not allow that kind of interaction between the data of 
parent and child processes.  Pipes are designed for that kind of interprocess 
communication.

POSIX threads do run in the same address space - it requires a bit more 
programming effort, but it seems to fit what you're asking for a little better.

http://www.cs.nmsu.edu/~jcook/Tools/pthreads/pthreads.html

Is a decent overview on pthreads.  I haven't used them - nothing I've written 
needed that kind of interactivity.

Not every computer system can run pthreads on Linux - i686 or higher, SPARC, and 
SPARC64 are the only ones I *know* have pthreads working (i. e. I own the machine 
and pthreaded Linux apps work on them).  i586 and earlier PC's lack some 
fundamental capabilities necessary to make threading work.

Anyone else care to take it from here?

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
