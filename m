From: Haines Brown <brownh@hartford-hwp.com>
Subject: tuning iptables (was Who is running Red Hat 8.0 and Roaring Penguin?)
Date: Wed, 4 Dec 2002 17:59:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212042259.gB4MxHB04133@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I've changed the subject line because the original problem of a broken
Roaring Penguin has been resolved.

I'm trying to set up RedHat to use my DSL connection. The connection
now works fine, and I can browse Internet with a browser. The problem
lies in a VERY slow ping and a fetchmail hang. I have reason to
believe the TCP packets are not coming into my machine through the
high level firewall protection (plus Bastille, but I left Bastille's
iptable defaults alone).

Fetchmail reports the number of messages waiting on the mail server,
but hangs on the retrieve of the first message.   

Because my iptables suggests there's an eth0 and an eth1, I run:

	# ifconfig -a

and that seems perfectly ok. The eth0 is up and ppp0 is up and has
been assigned an address by my ISP. The ping of the ppp0 address works
just fine.

  # netstat -nr
  Kernel IP routing table
  Destination   Gateway      Genmask         Flags MSS Win irttIface 
  64.252.160.1  0.0.0.0      255.255.255.255 UH     40 0   0 ppp0
  127.0.0.0     0.0.0.0      255.0.0.0       U      40 0   0 lo
  0.0.0.0       64.252.160.1 0.0.0.0         UG     40 0   0 ppp0

I can ping the gateway address, 64.252.160.1 just fine.

But if I try to ping anything else, I get extraordinarily large turn
around times:

 # ping aol.com
 PING aol.com (205.188.145.215) from 64.252.172.254 : 56(84) bytes 
      of data.
 64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=1
     ttl=52 time=58.7 ms
 64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=2 
    ttl=52 time=60.0 ms
 64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=3 
    ttl=52 time=60.6 ms

 --- aol.com ping statistics ---
 3 packets transmitted, 3 received, 0% loss, time 10308ms
 rtt min/avg/max/mdev = 58.705/59.820/60.683/0.874 ms


Finally, my iptables:

# iptables -nvL
Chain INPUT (policy ACCEPT 1472 packets, 565K bytes)
 pkts bytes target     prot opt in     out     source  destination

 1773  599K RH-Lokkit-0-50-INPUT  all  --  *  * 0.0.0.0/0 0.0.0.0/0

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source  destination


Chain OUTPUT (policy ACCEPT 2232 packets, 325K bytes)
 pkts bytes target     prot opt in     out     source  destination


Chain RH-Lokkit-0-50-INPUT (1 references)
 pkts bytes target     prot opt in     out     source  destination

   91 19639 ACCEPT     udp  --  *      *  206.141.193.55 0.0.0.0/0
       udp spt:53 dpts:1025:65535
    0     0 ACCEPT     udp  --  *      *  206.73.20.40   0.0.0.0/0
       udp spt:53 dpts:1025:65535
    0     0 ACCEPT     udp  --  eth0   *  0.0.0.0/0      0.0.0.0/0
       udp spts:67:68 dpts:67:68
    0     0 ACCEPT     udp  --  eth1   *  0.0.0.0/0      0.0.0.0/0
       udp spts:67:68 dpts:67:68
  150 10348 ACCEPT     all  --  lo     *  0.0.0.0/0      0.0.0.0/0

   33  1596 REJECT     tcp  --  *      *  0.0.0.0/0      0.0.0.0/0
       tcp flags:0x16/0x02 reject-with icmp-port-unreachable
   27  2106 REJECT     udp  --  *      *  0.0.0.0/0      0.0.0.0/0
       udp reject-with icmp-port-unreachable

It seems that tcp packets are rejected (because icmp port unreachable?).
Further, I have ppp0 and eth0 interfaces, but no eth1 interface.

When I run insmod I find:

	ip_tables              14936   2  [ipt_REJECT iptable_filter]

Reading man iptables leaves me in a cold sweat, and I'd appreciate
insight into what looks wrong in this table and what I might do about
it. 

Haines Brown




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
