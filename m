From: Ray Olszewski <ray@comarre.com>
Subject: Re: ping: unknown host ?
Date: Tue, 20 Apr 2004 19:05:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040420184849.01efb810@celine>
References: <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
 <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com> <4085CBC7.9000908@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4085CBC7.9000908@gelm.net>
References: <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
 <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:17 PM 4/20/2004 -0400, chuck gelm wrote:
>Howdy, Y'all:
>
>  My host, 'router', seems to not be resolving host names to IP addresses.
>
>  I can ping by IP address, but not by domain name. i.e.
>ping 206.141.251.2
>  is find, whereas
>ping gelm.net
>  fails with error:
>ping: unknown host gelm.net.
>
>This is my router (DSL<>LAN) and is functioning as the local
>domain name server, but cannot serve its self. ?
>
>Attached is the output of
>netstat -r
>route -n
>resolv.conf
>
>  What is not working?

Well, /etc/resolv.conf says that the router is to use 206.141.251.2 as a 
resolver. And you seem to say above that the router can ping that IP 
address, which tells us that routing to it is OK. Possibilities I can think 
of are:

1. What is 206.141.251.2 ? I'm surmising that it is your ISP's nameserver. 
Do you know that it is a working resolver (to ask the most basic detail 
question, does it ACCEPT traffic to port 53/UDP)?

2. Are you running any firewalling on your host that might be interfering 
with traffic to or from the resolver? Checking this is somewhat kernel 
specific; if you are running 2.4.x, then check with

         iptables -nvL
         iptables -t nat -nvL

It is quite possible that your default table DENYs or REJECTs DNS traffic 
to and from the router itself, while your nat table ACCEPTs it to and from 
LAN hosts.

3. HOW is the router "functioning as the local domain name server"? Is it 
running BIND (named)? dnscache? Something else? However it provides DNS to 
the LAN, you do not have it set up to use that method for itself, since the 
entry (below) in /etc/resolv.conf points to what I assume is an off-LAN 
nameserver.

One other detail: please ALWAYS report the routing table with "netstat 
-nr", or an equivalent that reports addresses, not names. YOU know what IP 
address network "localnet" translates too, but WE do not ... I've been 
assuming that this router NATs a private-address LAN (e.g., 
192.168.1.0/24), but your reporting by network name conceals that 
information. And if my guess is wrong, a lot else that I said could easily 
also be wrong.


>Chuck
>
>
>Kernel IP routing table
>Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
>68.254.31.254   *               255.255.255.255 UH        0 0          0 ppp0
>localnet        *               255.255.255.0   U         0 0          0 eth0
>loopback        *               255.0.0.0       U         0 0          0 lo
>default         68.254.31.254   0.0.0.0         UG        0 0          0 ppp0
>nameserver 206.141.251.2
>Kernel IP routing table
>Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
>68.254.31.254   0.0.0.0         255.255.255.255 UH    0      0        0 ppp0
>192.168.0.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
>127.0.0.0       0.0.0.0         255.0.0.0       U     0      0        0 lo
>0.0.0.0         68.254.31.254   0.0.0.0         UG    0      0        0 ppp0


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
