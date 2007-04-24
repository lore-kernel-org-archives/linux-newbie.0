From: Amol Lad <amol@verismonetworks.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 12:47:23 +0530
Message-ID: <1177399043.6873.340.camel@amol.verismonetworks.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Tue, 2007-04-24 at 12:08 +0530, Rick Brown wrote:
> Hi list,
> 
> I read that the kernel does not differentiate between threads and
> processes. 

Only for scheduling. Kernel maintains thread level data structures to
enable say fast context switch, mm sharing etc

> 
> So as long as relevant system calls do not change, it should be
> possible to run any threading library on any kernel? NPTL on 2.4?
> pthreads on 2.6?

NPTL needs kernel support. It is 1:1 threading model without any
overhead under the assumption that kernel supports faster context
switches, less kernel entry overhead etc

> 
> Rick
> 
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
> 
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
