From: Mark Hahn <hahn@physics.mcmaster.ca>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 20:17:46 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0306112015380.20310-100000@coffee.psychology.mcmaster.ca>
References: <5.1.0.14.1.20030611162513.01fc8040@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030611162513.01fc8040@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: Lee Chin <leechin@mail.com>, linux-newbie@vger.kernel.org

> An i386 has a hardware timer that beats about 72 times per second, leaving 

well, it has several hardware counter/timers, but that setting 
is not special (and isn't it only used by DOS?)

> me uncertain as to how accurate timings below 14 msec can be on this 
> hardware using the kernel's internal timer.

timers can be set MUCH faster than that.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
