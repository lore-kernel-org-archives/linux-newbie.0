From: Ray Olszewski <ray@comarre.com>
Subject: Re: Lock-ups with 2.4.19 kernel
Date: Tue, 27 Aug 2002 07:22:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020827071038.024da6c0@celine>
References: <200208272014.21373.adam@luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208272014.21373.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

There is not much to go on in what you report, but let's do a bit of a 
walkthrough.

First, just how locked up is the system? What do you need to do to reboot? 
Press CTRL-ALT-DEL? Press reset? Power down, then up again?

Second, what, if anything, changed recently (coincident with the start of 
the lockups)? Any hardware changes? A new kernel?  A change in usage (did 
you just start playing the games, for example)?

Third, three of the 4 lockups you report are occurred during games. This 
hints to me that high CPU usage may be the trigger. If so, another way to 
cause the lockups will be full kernel recompile. Try to find other ways to 
stress the system and see what is causing the lockup. (An alternate 
explanation is a bad bit of memory, one that is high in memory space, so 
only gets hit when a lot of caching is going on. The same tests will 
trigger that one; so will a really big ftp transfer.)

Fourth, when I've had similar problems, the logs don't tell me anything, 
because the crash kill syslogd before it can record any useful info. Two 
workarounds for getting *some* info out are:

         1. Run top on a remote console (one the telnets or ssh's in). When 
the system hangs, the console will still display the last "top" output, so 
you can see (a) what CPU usage was, (b) how much memory had been used, and 
(c) what the top processes were. That may give you a hint about what is 
going on.

         2. If you can, use another remote console to cause the crash, but 
leave the system with a vt (not X) on its console. A crash message (a 
kernel oops, for example) may show on the screen when the crash happens, 
and that will give you at least a little info.

There are more complex solutions as well.

Having said all of that ... when I ecperienced similar crashes (or what 
might be similar crashes; hard to be sure from a sketchy description), they 
were caused not by Linux, but by hardware problems. In one case, inadequate 
CPU cooling (too small a heatsink-fan combo) caused to the CPU (a P3) to 
shut down for its own safety. In the other, the power supply had some sort 
of problem that only showed up under high loads. In both casesd, replacing 
the offending hardware eliminated the problem.

At 08:14 PM 8/27/02 +0930, Adam Luchjenbroers wrote:
>I have been getting unusual lockups recently, my system is
>
>Hardware
>Athlon 900MHz
>Soltek SL-75DRV5 Motherboard
>512MB Corsair DDR (DDR333)
>nVidia GeForce DDR 256
>Creative Vibra 128 PCI
>3Com 905B-TX Ethernet
>40GB SeaGate ST340810A
>Sony CD-RW CRX175A1
>
>There are three devices unidentified by HardDrake
>
>Software
>Linux Mandrake 8.1
>Kernel 2.4.19
>nVidia Drivers 1.0-2960
>KDE 3.0.2
>
>I have had four crashes over the past 3-4 weeks. 1 playing Quake3 a while
>  ago, 1 3 days ago playing Kohan (Loki version, demo) and two today.
>
>The first one today was while my machine was unattended, I went to access it
>via FTP and couldn't, also tried pinging it, and got no response.
>
>The second one was in the middle of a game of Kohan.
>
>I have done a cat <logfile> | grep "Aug 24" &> <file> to my syslog and kernel
>logs. The files are available on request.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
