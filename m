From: Ray Olszewski <ray@comarre.com>
Subject: Re: firewall blocks ppp0?
Date: Mon, 25 Nov 2002 14:44:16 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021125140320.0210c410@celine>
References: <5.1.0.14.1.20021124102855.02154730@celine>
 <3DE102FA.85D8F85D@gelm.net>
 <200211232355.gANNtx703441@hartford-hwp.com>
 <3DE102FA.85D8F85D@gelm.net>
 <5.1.0.14.1.20021124102855.02154730@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211252057.gAPKvMu04359@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK. Just as a reminder ... I don't run Red Hat here, and I don't currently 
run PPPoE on my Debian-based router. So I can't help with specifics at the 
level of what config file the RH-8.0 version or RP-PPPoE uses.

Having said that, I think you yourself have spotted the problem. A severely 
edited version of your report, below, focuses on it.

At 03:57 PM 11/25/02 -0500, Haines Brown wrote:
[...]
> > Script /usr/sbin/pppoe
> >       -p
> >       -I eth0
> >       -T 20
> >       -U
> >       -m 1412
> >       -D 0-0
> >       finished (pid 4906), status = 0x1

The problem you have here is with the -T setting. It tells pppoe to exit if 
there is no link-layer (ppp) traffic for 20 seconds.  As you go on to 
comment ...

>I don't understand why a successful connection results in a
>hangup. The -T timeout option of 20 seconds seems about the time it takes for
>my connection to die. I gather that timeout can cause trouble if
>there's no traffic. The solution is to use lcp-echo-internal option
>for pppd. The pppoe timeout should be about four times the LCP echo
>interval. Any idea where one implements the LCP echo option?

This is a pppd option ("lcp-echo-interval", not "lcp-echo-internal", BTW). 
Put it wherever the RH-8.0 implementation of pppd stores its settings (on 
my Debian system, this would be in /etc/ppp/options, but YMMV ... check 
*your* version of the pppd man page for this info).
[...]


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
