From: "Lee Chin" <leechin@mail.com>
Subject: Re: suspending a thread and executing it later
Date: Mon, 20 Jan 2003 00:29:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030120052949.31230.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sos22@cam.ac.uk, linux-newbie@vger.kernel.org

Do pthreads and getcontext/setcontext work nicely with each other?

Thanks
Lee
----- Original Message -----
From: Steven Smith <sos22@cam.ac.uk> 
Date: Sat, 18 Jan 2003 17:46:44 +0000
To: Lee Chin <leechin@mail.com>
Subject: Re: suspending a thread and executing it later

> > Here is what I want to do... in my program, I want to arbitrarily in
> > some function suspend the execution of the current (self) thread and
> > schedule my self to resume from that point later.
> Have a look at ``info libc "Non Local Exits" "System V Contexts"''.
> The basic idea is to have one ucontext per thread.  When the running
> thread wants to block, it picks some other thread, and then
> swapcontext()s with it.
> 
> > In my program, I only have 2 threads... and lets say thread 1 ends
> > up calling a function foo() that will block on IO.  I dont want to
> > make the whole system block, so I want to resume the execution of
> > foo() when the IO completes and restore thread state so that the
> > stack (function call history and all) is maintained.
> The easy way to do this is via pthreads, but if you really want to
> do it yourself, you'll probably need to set every file descriptor
> to non-block mode, and then swapcontext() whenever an IO
> function returns EAGAIN.
> 
> Steven Smith,
> sos22@cam.ac.uk.

-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

Meet Singles
http://corp.mail.com/lavalife

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
