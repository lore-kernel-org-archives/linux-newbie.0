From: Alex LIU <alex.liu@st.com>
Subject: RE: Syscall() vs _syscallN()
Date: Fri, 1 Apr 2005 15:35:55 +0800
Message-ID: <00aa01c5368d$71bfc8d0$90b3c68a@st.com>
References: <Pine.LNX.4.21.0503301451460.559-100000@hestia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0503301451460.559-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux Newbie' <linux-newbie@vger.kernel.org>

Thanks a lot for your detailed explanation and now I'm more clear...

I'm using RedHat9.0.

Alex


-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of J.
Sent: Wednesday, March 30, 2005 9:05 PM
To: 'Linux Newbie'
Subject: RE: Syscall() vs _syscallN()


On Wed, 30 Mar 2005, Alex LIU wrote:

> Sorry for my unclear words...
> I want to know the DIFFERENCE between SYSCALL() and _SYSCALLN()...
> _syscallN() ( _syscall0(),_syscall1(),...._syscall6() ) is a macro 
> defined in include/asm/unist.h while syscall() is a glibc function 
> which I'm not sure. Thanks!
> 
> Alex

One is a macro to call the NN'th systemcall directly by symbolic nr. 
The other is a function in which you have to specify the call number
yourself and then calls the NN'th systemcall or the systemcall if it's not
defined in the glbic yet...

What distro are u using ? There should be a manual-page that describes the
difference quite clearly. Unfortunatly documentation of this level in the
system is often omitted among newer distro's.

The NN number you are refering to is nothing more than a symbolic Number. 

############ man page....
System calls like close() are implemented
in the Linux libc. This implementation often involves:

calling a macro        <---------#!#
which eventually calls syscall(). Parameters passed to syscall() are the
number of the system call followed by the needed arguments. The actual
system call numbers can be found in <linux/unistd.h> while <sys/syscall.h>
gets updated with a new libc. If new calls appear that don't have a stub in
libc yet, you can use syscall(). As an example, you can close a file using
syscall() like this (not advised):

#include <syscall.h>

extern int syscall(int, ...);

int my_close(int filedescriptor)
{
   return syscall(SYS_close, filedescriptor);
}

Bit more clear or .. ?? 

J.

~: man -k syscall
afs_syscall (2)      - unimplemented system calls
syscalls (2)         - list of all system calls

 
> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org
> [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of J.
> Sent: Tuesday, March 29, 2005 5:36 PM
> To: Linux Newbie
> Subject: Re: Syscall() vs _syscallN()
> 
> 
> On Tue, 29 Mar 2005, Alex LIU wrote:
> 
> > Hi:
> > 
> > With either of syscall() or _syscallN() we can define a system call 
> > in
> > the user space program.I think they do the same work.What's the 
> > difference between them? Thanks!
> > 
> > Alex
> 
> This is described in the manual page for syscalss
> 
> ~: man syscalls
> 
> .... 164 system calls.. depending on your kernel version.. etc..
> 
> Roughly speaking, the code  belonging  to  the  system  call  with  
> number __NR_xxx  defined  in /usr/include/asm/unistd.h can be found in 
> the kernel source in the routine sys_xxx().  ...... etc...
> 
> ......
> 
> J.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in the body of a message to majordomo@vger.kernel.org 
> More majordomo info at http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in the body of a message to majordomo@vger.kernel.org 
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Wednesday, March 30 14:51:46



--
http://www.rdrs.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
