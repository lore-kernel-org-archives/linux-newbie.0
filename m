From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: Frame pointer Vs Stack Pointer
Date: Tue, 23 Nov 2004 15:52:56 +0530
Message-ID: <1101205376.3786.63.camel@myLinux>
References: <20041123092440.27562.qmail@web52908.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041123092440.27562.qmail@web52908.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

AFAIK, frame pointer points to the current activation record. Activation
records, for example, are created when a function is called, or the
program enters a different block of code. It can have details of the
return address, local variables etc. Now for getting the variables under
the current scope, a frame pointer is used.

A program will have an associated stack, to store values related to the
program. At times even the activtion records are stored in the stack.
The stack pointer points to the top of this stack.


On Tue, 2004-11-23 at 14:54, Ankit Jain wrote:
> Frame pointer, Stack Pointer....i want to understand
> this concept w.r.t stack in a program
> 
> how a program stores and understand by this
> 
> thanks
> 
> ankit
> 
> ________________________________________________________________________
> Yahoo! Messenger - Communicate instantly..."Ping" 
> your friends today! Download Messenger Now 
> http://uk.messenger.yahoo.com/download/index.html
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
