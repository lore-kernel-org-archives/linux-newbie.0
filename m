From: Ray Olszewski <ray@comarre.com>
Subject: Re: 'ssh' uses port 20 only?
Date: Tue, 04 Jan 2005 10:53:53 -0800
Message-ID: <5.1.0.14.1.20050104104237.021c9f00@celine>
References: <200501030733.09945.pa3gcu@zeelandnet.nl>
 <20041231045512.81128.qmail@web52901.mail.yahoo.com>
 <4b0d6e0d05010200016a7c3abe@mail.gmail.com>
 <20050102093240.1675fba2@sarge>
 <200501030733.09945.pa3gcu@zeelandnet.nl> <41DAD832.7030302@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41DAD832.7030302@gelm.net>
References: <200501030733.09945.pa3gcu@zeelandnet.nl>
 <20041231045512.81128.qmail@web52901.mail.yahoo.com>
 <4b0d6e0d05010200016a7c3abe@mail.gmail.com>
 <20050102093240.1675fba2@sarge>
 <200501030733.09945.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-57757D66"
Content-Transfer-Encoding: 7bit
To: chuck@gelm.net, linux-newbie@vger.kernel.org

At 12:53 PM 1/4/2005 -0500, chuck gelm wrote:

>Howdy, Y'all:
>
>  My brother and I are on separate networks
>(I am in Ohio and he is in Oklamoma, ~1600 miles apart).
>I am trying to allow my brother to 'ssh' with a host inside my LAN.
>On my router I am NAT'ing only port 22; via IPTABLES thusly:
>
># forward ssh (22) to 'server'
>/usr/sbin/iptables -t nat -A PREROUTING -i eth1 -p tcp --dport 22 -j DNAT 
>--to 192.168.0.84
>/usr/sbin/iptables -t nat -A PREROUTING -i eth1 -p udp --dport 22 -j DNAT 
>--to 192.168.0.84
>
>  I can 'ssh' into my brother's host inside his LAN, but he is
>NAT'ing ports 20 through 23 (ftp, ssh, & telnet).  Does 'ssh'
>also use ports 20,21, and/or 23 ?

No. 20 and 21 are ftp. 23 is telnet. ssh uses none of them.

>Do I need to NAT more ports?

No.

But you *do* (probably; actually, it depends on the rest of the ruleset) 
need to add an entry to the FORWARD table, one something like this:

         iptables -A FORWARD -i eth1 -p tcp --dport 22 -j ACCEPT

(I infer from your DNAT rule that eth1 is your external interface.) You 
*probably* have a FORWARD-table rule or policy blocking all originating 
connections from the outside, and this rule needs to precede that one so 
port 22 will be an exception to it.

Were I you, I would consider modifying this rule so it only ACCEPTed ssh 
traffic originating from your brother's source IP address ... but you need 
to make your own security decisions, so I offer that only as a suggestion.

>Here is my brother's portion of IPTABLES, which works remotely for me:
>
># forward ftp,ssh,telnet
>/usr/sbin/iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 20:23 -j 
>DNAT --to 192.168.0.48
>/usr/sbin/iptables -t nat -A PREROUTING -i eth0 -p udp --dport 20:23 -j 
>DNAT --to 192.168.0.48
>
>'man ssh' did not indicate any port numbers.
>
>I can 'ssh' with my host via eth0, so 'ssh' is working on the
>intended host.
>Regards, Chuck





-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.7 - Release Date: 12/30/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
