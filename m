From: Ray Olszewski <ray@comarre.com>
Subject: Re: Memory usage
Date: Mon, 14 Apr 2003 09:16:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030414091203.0200b570@celine>
References: <200304150117.08844.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304150117.08844.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Adam@Luchjenbroers.com, linux-newbie@vger.kernel.org

Where are you "noticing" this memory usage? If it is in the "Mem:" line in 
top, probably all you are seeing is the kernel's use of RAM as cache and 
buffer. In slightly simplified form, when a process finishes running, or a 
file closes, the kernel leaves it in memory **if** it does not need that 
memorr for something else. (This way, it can run or open faster if called 
again.)

As a result, *any* Linux system will over time approach 100% memory usage 
as reported by this measure. If you want to check use of RAM by active 
processes, run "free" and look at the second line of its report.

If you are "noticing" this problem somewhere else, please post a followup 
that describes what you are seeing a bit more exactly.

At 01:17 AM 4/15/2003 +0930, Adam Luchjenbroers wrote:
>OS: Linux Mandrake 9.0
>Kernel: 2.4.20
>Soltek SL-75DRV5
>512MB DDR
>Althon XP2100+
>
>I'm noticing memory usage that I cannot trace back to a process - alot of it
>too. I use top and the "M" command to list programs by memory usage - but
>what I see with it (or using other system monitoring tools) are only a few
>processes and none that can explain the memory usage.
>
>Even dropping down to runlevel 1 still displays RAM usage in excess of 300MB.
>Maybe I've still got alot to spare but I still want to fix this problem -
>currently running BlackBox under X (I use some KDE apps, but even after
>killing off all kdeinit processes the memory usage stays high).
>
>So, what would be the cause of this mysterious memory usage?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
