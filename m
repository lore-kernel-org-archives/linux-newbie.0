From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Help with Roaring Penguin & Red Hat 8.0?
Date: Tue, 26 Nov 2002 18:02:34 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE3FD89.C9DC25B@gelm.net>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com> <3DE16550.FD5B402E@gelm.net> <200211252153.gAPLr4904660@hartford-hwp.com> <3DE2C664.41479620@gelm.net> <200211262150.gAQLoiC02556@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org



Haines Brown wrote:
> 
> Well, made some progress, but not quite there yet.
<snip>
> Unfortunately, though, that's as far as I get. For example, when I try
> to ping something, ping just hangs. adsl-status tells me the link is
          ^^^^^^^^^  ^^^^^^^^^^^^^^^
What are you trying to ping, an IP address or a domain name?
This could be a routing problem.

> down, even though ppp0 has a valid IP address.
<snip>
> eth0 has the address 168.192.0.1 on my present machine because at one
> time eto0 was the intrface for a LAN. That it comes up with that
> address one my this machine, even though it is stand-alone, 
> does not seem to prevent DSL from working. In any case, on the new 
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
What does work?

> machine I'm trying to get to work, the eth0 now comes up with no
> address.

 What version of rp-pppoe are you trying to run?

Chuck

> Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
