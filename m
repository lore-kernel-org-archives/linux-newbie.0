From: Petre Bandac <g38@rdsbv.ro>
Subject: forwarding question
Date: Wed, 10 Dec 2003 00:21:55 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200312100021.55957.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: petre@kgb.ro

hello

I have the following problem:

I want all the http traffic (dport 80) to be redirected to some other machine, 
from where the packets should go out on the internet

I have tried to SNAT, but it seems that it isn't possible only with iptables

on the second machine there should be squid running to take care of the 
incoming packets, or what ?

(please cc to me, because though I'm subscribed to this list, messages stopped 
arriving to me since april 19th)

thanks in advance,

petre

-- 
12:18AM  up 14:04, 1 user, load averages: 1.68, 1.48, 1.04

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
