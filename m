From: Ray Olszewski <ray@comarre.com>
Subject: RE: usleep
Date: Thu, 12 Jun 2003 00:46:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030612003054.01fafa38@celine>
References: <5.1.0.14.1.20030611173054.01f9d9a0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAGEMIEEAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:14 AM 6/12/2003 +0100, Riley Williams wrote:
>Hi Ray.
>
>  > Now 500 x 10 = 5000 usec, or 1/200 seconds. But the loop
>  > actually takes 10 seconds to iterate. This implies that
>  > usleep() has a minimum delay of 10/500 seconds, or 20
>  > msec, built into it (at least on my test system).
>
>The standard PC BIOS sets up the hardware timer with a tick
>interval of 18.2 ms which is probably what you are seeing.
>Memory says that the reason for this is that there are 2^16
>(65,536) such ticks per hour, and that apparently made the
>original IBM PC BIOS somewhat simpler as a result.
>
>Best wishes from Riley.

Thanks, Riley. This is indeed what I was remembering, albeit imperfectly.

Having done a bit more reading, I find that the standard Linux kernel 
causes modern computers (Pentium or newer) to generate "heartbeat" 
interrupts on IRQ0 at the rate of 100 per second, that is, every 10 msec. 
(This is separate from the RTC, which generates interrupts on IRQ8 at a 
rate that can be controlled more readily than by editing kernel source.) 
You can verify this by hand, by comparing uptime (in seconds) to the IRQ0 
entry in /proc/interrupts. (I actually get 99.998 per second this way, 
perhaps because ntp reseting of real time affects uptime reports.)

For that reason, on a standard kernel (and a customized one is apparently a 
big deal, because a lot of stuff assumes the kernel gets ticks at this 
rate) nothing can be timed at a finer timing than 10 msec using kernel time 
facilities ... for finer timing, you have to use the more flexible facility 
of the IRQ8 RTC, which can be programmed to provide up to 8192 beats per 
second.

386s and 486s might still,  I think, have the coarser timing you describe 
from DOS days. I no longer have any running here to check, though.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
