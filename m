From: chuck gelm <chuck@gelm.net>
Subject: ping: unknown host ?
Date: Tue, 20 Apr 2004 21:17:59 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4085CBC7.9000908@gelm.net>
References: <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------090101040903000702060002"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Linux-Newbie <linux-newbie@vger.kernel.org>

This is a multi-part message in MIME format.
--------------090101040903000702060002
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

Howdy, Y'all:

  My host, 'router', seems to not be resolving host names to IP addresses.

  I can ping by IP address, but not by domain name. i.e.
ping 206.141.251.2
  is find, whereas
ping gelm.net
  fails with error:
ping: unknown host gelm.net.

This is my router (DSL<>LAN) and is functioning as the local
domain name server, but cannot serve its self. ?

Attached is the output of
netstat -r
route -n
resolv.conf

  What is not working?

Chuck

--------------090101040903000702060002
Content-Type: text/plain;
 name="netstat.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="netstat.txt"

Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
68.254.31.254   *               255.255.255.255 UH        0 0          0 ppp0
localnet        *               255.255.255.0   U         0 0          0 eth0
loopback        *               255.0.0.0       U         0 0          0 lo
default         68.254.31.254   0.0.0.0         UG        0 0          0 ppp0

--------------090101040903000702060002
Content-Type: text/plain;
 name="resolv.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="resolv.txt"

nameserver 206.141.251.2

--------------090101040903000702060002
Content-Type: text/plain;
 name="route.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="route.txt"

Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
68.254.31.254   0.0.0.0         255.255.255.255 UH    0      0        0 ppp0
192.168.0.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
127.0.0.0       0.0.0.0         255.0.0.0       U     0      0        0 lo
0.0.0.0         68.254.31.254   0.0.0.0         UG    0      0        0 ppp0

--------------090101040903000702060002--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
