From: Adam Luchjenbroers <adam@luchjenbroers.com> (by way of Adam
	Luchjenbroers <adam@luchjenbroers.com>)
Subject: Re: Lock-ups with 2.4.19 kernel
Date: Wed, 28 Aug 2002 13:28:39 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208281328.39807.adam@luchjenbroers.com>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

>          1. Run top on a remote console (one the telnets or ssh's in). When
> the system hangs, the console will still display the last "top" output, so
> you can see (a) what CPU usage was, (b) how much memory had been used, and
> (c) what the top processes were. That may give you a hint about what is
> going on.

Is there any way I can get that outputted to somewhere else? Doesn't look
 like it would go well in a log file.

It does seem to happen during processor intensive situations (eg. large
battles in Kohan), what programs can I use to test this (memory testers would
also be useful).

>          2. If you can, use another remote console to cause the crash, but
> leave the system with a vt (not X) on its console. A crash message (a
> kernel oops, for example) may show on the screen when the crash happens,
> and that will give you at least a little info.

Useful, I'll probably write down anything that comes up.

> Having said all of that ... when I ecperienced similar crashes (or what
> might be similar crashes; hard to be sure from a sketchy description), they
> were caused not by Linux, but by hardware problems. In one case, inadequate
> CPU cooling (too small a heatsink-fan combo) caused to the CPU (a P3) to
> shut down for its own safety. In the other, the power supply had some sort
> of problem that only showed up under high loads. In both casesd, replacing
> the offending hardware eliminated the problem.

Damn, software can be fixed, hardware costs money. Is there any form of
temporary workarounds I could employ (eg. put a cap on CPU usage at about
80%?) while I save up to replace the hardware.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
