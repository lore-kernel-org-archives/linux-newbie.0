From: Ray Olszewski <ray@comarre.com>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 17:38:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030611173054.01f9d9a0@celine>
References: <5.1.0.14.1.20030611162513.01fc8040@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0306112015380.20310-100000@coffee.psychology
 .mcmaster.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:17 PM 6/11/2003 -0400, Mark Hahn wrote:
> > An i386 has a hardware timer that beats about 72 times per second, leaving
>
>well, it has several hardware counter/timers, but that setting
>is not special (and isn't it only used by DOS?)

Actually, I wrote that from memory (of timer limitations I encountered when 
programming in VB on Windows 2000), and I think I got the actual numbers wrong.

> > me uncertain as to how accurate timings below 14 msec can be on this
> > hardware using the kernel's internal timer.
>
>timers can be set MUCH faster than that.

In principle, yes. usleep() timers can be *set* to 1 usec. That's not the 
question. The question is how *accurate* timers based on usleep() can be at 
low settings.

This experiment says they are not very accurate. I changed Lee's loop to be:

   for(i = 0; i < 500; i++)
                 {
            usleep(10);
         }

Now 500 x 10 = 5000 usec, or 1/200 seconds. But the loop actually takes 10 
seconds to iterate. This implies that usleep()  has a minimum delay of 
10/500 seconds, or 20 msec, built into it (at least on my test system).

My best guess is that this limitation derives either from the timer code in 
the Linux kernel or from the system hardware that code relies on.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
