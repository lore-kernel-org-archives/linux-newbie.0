From: chuck gelm <chuck@gelm.net>
Subject: Re: Netconfig Fail
Date: Fri, 07 Oct 2005 07:20:53 -0400
Message-ID: <43465A15.5090708@gelm.net>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>	<4344D330.2050005@comarre.com> <20051007122344.3780b5c0.heisspf@skyinet.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051007122344.3780b5c0.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi, Peter & Ray:

  Peter, if you add this line to /etc/rc.d/syslog.conf,

local0.*     /var/log/dhcpcd.log

  then when you 'dhcpcd -d eth[01] it will put debug lines
  into /var/log/dhcpcd.log  (See 'man dhcpcd')

> Yes neither in Fedora nor in DSL had I to enter anything. In Fedora I just
> had to activate eth1, eth0 was taken by the onboard LAN card.

  It seems to me that Fedora is finding your add-on PCI card and
assigning it eth0, yet Slackware is assigning it eth1 !?

  I expected, since you disabled the on-board ether device,
all distributions would only find a 'eth0'.

  So, if Slackware assigns it 'eth1' and your rc.inet1.conf assigns
DHCP to eth0, it will not work.

  Run dhcpcd from a console. If Slackware sees your PCI NIC as eth1;
dhcpcd eth1

  If that works, you can either edit rc.inet1.conf or add
'dhcpcd eth1' to rc.local.

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
