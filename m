From: Kevin Curtis <kevin.curtis@farsite.co.uk>
Subject: RE: Swapping between Mice on my laptop
Date: Wed, 28 Aug 2002 12:29:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7C078C66B7752B438B88E11E5E20E72E0EF4D6@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-newbie@vger.kernel.org

Aha,
	found my own answer at
http://mirrors.kernel.org/LDP/HOWTO/mini/XFree86-Second-Mouse/

Kevin

-----Original Message-----
From: Kevin Curtis [mailto:kevin.curtis@farsite.co.uk]
Sent: 28 August 2002 11:50
To: linux-newbie@vger.kernel.org
Subject: Swapping between Mice on my laptop


Hi,
	I have a Toshiba Satellite laptop with a touch pad mouse.  It has no
PS/2 port, so I now have a USB mouse.  At the moment I swap between the mice
by editing the /etc/X11/XF86Config-4 file and reversing the following
statements

InputDevice "Mouse1" "CorePointer"
InputDevice "Mouse2" "CorePointer"

Where Mouse1 is the touch pad and Mouse2 is the USB mouse.

There must be a better way than this?


Kevin

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: 28 August 2002 05:45
To: adam@luchjenbroers.com; linux-newbie@vger.kernel.org
Subject: Re: Lock-ups with 2.4.19 kernel


At 01:28 PM 8/28/02 +0930, Adam Luchjenbroers wrote:
> >          1. Run top on a remote console (one the telnets or ssh's in).
When
> > the system hangs, the console will still display the last "top" output,
so
> > you can see (a) what CPU usage was, (b) how much memory had been used,
and
> > (c) what the top processes were. That may give you a hint about what is
> > going on.
>
>Is there any way I can get that outputted to somewhere else? Doesn't look
>  like it would go well in a log file.

I don't quite understand what you are asking. If you are running "top" via 
an ssh login, that *is* "somewhere else" -- an terminal application running 
on a different machine. You can be running from, say, an xterm on a second 
Linux host or Putty on a Windows host. In both cases, you have the 
terminal's scrollback capability and the ability to cut-and-paste, even 
after the machine you are testing dies.

An alternative, I suppose, is to write a program that runs on the test 
machines and regularly copies the underlying  stats (the raw data in 
/proc/stat and /proc/meminfo) to a file. But with a crash that bad, you'd 
lose the last data since sync'ing would fail, making that an ugly solution.


>It does seem to happen during processor intensive situations (eg. large
>battles in Kohan), what programs can I use to test this (memory testers
would
>also be useful).

The best way to simulate high CPU usage is with a program that uses the CPU 
a lot. Some games, really big FTP transfers, and kernel compiles are the 
usual candidates. The procedure I've already described is the best test I 
know of.

The best memory tester I know of is memtest86. This isn't really a Linux 
program; it's a small binary that runs directly from LILO so can check all 
but about 64 K or RAM. There is a memtest Linux app too, but I haven't used 
it. We Debian users gets them in .deb packages (memtest and sysutils), and 
I imagine there are RPMs with similar names around too.

> >          2. If you can, use another remote console to cause the crash,
but
> > leave the system with a vt (not X) on its console. A crash message (a
> > kernel oops, for example) may show on the screen when the crash happens,
> > and that will give you at least a little info.
>
>Useful, I'll probably write down anything that comes up.
>
> > Having said all of that ... when I ecperienced similar crashes (or what
> > might be similar crashes; hard to be sure from a sketchy description),
they
> > were caused not by Linux, but by hardware problems. In one case,
inadequate
> > CPU cooling (too small a heatsink-fan combo) caused to the CPU (a P3) to
> > shut down for its own safety. In the other, the power supply had some
sort
> > of problem that only showed up under high loads. In both casesd,
replacing
> > the offending hardware eliminated the problem.
>
>Damn, software can be fixed, hardware costs money. Is there any form of
>temporary workarounds I could employ (eg. put a cap on CPU usage at about
>80%?) while I save up to replace the hardware.

I don't know of any app that does what you describe. Anyway, if it really 
is a hardware problem, the failure is likely to be probabilistic, not 
deterministic, and is only much more likely to occur with high CPU usage 
than, say, 80%. Since even pricey heatsinks cost about $US20 and power 
supplies not much more, I personally was pleased to discover that I could 
fix these problems cheaply and stop troubleshooting. Of course, your 
situation may well be different.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
----------------------------------------------------------------------------
---

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
