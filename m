From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Help with Roaring Penguin & Red Hat 8.0?
Date: Tue, 26 Nov 2002 21:28:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211270228.gAR2SgW05100@hartford-hwp.com>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com> <3DE16550.FD5B402E@gelm.net> <200211252153.gAPLr4904660@hartford-hwp.com> <3DE2C664.41479620@gelm.net> <200211262150.gAQLoiC02556@hartford-hwp.com> <3DE3FD89.C9DC25B@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE3FD89.C9DC25B@gelm.net> (message from Chuck Gelm on Tue, 26
	Nov 2002 18:02:34 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org

> > Well, made some progress, but not quite there yet.  <snip> >
> Unfortunately, though, that's as far as I get. For example, when I
> try > to ping something, ping just hangs. adsl-status tells me the
> link is ^^^^^^^^^ ^^^^^^^^^^^^^^^ What are you trying to ping, an IP
> address or a domain name?  This could be a routing problem.

I first tried a common domain name, and when that didn't work, the IP
address of my DNS, which is valid for sure.

> > down, even though ppp0 has a valid IP address.  <snip> > eth0 has
> the address 168.192.0.1 on my present machine because at one > time
> eto0 was the intrface for a LAN. That it comes up with that >
> address one my this machine, even though it is stand-alone, > does
> not seem to prevent DSL from working. In any case, on the new
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ What does work?

Simply having a handshake with the DSL server and obtaining from it an
IP address. So hardware (and port, I assume) work.
> 
> > machine I'm trying to get to work, the eth0 now comes up with no
> > address.
> 
>  What version of rp-pppoe are you trying to run?

I'll find out when I manage to boot the other HD, but it is the
default roaring penguin packaged with RH 8.0.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
