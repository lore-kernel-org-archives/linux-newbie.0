From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: firewall blocks ppp0?
Date: Sun, 24 Nov 2002 13:01:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211241801.gAOI1Wa28470@hartford-hwp.com>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE102FA.85D8F85D@gelm.net> (message from Chuck Gelm on Sun, 24
	Nov 2002 11:48:58 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@hartford-hwp.com

Chuck,

>  I use Roaring Penguin PPPOE. http://www.roaringpenguin.com/pppoe/ I
> selected permanent connection, but I am unsure if this applies to
> eth# or ppp#. :-| 'adsl-setup' and 'adsl-start' are script names
> with my application (Roaring Penguin).  I am assuming that your
> using the same or similar.
> 
>  How do you know "I definitely have eth0 set to be permanently up" ?
>  Actually, I'm betting that it is ppp# that is set to demand or
>  permanent.

Yes, I also use the roaring penguin, My eth0 is made active during
boot, for I can run ifconfig and see that it is up as soon as I've
finished booting. The ppp0, on the other hand, is not up until
adsl-start is run. That is, ppp0 is on demand, while eth0 is
permanent. That's my impression, anyway. pppd is a daemon which I
assume is meant normally to be on demand.

Actually, when I run redhat-configuration-network, I see not only
eth0, but also ppp0 (trying to be active). That's not right. ppp0
should not appear (or at least it does not show up under RH7.3 as I
speak to you). I may have some kind of problem in that pppd is trying
to start ppp, rather than my starting pppoe by means of adsl-start

>  It seems that your dsl connection (PPPOE?) application is setting
> up IPCHAINS, but your kernel is using IPTABLES.

That may be, but then a good percentage of folks who get RedHat 8.0
must reconfigure and recompile their kernel, which I doubt.

> - configure IPTABLES to replace your dsl-connection application's
> attempt to use IPCHAINS.

This was my inclination, for I gather IPTables are better. I've got a
copy of Bastille, which should make my life a lot easier, not only
spotting the source of any difficulty, but setting up a secure set of
rules.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
