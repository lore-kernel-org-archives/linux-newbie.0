From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Syscall() vs _syscallN()
Date: Tue, 29 Mar 2005 11:36:02 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503291133250.560-100000@hestia>
References: <001501c5342f$c61db4b0$90b3c68a@st.com>
Reply-To: Linux Newbie <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001501c5342f$c61db4b0$90b3c68a@st.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

On Tue, 29 Mar 2005, Alex LIU wrote:

> Hi:
> 
> With either of syscall() or _syscallN() we can define a system call in the user space program.I think they do the same work.What's the difference between them? Thanks!
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
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
