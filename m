From: Ray Olszewski <ray@comarre.com>
Subject: Re: [extra] PPP server doesn't work
Date: Tue, 30 Mar 2004 09:31:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040330090438.01f949a0@celine>
References: <5.1.0.14.1.20040327055706.01f263a0@celine>
 <5.1.0.14.1.20040327055706.01f263a0@celine> <200403281516.39979.vhlist@yandex.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403281516.39979.vhlist@yandex.ru>
References: <5.1.0.14.1.20040327055706.01f263a0@celine>
 <5.1.0.14.1.20040327055706.01f263a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK. FIrst thing -- since we are talking about communication between the two 
hosts that have the ppp connection between them, proxyarp is irrelevant. 
That affects only connections from other hosts. (For example, if another 
host on 192.168.10.x/16 connected to the "server" end's Ethenet tried to 
reach the "client", the server would have to proxyarp the client's address 
so the third host could find the "client".)

Second, since there is a ppp connection between the two hosts, not an 
ethernet connection, each would not show up in the other's arp table, 
whether a connection is working or not.

Third, from the tcpdump output on the pings, it appears that 192.168.1.1 is 
working properly (it sends both pings and ping replies, -AND- it replies to 
a request), but 192.168.10.1 does not see icmp traffic coming from 
192.168.1.1. The possibilites to check are:

1. Does any firewalling on 192.168.1.1 interfere with transmission of icmp 
traffic? Depending on details you have not reported (what kernel you are 
using, what iptables or ipchains rulesets, some kernel switches set in the 
/proc filesystem) you may be blocking ping traffic at the server.

2. Related to (1), have you tested with anything ohter than ping? Can you, 
as an example, make an ssh connection between the two hosts?

3. Might there be a hardware problem at the "client" end? In the old days, 
for example, when a usable modem or NIC shared an IRQ with a Winmodem, the 
modem or NIC could send traffic but not receive replies. I haven't seen 
this in quite some time, but old problems do tend to come back. In general, 
is the modem on the client end known to work under Linux when connecting to 
someplace else?

4. I do not recall what the "DF"entry in the tcpdump output means, and I 
can't find a reference to it in the man page. Perhaps someone else here 
recognizes this and can jump in?

Fianlly, as to 169.254.0.0/16 ... this is a private address range used in 
the case of DHCP failures. Many DHCP clients are configured so that if they 
request a DHCP assignment and get no lease offers, they assign themselves a 
random address on this network. (The procedure is in the same addressing 
RFC as the more familiar private ranges, like 192.168.0.0/16.) In practice, 
the use for this is to facilitate hubness connections between two hosts 
(laptops, say) as temporary hookups for file transfer and the like. WIndows 
users are more familiar with this private-address range than are Linux users.

As to how it gets into *your* routing table ... how can I (or anyone) 
possibly say, when you don't say what Linux distro or version or kernel the 
"client" is using? Check its init scripts, wherever they are (it varies 
quite a bit from one distro to another) for one that sets up a routing 
table entry of this sort.

