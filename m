From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: further query signal handling!
Date: Mon, 22 Nov 2004 14:54:28 +0545
Message-ID: <652016d304112201091575fff@mail.gmail.com>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux>
	 <652016d3041122001540a047fd@mail.gmail.com>
	 <1101113860.5382.36.camel@myLinux>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101113860.5382.36.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 22 Nov 2004 14:27:40 +0530, Jagadeesh Bhaskar P
<jbhaskar@hclinsys.com> wrote:
> > You are generating a divide by zero exception (on i386) which is a
> > fault (it means the instruction is restartable). So what happens is
> > you catch an exception and print and return. The same code is
> > restarted again. so processor gets exception again and again.
> 
> If the fault was not attached to a function written by me, and leaving
> it to be handled by the kernel, there was no problem. How can that
> happen? Shouldnt the kernel restart the instruction in that case also.
> Why didnt that happen?
> 
> --
> With regards,
> 
> Jagadeesh Bhaskar P
> R&D Engineer
> HCL Infosystems Ltd
> Pondicherry
> INDIA

In UNIX and like, the exceptions generate UNIX signals. IEEE POSIX
have defined what to do on generation of signals. The signal may have
default action, run user 's signal handler. For SIGFPE signal, The
default action is Abnormal termination of the process. But when you
set your handler, it does not terminate but runs your handler. After
returning from your handler it again tries to execute the faulting
instruction and signal is generate again and so on.

BTW:
 For UNIX programming, Advanced UNIX programming by richard stevens is
the Best book (i have ever seen).
 
Regards Manish
 
-- 
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
