From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cant get internet access on my router
Date: Sun, 17 Oct 2004 08:09:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041017075745.07cbaed0@celine>
References: <ckthj0$v02$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <ckthj0$v02$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Ole Martin Handeland <oli@oasenlan.com>, linux-newbie@vger.kernel.org

At 12:29 PM 10/17/2004 +0200, Ole Martin Handeland wrote:
>Hi,
>
>I cant seem to get internet access on my gateway machine, using fc2 and
>iptables firewall. I have a eth0 connection (and a ppp0 connection using
>eth0 to connect to my adsl provider) and a eth1 connection which i use
>to connect to my local network (with a dhcp server on this gateway).
>
>i have gotten this gateway to connect to the net, and the network from
>eth1 gets internet access. my problem is that my gateway dont get net
>access itself. when i set default action to allow in my iptable,
>everything works.
>anyone knows which rule(s) i should apply to get internet access working
>on this gateway?


The core problem you face is that different chains, not just different 
rules, are involved.

When other hosts on your LAN use this gateway to connect to the Internet, 
the packets are processed by the FORWARD chain in the default table (and by 
the  PREROUTING and POSTROUTING chains in the nat table).

When the host itself tries to connect to the Internet, the packets are 
processed by the INPUT and OUTPUT chains in the default table.

So ... if "everything works" when you set the default action to ACCEPT 
(there is no action "allow", so I assume you mean ACCEPT), then it probably 
means you do not have specific ACCEPT rules in suitable places in the INPUT 
and OUTPUT chains. That's not odd for a router ... mine is set up that way, 
allowing direct access for only a few things the router absolutely needs, 
like DNS resolution. But it is inconvenient for a general-purpose host that 
is also acting as a router.

The exact rules you need to add, and where you need to add them, depends on 
what you do have in the INPUT and OUTPUT chains (which you can check best 
with "iptables -nvL"). If you want finer control than a genrealized ACCEPT 
policy, the actual rules need to be tailored to what you want to allow, 
what to disallow, and you haven't told us your situation in that regard.

Describe more what you want to accomplish, and tell us the rules you 
currently have in the INPUT and OUTPUT chains, and I -- or someone here -- 
may be able to give you more specific advice that fits your needs. As it 
is, anything anybody suggests will be guesswork.

Oh, one final thing. Since you are using PPPoE for your Internet 
connection, iptables does need to know to update its ruleset after PPPoE 
negotiation is complete. It also needs to know that ppp0, not eth0, is your 
external interface. It probably does all of this, since NATing the LAN 
works, but it is always *possible* that you have a problem there. Once 
again, only examination of the rulesets in the relevant tables/chains will 
tell.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
