From: "Paul" <paul@mnwebhost.net>
Subject: Re: iptables & a dhcpd question
Date: Thu, 27 Feb 2003 14:41:19 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <009901c2dea0$9bc86390$4800a8c0@neptune>
References: <5.1.0.14.1.20030227120359.01f56808@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for all the info! Quick follow up question on the rc.firewall script.
I've tried running it, just by typing it's name when I'm in that folder at
root.  It says, "bash: rc.firewall-2.4: command not found"  It's actually
named, "rc.firewall-2.4" and I've made it executable already, it has a *
next to its name when I do a listing.  Any ideas??  TIA!

-Paul

----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: <linux-newbie@vger.kernel.org>
Sent: Thursday, February 27, 2003 2:16 PM
Subject: Re: iptables & a dhcpd question


> At 01:53 PM 2/27/2003 -0600, Paul wrote:
> >two genuine newbie questions :)
> >
> >FYI: I'm running Slackware 8.1, (kernel = 2.4.18, iptables = 1.2.6a,
dhcpd
> >ISC v3.0pl1)
> >
> >Q1. I've been tweaking my rc.firewall script a bit lately and am
wondering
> >if there is a way to have my new one take effect without rebooting?
>
> It's been some time since I last looked at an rc.firewall script ... but
> usually they are written so you can just run them from the command line
(as
> root, of course). They pretty much have to be able to reinstall themselves
> this way, as a change in DHCP lease address usually requires running them
> to regenerate the rulesets for use with the new IP address, and you don't
> want to reboot every time your DHCP lease changes (even Windows isn't
> *that* stupid).
>
>
> >Q2. Second, I'm still trying to get my dhcp server running, and am
wondering
> >what is the best way to stop the service and restart it.  I've been
killing
> >the process, but there has to be a better way.  In looking for the answer
to
> >this, I've seen postings saying to run, "dhcpd stop" but that doesn't
seem
> >to work with this one.
>
>
> I'd be surprised to see any postings that say simply  "dhcpd stop". More
> likely, they say something like "/etc/init.d/dhcpd stop", explaining how
to
> do it on distros (the example I just typed is for Debian; RH and others
are
> slightly different) that use init scripts with the start/stop/restart
> structure. The script just sends a SIGTERM to the daemon (the same signal
> kill sends by default).
>
> Slackware doesn't do it this way (or didn't used to, back when I used it),
> so you pretty much are limited to kill'ing it, then starting it directly.
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
