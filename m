From: Rik van Riel <riel@redhat.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 11:55:10 -0400
Message-ID: <4648865E.5030706@redhat.com>
References: <20070514152218.19773.qmail@science.horizon.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20070514152218.19773.qmail@science.horizon.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux@horizon.com
Cc: learninglinux4@gmail.com, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

linux@horizon.com wrote:
> Sleeping in an ISR is not fundamentally impossible - I could design
> a multitasker that permitted it - but has significant problems, and
> most multitaskers, including Linux, forbid it.

You could design a system in which most ISRs can sleep,
but even then you'll probably need to make exceptions.

For example, the timer interrupt tends to drive the
scheduler.  This means the timer interrupt cannot go
to sleep and expect the scheduler to wake it up at
some point in the future - since there will be no new
timer interrupts to drive the scheduler.

This precludes the timer interrupt from taking certain
sleeping locks, even on a system where interrupts can
sleep (not Linux).

Interrupts will always have some limitations, under
any OS design.

-- 
All Rights Reversed
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
