From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Help with Roaring Penguin & Red Hat 8.0?
Date: Tue, 26 Nov 2002 16:50:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211262150.gAQLoiC02556@hartford-hwp.com>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com> <3DE16550.FD5B402E@gelm.net> <200211252153.gAPLr4904660@hartford-hwp.com> <3DE2C664.41479620@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE2C664.41479620@gelm.net> (message from Chuck Gelm on Mon, 25
	Nov 2002 19:55:00 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org


Well, made some progress, but not quite there yet.

I find that adsl-configure does not write the configuration file as it
should in /etc/ppp/pppoe.conf. I had to get the default sample and
reconstruct it by hand.

Not only does adsl-configure not write a configuration file, but
adsl-stop does not work either. That is, using the new configuration
file, I run adsl-start, and then when I check with ifconfig, I see
that I indeed now have ppp0 running, and it has been given an IP
address by my DSL provider.

Unfortunately, though, that's as far as I get. For example, when I try
to ping something, ping just hangs. adsl-status tells me the link is
down, even though ppp0 has a valid IP address.

Then when I run adsl-stop, it has no effect! The ppp0 process won't
die! The only way I can get rid of it is to run ifconfig down
ppp0. That does remove the entry in the table that comes up when I run
ifconfig.

However, it does not really remove the process from memory. So, if I
run adsl-start again, it creates ppp1, even though ifconfig does not
list ppp0. If I do it gain, I get ppp2, etc. Each time I run
adsl-start, it creates a new thread that is numbered in sequence, but
adsl-stop does not kill the thread. Each of these pppN processes has
its own assigned IP address.
 
>  I'm still holding on to these concepts:
> 
> - RP-PPPOE creates an IPCHAINS ruleset & Red Hat 8.0 uses IPTABLES.
> i.e. You never end up with 'valid' instructions to the kernel about
> handling packets with your DSL modem.

This terrifies me, knowing absolutely nothing of ip
tables. Furthermore, it strikes me as very odd that RH 8.0 would ship
with an application (rp is part of the distribution of RH 8.0) that is
incompatible with the shipped kernel. Mistakes can occur, of course,
but wouldn't we have heard about it by now?

Is there any way I can verify that iptables is in fact blocking
packets sent by pppoe, or that roaring penguin depends on ipchains? I
gather that ipchains and iptables can co-exist, so how do I verify
that the specific rules are in conflict?

> - eth0 should not have an IP address.  ppp0 gets the IP address.
> Notice that my eth1 device does appear in my 'netstat -nr' report,
> and that my ppp0 device does.

eth0 has the address 168.192.0.1 on my present machine because at one
time eto0 was the intrface for a LAN. That it comes up with that
address one my this machine, even though it is stand-alone, does not
seem to prevent DSL from working. In any case, on the new machine I'm
trying to get to work, the eth0 now comes up with no address.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
