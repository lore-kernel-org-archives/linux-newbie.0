From: Mark Hahn <hahn@physics.mcmaster.ca>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 19:45:17 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0306111931510.20310-100000@coffee.psychology.mcmaster.ca>
References: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: linux-newbie@vger.kernel.org

> I would think the following code would wait for 1 second each itteration
> before printing hello,

well, usleep takes microseconds, so as you've written it,
you should expect it to take 1ms per usleep or 50ms between hello's.
further, the man page doesn't claim that it'll actually sleep
for exactly the specified microseconds.

here:
#include <unistd.h>
#include <stdio.h>
int main() {
    int c = 20;
    while (c--) {
        int i;
        printf("hello\n");
        for(i = 0; i < 50; i++) {
            usleep(1000);
        }
    }
    return 0;
}

(not that a correct program needs both the stdio and a return from main.)

| [hahn@hahn hahn]$ /usr/bin/time ./chin
| hello
...
| hello
| 0.00user 0.00system 0:19.99elapsed 0%CPU (0avgtext+0avgdata 0maxresident)k
| 0inputs+0outputs (71major+10minor)pagefaults 0swaps
| [hahn@hahn hahn]$ setrealtime time ./chin
| hello
...
| hello
| 0.13user 0.87system 0:01.00elapsed 100%CPU (0avgtext+0avgdata 0maxresident)k
| 0inputs+0outputs (71major+10minor)pagefaults 0swaps

hmm, so on its own, 20 iterations of your loop take 20 seconds,
one second per iteration, and the usleep is actually lasting 20ms.
this is the traditional behavior (and correct, since the man page 
permits this kind of fuzziness).

if run in realtime mode, 20*50 usleep(1000)'s take 1.00 seconds, cool.

also, if I add:
#include <sys/time.h>

void myusleep(unsigned us) {
    struct timeval tv;
    tv.tv_sec = 0;
    tv.tv_usec = us;
    select(0,0,0,0,&tv);
}

then it behaves pretty much exactly as expected.  (good code would handle
the case where us>1000000 and where select is interrupted by a signal.)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
