From: Haines Brown <brownh@hartford-hwp.com>
Subject: firewall blocks ppp0?
Date: Sat, 23 Nov 2002 18:55:59 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211232355.gANNtx703441@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I'm setting up a copy of RedHat 8.0 on a machine that is intended as a
standalone machine with DSL access to Internet.

I have eth0 up and running, and did the adsl-setup with my usual valid
information. The problem comes trying to make ppp0 active. It tries,
but cycles between active and inactive.

When I run adsl-start with debugging, it tells me that I'm set up for
demand-connection. I definitely have eth0 set to be permanently
up. Does this alert refer instead to ppp0? If so, perhaps this is what
I'd expect. Is that right?

I'm also told: ipchains: Protocol not available

That sounds to me as if my firewall (which I set to be "high"
protection), may be blocking the ppp protocol. Does this seem to be
the case?

I went to pursue this, and ran ipchains -L, but got the error message
that this command is incompabible with my kernel.

What to do?

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
