From: Ray Olszewski <ray@comarre.com>
Subject: Re: help with iptables - squid
Date: Sat, 20 Dec 2003 18:21:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031220175739.01fbf2a8@celine>
References: <1071970584.3021.4.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071970584.3021.4.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:36 PM 12/20/2003 -0500, Ramzez wrote:
>Hi friends...
>
>   I've configure squid in a pentium (100Mhz, 98Mb-RAM, 1Gb-HD) to works
>as http_proxy for 10-15 users of my LAN (what do you think about that?
>is it enough?).

Depends on what else the server does, what traffic levels your 10-15 users 
generate, how fast your Internet conenction is, and what reason you have 
for using a proxy. With that little RAM and HD space, squid's ability to 
cache will be limited. But it still will provide the security features of a 
proxy quite nicely.

>   Now, I wanna make a firewall in the same machine because it connects
>to internet (my ISP)... the services of my LAN are internet, and
>send/receive e-mails.
>
>   I'm newbie with iptables, so:
>   Can you help me and say me which rules I need?

You haven't told us enough for a definitive answer. If, as I infer, this 
host is currently also your router, then it probably has some iptables 
rules running now ... at least rules to MASQ or SNAT LAN traffic to the 
Internet (or do all your LAN hosts have routable IP addresses?). Check your 
basic ruleset with

         iptables -nvL

Check your NAT'ing rules with

         iptables -t nat -nvL

Among the details you need to consider are:

         1. What outgoing services from LAN hosts do you want to allow 
("services of my LAN are internet" is meaningless)?

         2. What outgoing services from LAN hosts do you want to force 
users to use the proxy server for?

         3. Are there any outgoing services that you specifically want to 
diaallow and/or monitor?

         4. When you say "send/receive e-mails" ... how? An SMTP server on 
the router/firewall? One on another host on the LAN? One on a separate 
"DMZ" network? Using your ISP's sparthost relay directly for outgoing mail 
and its POP3/IMAP server for incoming mail? Something else?

         5. How does your network do DNS? Specicially, how do hosts resolve 
on-LAN addresses? How do they resolve off-LAN addresses? Do you run 
authoritative DNS for any domain and, if yes, does it run on the 
router/firewall, a LAN host, or a DMZ host?

         6. Do other services (in addition to the possibilities we've 
already covered) need to be port forwarded to LAN or DMZ hosts (or accepted 
by the router itself)? The most common example are http, https, and 
ssh.  Also remember that many online games and P2P applications require 
port forwarding, and a few newer ones (e.g., SIP phones for VoIP) can be 
real nightmares.

         7. Is there anything unusual about your external connection? An 
example of "unusual" would be a case where the ISP uses non-routable 
addresses between you and it, then NATs them at its end.

         8. Does the router/firewall have a static or a dynamic IP address? 
If dynamic, assigned how (DHCP? PPPoE? something else?)?

         9. Was my initial assumption -- that you have a single public IP 
address and LAN hosts use NAT with it -- correct? If not, what are the 
relevant details of your Internet access?

I've probably left out some things, but that list is a good start.

The best drop-in firewall I know of for iptables is Shorewall 
(shorewall.sourceforge.net), though I think there are several others around 
too. It, rather than bespoke rulesets,  might be the way to go for you ... 
its guide and configuration options will take care of most of the likely 
answers to my questions. That said, I personally prefer bespoke firewalls 
... they are not much harder to set up than a complex package like 
SHorewall, and you end up learning how iptables works, not just how a 
specific front-end to iptables works.

For learning iptables, I'd start by rounding up the usual suspects -- the 
man page and the HowTo. Last time I looked at both (recently for the man 
page, but some time ago for the HowTo), I though both were pretty good ... 
much better than the corresponding stuff for ipchains, this despite 
iptables being a somewhat more complex system.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
