From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: firewall blocks ppp0?
Date: Mon, 25 Nov 2002 19:30:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE2C0AD.75FD0857@gelm.net>
References: <3DE102FA.85D8F85D@gelm.net>
	 <200211232355.gANNtx703441@hartford-hwp.com>
	 <3DE102FA.85D8F85D@gelm.net> <5.1.0.14.1.20021124102855.02154730@celine> <200211252057.gAPKvMu04359@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: ray@comarre.com, linux-newbie@vger.kernel.org



Haines Brown wrote:
<big snip> 
 
> I originally had diven my machine an IP address (something like
> 168.192.0.1) because I've had my mahcine on a LAN, but now am just
> happy to get it to work as a stand-along workstation. When eth0 had an
> address, ifconfig recported it; when I made a DSL connection, the
> number changed to whatever my provider provides. I subsequently tried
> to cut the IP address, and I believe (not sure) that now ifconfig
> shows the eth0 as up, but with noi address until pppoe is started.

 eth0 never gets an IP address in my situation.
 Are you 'forcing' an IP address on via 'ip-up' or something?
 RP-PPPOE assigns an IP address to ppp0, not eth0.

 After 'normal' install of rp-pppoe-3.5  ;-) 
 Run:     I put adsl-start in my /etc/rd.d/rc.local script.
 I edited no files (other than rc.local) to get RP-PPPOE to work.
:-|
 This how it works for me.  Perhaps your is different. But....
Again I mention that the eth# device that attaches to the DSL modem
does not have an IP address.  Ala:

This is my LAN NIC:
eth0 Link encap:Ethernet  HWaddr 00:20:AF:10:63:D3  
     inet addr:192.168.0.1  Bcast:192.168.0.255  Mask:255.255.255.0
     UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
     RX packets:10581519 errors:14 dropped:0 overruns:14 frame:14
     TX packets:11506381 errors:0 dropped:0 overruns:0 carrier:0
     collisions:1837 txqueuelen:100 
     RX bytes:2017650304 (1924.1 Mb)  TX bytes:3952593210 (3769.4 Mb)
     Interrupt:5 Base address:0x300 

This is my DSL NIC:
eth1 Link encap:Ethernet  HWaddr 00:20:AF:19:F4:58  
     UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
     RX packets:2260684 errors:4 dropped:0 overruns:4 frame:4
     TX packets:1435674 errors:0 dropped:0 overruns:0 carrier:3
     collisions:8 txqueuelen:100 
     RX bytes:3069518901 (2927.3 Mb)  TX bytes:115487500 (110.1 Mb)
     Interrupt:10 Base address:0x200 

It is my ppp# device that gets an IP address from my DSL-ISP provider:
ppp0 Link encap:Point-to-Point Protocol  
     inet addr:123.456.789.210  P-t-P:123.456.789.1 
Mask:255.255.255.255
     UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
     RX packets:2253580 errors:0 dropped:0 overruns:0 frame:0
     TX packets:1429007 errors:0 dropped:0 overruns:0 carrier:0
     collisions:0 txqueuelen:10 
     RX bytes:3465872234 (3305.3 Mb)  TX bytes:118613004 (113.1 Mb)

HTH, Chuck

> Haines Brown
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
