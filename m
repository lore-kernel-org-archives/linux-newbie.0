From: Alex LIU <alex.liu@st.com>
Subject: RE: Syscall() vs _syscallN()
Date: Wed, 30 Mar 2005 09:38:09 +0800
Message-ID: <000101c534c9$230750c0$90b3c68a@st.com>
References: <Pine.LNX.4.21.0503291133250.560-100000@hestia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <Pine.LNX.4.21.0503291133250.560-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux Newbie' <linux-newbie@vger.kernel.org>

Sorry for my unclear words...
I want to know the DIFFERENCE between SYSCALL() and _SYSCALLN()...
_syscallN() ( _syscall0(),_syscall1(),...._syscall6() ) is a macro defined
in include/asm/unist.h while syscall() is a glibc function which I'm not
sure. Thanks!

Alex

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of J.
Sent: Tuesday, March 29, 2005 5:36 PM
To: Linux Newbie
Subject: Re: Syscall() vs _syscallN()


On Tue, 29 Mar 2005, Alex LIU wrote:

> Hi:
> 
> With either of syscall() or _syscallN() we can define a system call in 
> the user space program.I think they do the same work.What's the 
> difference between them? Thanks!
> 
> Alex

This is described in the manual page for syscalss

~: man syscalls

.... 164 system calls.. depending on your kernel version.. etc..

Roughly speaking, the code  belonging  to  the  system  call  with  number
__NR_xxx  defined  in /usr/include/asm/unistd.h can be found in the kernel
source in the routine sys_xxx().  ...... etc...

......

J.

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
