From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: Re: tuning iptables (was Who is running Red Hat 8.0
  and Roaring Penguin?)
Date: Thu, 05 Dec 2002 19:37:02 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021205192407.0226cd00@celine>
References: <5.1.0.14.1.20021205154648.022562e0@celine>
 <5.1.0.14.1.20021204163620.021046c0@celine>
 <5.1.0.14.1.20021204163620.021046c0@celine>
 <5.1.0.14.1.20021205154648.022562e0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212060310.gB63AA708375@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Responding selectively, below. Most of what you wrote is correct. so I'll 
not comment on it specifically.

At 10:10 PM 12/5/02 -0500, Haines Brown wrote:
[...]
>Apparently, since I only use SMTP to send mail, I don't want the SMTP
>server. I run fetchmail now from cron every half hour, and I could
>readily combine that with whatever is needed to "help with queued
>messages" (about which I'm unclear).

I can't be more clear without knowing which actual SMTP server you are 
running (examples are sendmail, smail, exim, and postifx). In general, each 
will be able to run with an argument that tells it to check the mail queue 
(the file of unsent messages) and try to send them. With exim, as an 
example, you run it as "exim -q" or as "runq". You could do this (as root) 
every 30 minutes from a suitable crond file.

>Unfortunately, I'm not clear if at this point I'm trying to remove
>rules for the INPUT chain or add them.

Starting and stoping services has nothing at all to do with iptables. You 
do this by stopping the actual daemon process or removing (in practice, 
normally, you actually comment out) the service's entry in /etc/inetd.conf 
. But I'd suggest you put aside worrying about this stuff until you have 
the real RH 8.0 machine running and can check its list of services ... 
older RH distros were careless about starting up unneded stuff, but I'm 
sure you'll find RH 8.0 less gunked up in this respect.
[...]

> > >Etc.
>
>Well, I was just fumbling about for the kind of information you
>needed, and the "etc" meant anything else that is usual and
>necessary. I didn't have the savy to specify what those things might
>be.


Well ... we're talking about services here, not about the clients you want 
to run. As regards services available on the Internet from a 
dynamic-address connection, there really are no "usual and necessary" ones. 
Some (not me) will suggest running an auth (ident) server to respond to 
queries from services that do ident checking; since I don't do this, you'll 
need advice from someone else if you want to try it. Some setups require 
the ability to handle DHCP broadcast traffic, but not (usually) PPPoE 
lines. If there's anything else of consequence, I can't think of it either.


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
