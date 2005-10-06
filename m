From: Peter <heisspf@skyinet.net>
Subject: Netconfig Fail
Date: Thu, 6 Oct 2005 09:15:12 -0400
Message-ID: <20051006091512.7dd839e8.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi,

Slackware 10.1 kernel 2.4.29

My onboard LAN card on the mobo failed and I had to switch to an external LAN card.

I disabled in BIOS Ethernet onboard. Then I did netconfig. Slackware found the LAN card I entered all necessary data and the configuration went w/o any errors.

However, I cannot connect to the Internet. On booting after the MAC address was found it should produce the the IP address which it does not. It just sits for a while then continues booting. The same happens when I do /etc/rc.d/rc.inet1.

Ifconfig naturally shows no connection just the loop-back.

Where is the hitch?

I had no problem in Fedora4 to configure the new Lan card and in the gem Damned Small Linux distro, where I am now, the new LAN card was found w/o me doing anything.

Help for slackware appreciated.

Thanks & regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
