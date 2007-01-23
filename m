From: "sandeep lahane" <sandeep.lahane@gmail.com>
Subject: Re: Why can't an ISR cause a page fault?
Date: Tue, 23 Jan 2007 16:09:17 +0530
Message-ID: <2d51cbf80701230239q2809860bh7589feda903fb5bd@mail.gmail.com>
References: <292693080701230005i4d4523a3g3cb3be819608a9b4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080701230005i4d4523a3g3cb3be819608a9b4@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Just a guess, when page fault occurs, page fault handler is invoked
which is another ISR. This page fault handler handler does the
required stuff like bringing the data in to memory etc. This
introduces delays , and delayes are not supposed to be there in ISR. I
think when a process causes a page fault, it may sleep (and ive away
cpu to others ! ) till the page is made availabe in memory. But I
think, I am just listing out the reasons why ISR 'should not' cause
page fault.

-- 

Regards,
Sandeep.


On 1/23/07, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> Hi,
>
> I read that ISRs can never cause a page fault. Why is that? What would
> happen if an ISR tries to use a data item that has been swapped out?
>
> Thanks,
>
> Dan
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
