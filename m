From: caszonyi@rdslink.ro
Subject: Re: starting and stopping networking
Date: Sun, 4 Jan 2004 22:49:12 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401042248010.876@grinch.ro>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <Pine.LNX.4.58.0312311325080.465@debian-box> <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <5.1.0.14.1.20040101154809.02021888@celine> <Pine.LNX.4.58.0401041431470.681@debian-opt>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401041431470.681@debian-opt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Sun, 4 Jan 2004, James Miller wrote:

> Lemme see if I can frame this question coherently.  I've got a Debian Sid
> machine on a LAN behind a firewalling router (router does dhcp offers,
> too).  That router's acting really flaky (it was given to me as a freebie
> because it was acting flaky).  I'm thinking of just hooking that machine
> directly to the 'net (university network) for the next week or so while
> await the arrival of a router that works normally.  Of course I don't wish
> for the machine to be on the WAN unprotected.  At the same time, I don't
> want to install a firewall on it because that could complicate setting up
> the LAN, once the normally-operating router/firewall arrives.  What I'm
> thinking of doing is maybe creating a script that will start/stop network
> services and make a dhcp request, that could be run in the interim while
> I'm awaiting the new router.  In other words, I would stop networking when
> I'm not actively doing something on the 'net, restart it when I need to do
> something on the 'net.  So my basic question is: how do I stop networking
> services on Debian Sid (I know how on Slackware, but Debian differs)?
> How do I restart them later, and send a new dhcp request at the same time?
> Any input on my interim networking method for this machine would be
> appreciated, as would pointers for accomplishing what I've outlined above,
> if that proves advisable/feasible.
>

to stop network
ifconfig eth0 down
to start

ifconfig eth0 up

> Thanks, James
> -

Calin
--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
