From: lindax newbie <linux-newbie@tlinx.org>
Subject: Re: Frame pointer Vs Stack Pointer
Date: Thu, 25 Nov 2004 12:10:53 -0800
Message-ID: <41A63C4D.804@tlinx.org>
References: <20041123092440.27562.qmail@web52908.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041123092440.27562.qmail@web52908.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Frame pointer is a convenience for referencing local variables in a
subrouting, usually all the args are pushed onto the stack then BP
(the frame, or Base pointer) is pushed , then SP
(the stack pointer) is copied to BP, so all variables can easily be
referenced via BP+x, BP+y, etc.  It is especially useful if you are
debugging since BP will give you an idea of where the parameters to
the current subroutine are located.  It is also useful if you are doing
a stack traceback since the values of BP have been pushed onto the stack
for each stack frame.

On the otherhand, there are otherways of accessing those variables by
referencing off of "SP" and using BP as a general purpose register
to do other things -- this can result in faster code that is less
easy to debug.

If you aren't doing kernel debugging and/or are not expecting to be
generating stack traces, allowing the compiler to use BP (Base/Frame
 Pointer) is usually a good thing for optimizing memory and CPU
execution time.

-linda

Ankit Jain wrote:

>Frame pointer, Stack Pointer....i want to understand
>this concept w.r.t stack in a program
>
>how a program stores and understand by this
>
>thanks
>
>
>  
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
