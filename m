From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to forward port 80 on Linux Redhat 9?
Date: Wed, 28 Jul 2004 09:47:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040728093522.01fc0610@celine>
References: <GNEPLLCIIBHICCOGIAKPGELODBAA.eatley@wowcorp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPGELODBAA.eatley@wowcorp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:58 AM 7/28/2004 -0400, Eve Atley wrote:
>Hello all,
>
>We use Redhat 9 as our server and router, and Bastille as our firewall on
>that box. I have set up Bastille so it allows port 80 requests from our
>external IP (ie. 209.158.555.123). However, I can't figure out how to
>forward port 80 to an internal machine (ie. 192.168.10.28).
>
>I have been reading online articles first, and I guess it has something to
>do with iptables? I have seen the /etc/rc.d/rc.local file, and it looks like
>greek to me. I believe I need to do something like this:
>
>iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to
>10.0.4.2:80
>
>But it all has [0.0] and such before it, with a final line of COMMIT.

I don't understand this last sentence. But the rule that precedes it is 
*almost* what you need. Here, we use this rule (forwarding mutiple ports to 
the same DMZ host):

iptables -t nat -A PREROUTING -p tcp --destination A.B.C.D -m multiport\
  --destination-port 22,25,80,443 -j DNAT --to-destination a.b.c.d

(I've replaced the source and destination addresses with dummy values)

There are probably many variants that would work for you. Based on what we 
use here, one of them should be:

iptables -t nat -A PREROUTING -p tcp --destination 209.158.555.123 \
  --destination-port 80 -j DNAT --to-destination 192.168.10.28

You also need a rule in the default table that ACCEPTs incoming port-80 
traffic. Our actual ruleset here is sufficiently nonstandard that it will 
not serve as an example for you, but that is a basic enough rule that you 
should have no troubnle adding it if you need to.

>I have examined /etc/sysctl.conf and see that port forwarding is turned on.
>
>Can somebody point me in the right direction as to what file I must
>configure, or what commands I must use to forward port 80 to 192.168.10.28?
>
>I have tried from an external terminal, and I can't even access the server
>(ie. 209.185.555.123). I have no entry in hosts.allow for HTTPD as I wasn't
>sure what syntax to be using. Is it:
>httpd: ALL ?

One moe clarification: iptables rules function as a set, not in isolation. 
For the above rule, or any similar rule, to work, there must be no prior 
rules in the table that match the packet and direct it elsewhere. If a 
prior rule matches these packets, they will never rwach this rule so not be 
DNAT'd.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
