From: Anton Martchukov <vhlist@yandex.ru>
Subject: [extra] PPP server doesn't work
Date: Sun, 28 Mar 2004 15:16:38 +0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403281516.39979.vhlist@yandex.ru>
References: <5.1.0.14.1.20040327055706.01f263a0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040327055706.01f263a0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Sorry for extra traffic to the list.

I've only one machine 192.168.1.1 with ethernet card attached to it, but 
with no other hosts in network 192.168.0.0/16. This machine is PPP 
server which assigns IP address 192.168.10.1 for connected client and 
tries to do proxyarp with no success. Here is some info I collected out 
after the ppp connection has been established:

ifconfig -a on 192.168.1.1

eth0 Link encap:Ethernet  HWaddr 00:00:21:67:2C:49
     inet addr:192.168.1.1  Bcast:192.168.255.255  Mask:255.255.0.0
     UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
     RX packets:0 errors:0 dropped:0 overruns:0 frame:0
     TX packets:0 errors:69 dropped:0 overruns:0 carrier:69
     collisions:1104 txqueuelen:100
     RX bytes:0 (0.0 b)  TX bytes:4140 (4.0 Kb)
     Interrupt:5 Base address:0x300 

lo   link encap:Local Loopback inet addr:127.0.0.1  Mask:255.0.0.0
     UP LOOPBACK RUNNING  MTU:16436  Metric:1
     RX packets:98873 errors:0 dropped:0 overruns:0 frame:0
     TX packets:98873 errors:0 dropped:0 overruns:0 carrier:0
     collisions:0 txqueuelen:0
     RX bytes:11084300 (10.5 Mb)  TX bytes:11084300 (10.5 Mb)

ppp0 link encap:Point-to-Point Protocol inet addr:192.168.1.1
     P-t-P:192.168.10.1  Mask:255.255.255.255
     UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
     RX packets:5 errors:0 dropped:0 overruns:0 frame:0
     TX packets:5 errors:0 dropped:0 overruns:0 carrier:0
     collisions:0 txqueuelen:3
     RX bytes:102 (102.0 b)  TX bytes:96 (96.0 b)

route -n on 192.168.1.1

192.168.10.1  0.0.0.0  255.255.255.255  UH  0  0  0 ppp0
169.254.0.0   0.0.0.0  255.255.0.0      U   0  0  0 eth0
192.168.0.0   0.0.0.0  255.255.0.0      U   0  0  0 eth0
127.0.0.0     0.0.0.0  255.0.0.0        U   0  0  0 lo

ifconfig -a on 192.168.10.1

lo   Link encap:Local Loopback
     inet addr:127.0.0.1  Mask:255.0.0.0
     UP LOOPBACK RUNNING  MTU:16436  Metric:1
     RX packets:147 errors:0 dropped:0 overruns:0 frame:0
     TX packets:147 errors:0 dropped:0 overruns:0 carrier:0
     collisions:0 txqueuelen:0 
     RX bytes:15516 (15.1 Kb)  TX bytes:15516 (15.1 Kb)

ppp0 Link encap:Point-to-Point Protocol  
     inet addr:192.168.10.1  P-t-P:192.168.1.1  Mask:255.255.255.255
     UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
     RX packets:134 errors:33 dropped:0 overruns:0 frame:0
     TX packets:111 errors:0 dropped:0 overruns:0 carrier:0
     collisions:0 txqueuelen:3 
     RX bytes:2017 (1.9 Kb)  TX bytes:2686 (2.6 Kb)

route -n on 192.168.10.1

192.168.1.1  0.0.0.0     255.255.255.255  UH  0  0  0  ppp0
169.254.0.0  0.0.0.0     255.255.0.0      U   0  0  0  lo
127.0.0.0    0.0.0.0     255.0.0.0        U   0  0  0  lo
0.0.0.0      192.168.1.1 0.0.0.0          UG  0  0  0  ppp0

Then ping on both hosts has been run
ping 192.168.10.1 (from 192.168.1.1)
ping 192.168.1.1 (from 192.168.10.1)
Both of pings told nothing, but 100% packet loss.
Packets were also dumped by tcpdump on both machines.

tcpdump -n -i ppp0 on 192.168.1.1

02:11:31.477168 192.168.1.1 > 192.168.10.1: icmp: echo request (DF)
02:11:31.482446 192.168.10.1 > 192.168.1.1: icmp: echo request (DF)
02:11:31.482672 192.168.1.1 > 192.168.10.1: icmp: echo reply

There were no echo reply from 192.168.10.1 to 192.168.1.1
tcpdump running on eth0 and lo on 192.168.1.1 shows no packets.

tcpdump -n -i ppp0 on 192.168.10.1

02:39:33.552747 192.168.10.1 > 192.168.1.1: icmp: echo request (DF)

There were no echo reply from 192.168.1.1 to 192.168.10.1 :-(

Finally arp table on both hosts after ping:

arp -n on 192.168.1.1

192.168.10.1  *  *  MP  eth0

arp -n on 192.168.10.1 shows nothing.

Manually running "arp -i eth0 -s 192.168.1.1 -D eth0" on 192.168.1.1 did
nothing, but appropriate record in arp cache of 192.168.1.1.

I'm not sure whether I really need proxyarp, but in manuals I've read 
were pointed that it's the easiest way of getting working remote 
network access in may case (I need only one client to access only my 
computer).

And could anybody tell me what the hell with this 169.254.0.0/16 
network? Nobody ever specified it anywhere on both hosts.

Thank you!

















-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
