From: Ray Olszewski <ray@comarre.com>
Subject: Re: Problem with an rc3.d script
Date: Fri, 17 Oct 2003 15:23:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031017135514.01fabfd0@celine>
References: <6CE6A442029B3347890ED9FCA94FAE0712CB4D@nsxmail.netscout.co
 m>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0712CB4D@nsxmail.netscout.co
 m>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:46 PM 10/17/2003 -0400, Gosselin, Mark wrote:
>Hi Everyone,
>
>I have a new install of RedHat that I'm trying to start some software on. 
>I've placed
>my startup script in /etc/init.d and created my link in /etc/rc3.d to call 
>that script.
>When I run the start script from the command line, it works just fine. 
>However, at
>boot time, it doesn't run. I can find all my boot log files with entries 
>for the scripts
>that run before and after this script at boot time, but no evidence that 
>this script is
>even being called...
>
> >From /etc/rc3.d:
>lrwxrwxrwx    1 root     root           17 Oct 17 16:04 S81stealth -> 
>../init.d/stealth
>
> >From /etc/init.d
>-rwxr-xr-x    1 root     root          227 Oct 16 18:34 stealth
>
>uname -a output
>Linux corona 2.4.20-20.9smp #1 SMP Mon Aug 18 11:32:15 EDT 2003 i686 i686 
>i386 GNU/Linux
>
>from boot.log
>Oct 16 15:38:24 corona spamassassin: spamd startup succeeded         # in 
>/etc/rc3.d/S80spamassassin
>Oct 16 15:38:25 corona gpm: gpm startup succeeded                       # 
>in /etc/rc3.d/S85gpm
>
>from /var/log/messages
>
>Oct 16 15:38:24 corona spamassassin: spamd startup succeeded
>Oct 16 15:38:25 corona gpm: gpm startup succeeded
>
>I'm at a loss... Anybody see anything or know anyhting that might be 
>preventing this from running
>at boot time???

Two possibilities come to mind.

First, is runlevel 3 your default runlevel? I don't run RH here, so I 
cannot readily check what a fresh install defaults to, but it might be 
either 2 (for command-line login) or 5 (for xdm or gdm login). Debian, 
which I run here, uses runlevel 2 out of the box, for example.

Second, is there anything about the script itself that might cause it to 
fail if not run from a user account? Perhaps some problem with an 
environment variable? (It is hard to troubleshoot a script without seeing 
it, of course.)





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
