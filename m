From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: How to forward port 80 on Linux Redhat 9?
Date: Wed, 28 Jul 2004 13:48:06 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPCEMBDBAA.eatley@wowcorp.com>
References: <5.1.0.14.1.20040728093522.01fc0610@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040728093522.01fc0610@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


Ray, thanks for the assistance. Some questions...

>iptables -t nat -A PREROUTING -p tcp --destination 209.158.555.123 \
  --destination-port 80 -j DNAT --to-destination 192.168.10.28

I'll implement this. I'm not aware of how to make it 'stick'; doesn't this
change after I reboot Redhat? Does this require a save?

>You also need a rule in the default table that ACCEPTs incoming port-80
>traffic. Our actual ruleset here is sufficiently nonstandard that it will

And where might this default table be, so I can edit it?

>One moe clarification: iptables rules function as a set, not in isolation.

So does this mean I must make a particular IP table for this case?
iptables -L gives me a whole lot of info, for which I see nothing specific
to port 80. I'll send the iptables listing if needed.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
