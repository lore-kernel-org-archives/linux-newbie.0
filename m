From: chuck gelm <chuck@gelm.net>
Subject: 'ssh' uses port 20 only?
Date: Tue, 04 Jan 2005 12:53:54 -0500
Message-ID: <41DAD832.7030302@gelm.net>
References: <20041231045512.81128.qmail@web52901.mail.yahoo.com> <4b0d6e0d05010200016a7c3abe@mail.gmail.com> <20050102093240.1675fba2@sarge> <200501030733.09945.pa3gcu@zeelandnet.nl>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200501030733.09945.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Howdy, Y'all:

  My brother and I are on separate networks
(I am in Ohio and he is in Oklamoma, ~1600 miles apart).
I am trying to allow my brother to 'ssh' with a host inside my LAN.
On my router I am NAT'ing only port 22; via IPTABLES thusly:

# forward ssh (22) to 'server'
/usr/sbin/iptables -t nat -A PREROUTING -i eth1 -p tcp --dport 22 -j 
DNAT --to 192.168.0.84
/usr/sbin/iptables -t nat -A PREROUTING -i eth1 -p udp --dport 22 -j 
DNAT --to 192.168.0.84

  I can 'ssh' into my brother's host inside his LAN, but he is
NAT'ing ports 20 through 23 (ftp, ssh, & telnet).  Does 'ssh'
also use ports 20,21, and/or 23 ?
Do I need to NAT more ports?

Here is my brother's portion of IPTABLES, which works remotely for me:

# forward ftp,ssh,telnet
/usr/sbin/iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 20:23 -j 
DNAT --to 192.168.0.48
/usr/sbin/iptables -t nat -A PREROUTING -i eth0 -p udp --dport 20:23 -j 
DNAT --to 192.168.0.48

'man ssh' did not indicate any port numbers.

I can 'ssh' with my host via eth0, so 'ssh' is working on the
intended host.
Regards, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
