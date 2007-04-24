From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 13:59:41 +0530
Message-ID: <7783925d0704240129u43a337f9v2ce1c79b4d246fa7@mail.gmail.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
	 <1177399043.6873.340.camel@amol.verismonetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=uU7x3DSUE/0K6lWpusSnnVNwEg7hmtbVi8NxkcsJClNioIkEDyrHjRLMChM4cYwSnrEeSDD5bnVU+as+9T1gYJoTcrt+Ie17MiBWS1F0mmBc8WrDbXJzbefuI8OpcNEbHBD/HG8xc07nZmMH+QY0vYdf44XTzWJlDMa+IXpCmqw=
In-Reply-To: <1177399043.6873.340.camel@amol.verismonetworks.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Amol Lad <amol@verismonetworks.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 4/24/07, Amol Lad <amol@verismonetworks.com> wrote:
> On Tue, 2007-04-24 at 12:08 +0530, Rick Brown wrote:
> > Hi list,
> >
> > I read that the kernel does not differentiate between threads and
> > processes.
>
> Only for scheduling. Kernel maintains thread level data structures to
> enable say fast context switch, mm sharing etc

Could you please give an examples?

>
> >
> > So as long as relevant system calls do not change, it should be
> > possible to run any threading library on any kernel? NPTL on 2.4?
> > pthreads on 2.6?
>
> NPTL needs kernel support. It is 1:1 threading model without any
> overhead under the assumption that kernel supports faster context
> switches, less kernel entry overhead etc

AFAIK, all support that a kernel can provide userspace is in terms of
system calls. Do you mean that NPTL needs support in form of some
special syscalls? Or may be /dev/kmem etc?

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
