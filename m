From: Ray Olszewski <ray@comarre.com>
Subject: Re: system clock...
Date: Fri, 01 Oct 2004 11:19:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041001110755.01f4de30@celine>
References: <20041001175313.2156.qmail@web52903.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041001175313.2156.qmail@web52903.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:53 PM 10/1/2004 +0100, Ankit Jain wrote:
>hi
>
>i have a problem with my system clock.
>
>whenever i reboot or start my system my clock is
>incremented by around 6 hrs. after that its alright
>i.e if i correct the time it dosent mis behave but i
>dont know whats wrong in reboot or booting the sys?
>
>if somebody can help or faced this kinda situation?

Where do you live? Not your street address, just your local time zone.

It is likely that there is a mismatch between the way your hardware clock 
is set and the way Linux thinks it is set. For example, your hardware clock 
is set for local time, but Linux thinks it is set for UT (Universal Time, 
also called Greenwich Time), so during boot/init converts this setting to 
your local  time zone. Or it may be the other way around, depending on 
whether your local time zone is +600 or -600.

Or, just conceivably, there is a time-zone mismatch between the init script 
that reads the hardware clock and the shutdown script that uses the kernel 
clock to update the hardware clock.

The details of how to fix this depend on which way the problem is 
occurring, which way you need your hardware clock to be set (for example, 
if you dual boot, I believe Windows expects the hardware clock to show 
local time; Linux-only systems customarily run UT hardware clocks), and 
what Linux distro/version you are using.

Oh, one last thing ... you say "around" 6 hours, not exactly 6 hours. This 
indicates clock drift in the hardware clock, a very normal thing on PCs, 
which use very cheap clock hardware. The usual solution to clock drift, 
under Linux (and even under Windows), is to use an NTP (Network Time 
Protocol) deamon to sync the kernel clock to an ntp server and to correct 
for drift locally. Read up on this in the usual places, including the man 
pages for ntpd (the daemon) and ntpdate (a client that only re-syncs the 
clock periodically, normally from a cron script).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
