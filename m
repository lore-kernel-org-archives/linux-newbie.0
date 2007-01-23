From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: Why can't an ISR cause a page fault?
Date: Tue, 23 Jan 2007 16:16:20 +0530
Message-ID: <292693080701230246m2b1ab5c3w798959a2180d925d@mail.gmail.com>
References: <292693080701230005i4d4523a3g3cb3be819608a9b4@mail.gmail.com>
	 <2d51cbf80701230239q2809860bh7589feda903fb5bd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2d51cbf80701230239q2809860bh7589feda903fb5bd@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: sandeep lahane <sandeep.lahane@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

> > Hi,
> >
> > I read that ISRs can never cause a page fault. Why is that? What would
> > happen if an ISR tries to use a data item that has been swapped out?

> Just a guess, when page fault occurs, page fault handler is invoked
> which is another ISR. This page fault handler handler does the
> required stuff like bringing the data in to memory etc. This
> introduces delays , and delayes are not supposed to be there in ISR. I
> think when a process causes a page fault, it may sleep (and ive away
> cpu to others ! ) till the page is made availabe in memory. But I
> think, I am just listing out the reasons why ISR 'should not' cause
> page fault.
>

Okay let me rephrase my question:

1) I read that an ISR cannot cause a page fault. Is the statement true?

2) In the case it is true, how are situations like this handled : an
ISR tries to use a data item that has been swapped out?

3) I have the following argument that convinces me that the statement
is false. When an ISR causes a page fault, the page fault handler is
invoked since its priority is higher. When it finishes the control
goes back to ISR, just like the normal case of nested ISR execution.
Hence an ISR can cause page fault. Is any thing wrong with this
argument?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
