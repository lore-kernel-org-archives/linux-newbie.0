From: James Miller <jamtat@mailandnews.com>
Subject: RE: stopping diald
Date: Mon, 10 Mar 2003 11:52:14 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0303101138340.18544@homenet>
References: <5.1.0.14.1.20030309081846.01e7aab8@celine>
 <Pine.LNX.4.53.0303081157280.18544@homenet> <5.1.0.14.1.20030309081846.01e7aab8@celine>
 <5.1.0.14.1.20030310084927.01e7ade0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030310084927.01e7ade0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Thanks again for your response, Ray
On Mon, 10 Mar 2003, Ray Olszewski wrote:

> diald to support on-demand connections through a Linux-based router. But I
> was also surprised to see that duald is being maintained -- the last Debian
> update to is was about a year ago, much more recent than I'd have guessed.
>
Yes, I got the diald I have via apt-get.

> I do not understand the juxtapositioning here. ipchains (or the newer
> iptables, for 2.4.x kernels) is a useful tool for firewalling. But it does
> not bring interfaces up and down, so it will in no way substitute for the
> functionality of pppd or diald in that respect.
>
Well, pppd or diald make the connection to the internet on the gateway.
But once connected, the gateway needs to be able to pass packets
designated for the computer on the LAN that requested the connection, right?
For that, I understood I'd need something like ipchains or iptables - to
route packets to where they're supposed to go on my LAN. I didn't have any
notion that ipchains would be involved in shutting down the connection to
the ISP - sorry if I confused things there. I also may be butchering
basic networking conceptions and terminology. I'm very new to the whole
thing. Perhaps I'll decide eventually that it's just beyond me, or that I
won't be able to pull it off securely enough. At that point, I'll give up.
But for now, I want to understand things better and to actually implement
those things, if possible and advisable.

> "user" is ill-defined here (because there are multiple hosts involved). It
> should be easy to write a script or program that will let a user who is
> logged into the gateway host bring doen the ppp connection to the ISP. It
> is vastly more difficult -- I was tempted to say "impossible", but that's
> an overstatement -- to create a way for a user on a different host to bring
> the pppd connection down.
>
I'll have to think further on this. I can't really say I understand what
you're saying.

More questions later, undoubtedly.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
