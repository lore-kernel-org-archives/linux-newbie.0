From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: tuning iptables
Date: Sun, 08 Dec 2002 16:31:12 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF3BA20.899AE703@gelm.net>
References: <5.1.0.14.1.20021208095040.020abec0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

ooopps:
<snip>
> Just to be clear -- this problem has NOTHING WHATSOEVER to do with
> ipchains, at least not when the INPUT chain has only an ACCEPT policy
  iptables
> running. The only way ipchains *could* affect this is if you had rules that
                        iptables
> interfered with traffic on the "lo" interface.

?

 This is probably not of benefit, but
'adsl-start' is, probably, not affecting IPTABLES.
It, probably, is attempting to affect IPCHAINS and failing.
:-|

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
