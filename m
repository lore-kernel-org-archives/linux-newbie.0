From: Ray Olszewski <ray@comarre.com>
Subject: Re: Large FTP transfers
Date: Sat, 28 Sep 2002 09:38:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020928093421.024d14f0@celine>
References: <5.1.0.14.1.20020928075131.02675d00@celine>
 <5.1.0.14.1.20020928075131.02675d00@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209290200.28689.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

Adam -- I noticed that you sent this to me personally, but troubleshooting 
exchanges like this one really work better when kept on the list. I have 
nothing useful to add based on the new information you sent, but possibly 
someone else will. So I'm CC'ing the list with this reply.

One general suggestion I forgot to make last time -- try running "top" 
during the ftp transfer, in some way that leaves the last "top" screen on a 
display when the system hard-crashes. (Depending on the exact failure mode, 
this could be a vt, or you may need to do it on an ssh session from amother 
host.) Then you can start to see if the timing of the failure is associated 
with something specific (like using the last 64M of RAM).

At 02:00 AM 9/29/02 +0930, Adam Luchjenbroers wrote:

> > Over the years, I've had systems fail during large ftp transfers, though my
> > symptom is usually a spontaneous reboot rather than a "hard-lockup" (by
> > which, I assume, you mean the Linux system that is receiving the file
> > ceases to respond in any way ... no X, no consoles, no telnet of ssh
> > response, and no response to pings ... requiring a power-down or a
> > hard-reset reboot). The cause invariably proved to be marginal hardware (in
> > fact, this is so predictable that I use large ftp transfers as part of my
> > stress testing of new systems ... that plus my being a cheapskate probably
> > explains why I see this problem so often). A large ftp transfer "affects"
> > about every part of the system there is.
> >
> > Among the things this test has turned up for me are:
> >
> >          1. An inadequate heatsink/fan combination (an ftp transfer puts a
> > lot of work on typical CPUs, unearthing any overheating risk it may face).
>
>Will see if I can turn off the variable fan speed controller and set it to
>full all the time.
>
>It's got a ThermalTake Volcano7 (CPU not O\C'd).
>
> >          2. Flaky memory (the ftp transfer will cache into RAM, taking you
> > to 100% RAM use far more quickly than everyday operation will)
>
>Ok, I'll run Memtest x86
>
> >          3. A bad power supply (don't know why an ftp transfer turned this
> > one up).
>
>New PSU ATM.
>
> >          4. Problems with my swap partition (not sure what; possibly speed
> > problems on the drive itself, or maybe a problem with DMA).
> > I'd imagine it could also turn up problems with the NIC or with the
> > filesystem partition, but I haven't actually experienced either.
>
>NIC is a 3Com 905B-TX (reasonably old, I beleive)
>
>One thing I noticed was a couple of Spurious IRQ interrupts on IRQ7, it also
>spat out a number which looked like the partnumber for my Southbridge chip.
>lspci -v turns up no devices using IRQ 7.

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
