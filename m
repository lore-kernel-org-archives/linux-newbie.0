From: Ole Martin Handeland <oli@oasenlan.com>
Subject: Cant get internet access on my router
Date: Sun, 17 Oct 2004 12:29:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <ckthj0$v02$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I cant seem to get internet access on my gateway machine, using fc2 and
iptables firewall. I have a eth0 connection (and a ppp0 connection using
eth0 to connect to my adsl provider) and a eth1 connection which i use
to connect to my local network (with a dhcp server on this gateway).

i have gotten this gateway to connect to the net, and the network from
eth1 gets internet access. my problem is that my gateway dont get net
access itself. when i set default action to allow in my iptable,
everything works.
anyone knows which rule(s) i should apply to get internet access working
on this gateway?

Ole Martin Handeland

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
