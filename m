From: Ray Olszewski <ray@comarre.com>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 16:55:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030611162513.01fc8040@celine>
References: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>, hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

At 05:55 PM 6/11/2003 -0500, Lee Chin wrote:
>I would think the following code would wait for 1 second each itteration 
>before printing hello, but it waits way too long.  Replacing the for loop 
>body with a
>usleep(1000000) works great... what am I missing here?

Why would you expect this loop to wait 1 second? The usleep() call is for 
1/1000 of a second, and you call it 50 times. 50/1000 seconds is hardly 
equal to 1 second.

In fact, compiled on my system, the loop as written does introduce just 
about a 1 second delay (30 iterations take 29 seconds,  timed crudely with 
a wristwatch ... just right, since the initial printf() happens before the 
first loop run).

The ability of a system to resolve time is limited by the kernel and the 
hardware. If you read the man page for nanosleep() -- the POSIX replacement 
for usleep -- it specifies this limitation on that call's behavior. SO does 
the man page for usleep, though the writing here is fuzzier.

An i386 has a hardware timer that beats about 72 times per second, leaving 
me uncertain as to how accurate timings below 14 msec can be on this 
hardware using the kernel's internal timer.

If you need more accurate timing, you might want to look at using /dev/rtc 
(described in the kernel Documentation directory), which relies on IRQ8 and 
the system's real-time-clock hardware.

The test system I used, BTW, is a P-III 1 Ghz, and I ran the program with 
an ssh connection as STDOUT.


>Thanks
>Lee
>
>#include <unistd.h>
>
>int main()
>{
>     while (1)
>     {
>         int i;
>
>         printf("hello\n");
>         for(i = 0; i < 50; i++)
>         {
>             usleep(1000);
>         }
>
>     }
>
>}


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
