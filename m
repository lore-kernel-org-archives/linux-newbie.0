From: Greg Olszewski <noop@nwonknu.org>
Subject: Re: how to route
Date: Fri, 24 Dec 2004 00:02:49 -0800
Message-ID: <41CBCD29.5010709@nwonknu.org>
References: <7539d99f041223195924d905d3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7539d99f041223195924d905d3@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Nicolas Patik <nicolas.patik@gmail.com>
Cc: linux-newbie@vger.kernel.org


Nicolas Patik wrote:
> I have 2 linux boxes connected to a switch:
3, no?

> 
> box1: 
> eth0 192.168.0.200/255.255.255.0
> eth1 public address from ISP dhcp
> 
> box2: 
> eth0 192.168.0.35/255.255.255.0
> 
> box3:
> eth0 192.168.1.3/255.255.255.0
> 
> I want box1 to act as a gateway to the internet 
> (it is doing this now for box2), 
> but also want to communicate from box2 to box3 through box1, 
> and that box3 can use the internet through box1.
> 
> how can I do this?
>

You could create an alias for eth0 on box1 which is on the same subnet 
as box 3, like so:

box1# ifconfig eth0:0 192.168.1.200 netmask 255.255.255.0

now, from box1 you should be able to ping box3 and vice-versa:

box1# ping 192.168.1.3 -c 1
PING 192.168.1.3 (192.168.1.3): 56 data bytes
64 bytes from 192.168.1.3: icmp_seq=0 ttl=127 time=3.0 ms

--- 192.168.1.3 ping statistics ---
1 packets transmitted, 1 packets received, 0% packet loss
round-trip min/avg/max = 3.0/3.0/3.0 ms

and

box3$ ping 192.168.1.200 -c 1
...


now you'll need to make sure box3 is using box1 as it's gateway

box3# route del default
box3# route add default gw 192.168.1.200

provided that this works, you ought to be able to ping box2 from box3
and vice versa, although this depends on box1's ipchains/iptables rules 
(some must be set up if box1 is acting as a gateway). If you posted the
output of 'iptables -L -n' and 'iptables -t nat -L -n', I could be sure, 
but the iptables rules you'll want are something like so:

#first flush the tables
iptables -t nat -F
iptables -F
#drop FORWARD packets by default
iptables -P FORWARD DROP
# unless there is a connection established
iptables -A FORWARD -m state --state ESTABLISHED -j ACCEPT

# or it came in on eth0(or :0), and is leaving the same way,
# and is addressed to a local address
iptables -A FORWARD -i eth0+ -o eth0+ -d 192.168.0.0/23 -s 
192.168.0.0/23 -j ACCEPT

# Or it is an internal packet heading for the world
iptables -A FORWARD -i eth0+ -o eth1 -s 192.168.0.0/23 -d \! 192.168.0.0/23

# now masquerade all outgoing packets
iptables -t nat -A POSTROUTING -s 192.168.0.0/23 -d \! 192.168.0.0/23 -j 
MASQUERADE

have fun,

greg

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