At 03:16 PM 3/28/2004 +0400, Anton Martchukov wrote:
>Sorry for extra traffic to the list.
>
>I've only one machine 192.168.1.1 with ethernet card attached to it, but
>with no other hosts in network 192.168.0.0/16. This machine is PPP
>server which assigns IP address 192.168.10.1 for connected client and
>tries to do proxyarp with no success. Here is some info I collected out
>after the ppp connection has been established:
>
>ifconfig -a on 192.168.1.1
>
>eth0 Link encap:Ethernet  HWaddr 00:00:21:67:2C:49
>      inet addr:192.168.1.1  Bcast:192.168.255.255  Mask:255.255.0.0
>      UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>      RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>      TX packets:0 errors:69 dropped:0 overruns:0 carrier:69
>      collisions:1104 txqueuelen:100
>      RX bytes:0 (0.0 b)  TX bytes:4140 (4.0 Kb)
>      Interrupt:5 Base address:0x300
>
>lo   link encap:Local Loopback inet addr:127.0.0.1  Mask:255.0.0.0
>      UP LOOPBACK RUNNING  MTU:16436  Metric:1
>      RX packets:98873 errors:0 dropped:0 overruns:0 frame:0
>      TX packets:98873 errors:0 dropped:0 overruns:0 carrier:0
>      collisions:0 txqueuelen:0
>      RX bytes:11084300 (10.5 Mb)  TX bytes:11084300 (10.5 Mb)
>
>ppp0 link encap:Point-to-Point Protocol inet addr:192.168.1.1
>      P-t-P:192.168.10.1  Mask:255.255.255.255
>      UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
>      RX packets:5 errors:0 dropped:0 overruns:0 frame:0
>      TX packets:5 errors:0 dropped:0 overruns:0 carrier:0
>      collisions:0 txqueuelen:3
>      RX bytes:102 (102.0 b)  TX bytes:96 (96.0 b)
>
>route -n on 192.168.1.1
>
>192.168.10.1  0.0.0.0  255.255.255.255  UH  0  0  0 ppp0
>169.254.0.0   0.0.0.0  255.255.0.0      U   0  0  0 eth0
>192.168.0.0   0.0.0.0  255.255.0.0      U   0  0  0 eth0
>127.0.0.0     0.0.0.0  255.0.0.0        U   0  0  0 lo
>
>ifconfig -a on 192.168.10.1
>
>lo   Link encap:Local Loopback
>      inet addr:127.0.0.1  Mask:255.0.0.0
>      UP LOOPBACK RUNNING  MTU:16436  Metric:1
>      RX packets:147 errors:0 dropped:0 overruns:0 frame:0
>      TX packets:147 errors:0 dropped:0 overruns:0 carrier:0
>      collisions:0 txqueuelen:0
>      RX bytes:15516 (15.1 Kb)  TX bytes:15516 (15.1 Kb)
>
>ppp0 Link encap:Point-to-Point Protocol
>      inet addr:192.168.10.1  P-t-P:192.168.1.1  Mask:255.255.255.255
>      UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
>      RX packets:134 errors:33 dropped:0 overruns:0 frame:0
>      TX packets:111 errors:0 dropped:0 overruns:0 carrier:0
>      collisions:0 txqueuelen:3
>      RX bytes:2017 (1.9 Kb)  TX bytes:2686 (2.6 Kb)
>
>route -n on 192.168.10.1
>
>192.168.1.1  0.0.0.0     255.255.255.255  UH  0  0  0  ppp0
>169.254.0.0  0.0.0.0     255.255.0.0      U   0  0  0  lo
>127.0.0.0    0.0.0.0     255.0.0.0        U   0  0  0  lo
>0.0.0.0      192.168.1.1 0.0.0.0          UG  0  0  0  ppp0
>
>Then ping on both hosts has been run
>ping 192.168.10.1 (from 192.168.1.1)
>ping 192.168.1.1 (from 192.168.10.1)
>Both of pings told nothing, but 100% packet loss.
>Packets were also dumped by tcpdump on both machines.
>
>tcpdump -n -i ppp0 on 192.168.1.1
>
>02:11:31.477168 192.168.1.1 > 192.168.10.1: icmp: echo request (DF)
>02:11:31.482446 192.168.10.1 > 192.168.1.1: icmp: echo request (DF)
>02:11:31.482672 192.168.1.1 > 192.168.10.1: icmp: echo reply
>
>There were no echo reply from 192.168.10.1 to 192.168.1.1
>tcpdump running on eth0 and lo on 192.168.1.1 shows no packets.
>
>tcpdump -n -i ppp0 on 192.168.10.1
>
>02:39:33.552747 192.168.10.1 > 192.168.1.1: icmp: echo request (DF)
>
>There were no echo reply from 192.168.1.1 to 192.168.10.1 :-(
>
>Finally arp table on both hosts after ping:
>
>arp -n on 192.168.1.1
>
>192.168.10.1  *  *  MP  eth0
>
>arp -n on 192.168.10.1 shows nothing.
>
>Manually running "arp -i eth0 -s 192.168.1.1 -D eth0" on 192.168.1.1 did
>nothing, but appropriate record in arp cache of 192.168.1.1.
>
>I'm not sure whether I really need proxyarp, but in manuals I've read
>were pointed that it's the easiest way of getting working remote
>network access in may case (I need only one client to access only my
>computer).
>
>And could anybody tell me what the hell with this 169.254.0.0/16
>network? Nobody ever specified it anywhere on both hosts.
>
>Thank you!


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
