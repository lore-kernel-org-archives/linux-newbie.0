From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux router
Date: Mon, 20 May 2002 10:49:33 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020520103910.009f5cf0@celine>
References: <F4D3DB9A18752A4F99FD880ABC5407179D136B@ccdc-exchg.careerco
 mmunity.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D136B@ccdc-exchg.careerco
 mmunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Sridhar J <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

At 04:29 PM 5/20/02 +0530, Sridhar J wrote:
>Hello
>
>I have an old Cyrix system that I would like to turn into a router-firewall
>and put it before my Webserver. I would alos like to have my IDS running on
>this. No other service should run on this. No apps, nothing.
>
>How do I go about it? What distro should I choose? What files do I have to
>edit to make these changes?


There are far too many possibilities for me (or anyone) to give you a 
single, definitive answer. The two options I personally like are:

1. Strip down a standard distro so it does what you want. I've personally 
done this with Debian, and I know of others who have done it with Red Hat.

2. Use one of the mini-distros customized for router/firewall setups. The 
one I personally like is LEAF/Dachstein, which you can find out about at 
leaf.sourceforge.net . There are many others.

You say "No other service should run on this". I'm not sure what IDS means 
(DNS, perhaps?), but the services you *may* want to run on the router are 
ssh (so you can do remote troubleshooting), DNS (so it acts as a forwarder 
for the LAN), ident/auth (if you need it for any of the services your 
clients run), and maybe SMTP (depending on how the system logs). You also 
say "No apps, nothing", but systems like this typically run syslogd and 
cron (for obvious reasons), a time client like ntpdate (so timestamps are 
accurate), and some process that watches for local logins (getty or a 
cousin). You'll also need the configuration tools that the required startup 
scripts and troubleshooting situations expect -- bash, ifconfig, route, 
netstat, and others.

Mini-distros like LEAF are a good starting place for this sort of 
customization, because experienced people have done the work of cutting 
back to what is still needed, but not to less than what is really needed.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
