From: Ray Olszewski <ray@comarre.com>
Subject: Re: two eth devices ...
Date: Mon, 26 Jan 2004 17:53:39 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040126174249.01f71118@celine>
References: <5.1.0.14.1.20040126112512.01f943f0@celine> <4011C87400000C1A@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4011C87400000C1A@mail-bcm02.alestra.net.mx>
References: <5.1.0.14.1.20040126112512.01f943f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: rgomez@bancomer.com, linux-newbie@vger.kernel.org

At 06:46 PM 1/26/2004 -0600, rgomez@bancomer.com wrote:
>I have 2 interfaces, but i don't know what to do with

First, let's keep this discussion on the list, not private. So I've added 
the list back in with this reply.

Second, as I look at the interface data, the packet counts make it clear 
that both are being used ... about equally for incoming traffic, but 
heavily favoring eth0 for outgoing packets. A look at your routing table 
("netstat -nr" is one way to view it) will probably explain the TX imbalance.

Without knowing more about your setup ... for example, why the two 
interfaces are on different Ip networks (do they connect to the same or to 
different physical networks?), what services the host is running, what mix 
of LAN and Internet services the host accesses and how (what the routing 
table looks like is most of the "how" part) ... it is hard to recommend 
anything.

Really, from the standpoint of Linux, the system seems to be working. If 
you want to disable an interface temporarily, you *probably* want to use 
the command

         ifdown eth0
or
         ifdown eth1

But the question of *whether* you should be running one or two interfaces 
really is better posed to the sysadmin at your site ... it is not 
particularly a Linux question. If his or her answer poses any issues that 
seem specific to Linux, then that would be a good time to come back here.

For example, I think I saw another message from you, earlier today, asking 
about controlling how the host accesses squid. It was too vague for me to 
reply to, but now that I see you have interfaces on different networks, the 
system's routing table should control which interface handles squid traffic 
(assuming the squid server is local, on one or the other network).


># if config -a
>eth0      Link encap:Ethernet  HWaddr 00:C0:4F:97:2D:8D
>           inet addr:150.100.106.24  Bcast:150.100.106.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:301002 errors:3 dropped:0 overruns:0 frame:3
>           TX packets:13656 errors:0 dropped:0 overruns:0 carrier:14
>           collisions:791 txqueuelen:100
>           RX bytes:97659433 (93.1 Mb)  TX bytes:1976281 (1.8 Mb)
>           Interrupt:11 Base address:0xec80
>
>eth1      Link encap:Ethernet  HWaddr 00:A0:24:0B:56:3C
>           inet 
> addr:150.100.107.199  Bcast:150.100.107.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:290096 errors:3 dropped:0 overruns:0 frame:3
>           TX packets:1163 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:62 txqueuelen:100
>           RX bytes:94395209 (90.0 Mb)  TX bytes:112613 (109.9 Kb)
>           Interrupt:10 Base address:0x230
>
>lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:297 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:297 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:32918 (32.1 Kb)  TX bytes:32918 (32.1 Kb)
>
># ip link show
>1: lo: <LOOPBACK,UP> mtu 16436 qdisc noqueue
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>2: eth0: <BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast qlen 100
>     link/ether 00:c0:4f:97:2d:8d brd ff:ff:ff:ff:ff:ff
>3: eth1: <BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast qlen 100
>     link/ether 00:a0:24:0b:56:3c brd ff:ff:ff:ff:ff:ff
>
># uname -a
>Linux naboo 2.4.20-8 #1 Thu Mar 13 16:42:56 EST 2003 i586 i586 i386 GNU/Linux
>
>::::::::::::::
>/etc/sysconfig/networking/profiles/default/ifcfg-eth0
>::::::::::::::
>DEVICE=eth0
>ONBOOT=yes
>BOOTPROTO=dhcp
>TYPE=Ethernet
>USERCTL=no
>PEERDNS=no
>::::::::::::::
>/etc/sysconfig/networking/profiles/default/ifcfg-eth1
>::::::::::::::
>DEVICE=eth1
>ONBOOT=yes
>BOOTPROTO=dhcp
>TYPE=Ethernet
>USERCTL=no
>PEERDNS=no
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
