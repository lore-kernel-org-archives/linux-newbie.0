From: chuck <chuck@gelm.net>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 20:24:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400F263E.F61E86FD@gelm.net>
References: <5F84A09ECDD5D411973000508BE32470266024F5@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Chadha, Devesh" <devesh.chadha@lehman.com>
Cc: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi, Chadha:

Originally, you said:

> I have a linux box with 2 NIC cards, both are properly configured.
> Both are on the same subnet, but still don't ping to one another!!

 You do not show how you attempt the 'ping',
nor the error message.

Please show exact ping command attempt.

I was hoping for something like:
----------------------------------------------------------
gelmce@web:~$ ping -c 4 192.168.0.1
PING 192.168.0.1 (192.168.0.1): 56 octets data
64 octets from 192.168.0.1: icmp_seq=0 ttl=127 time=1.6 ms
64 octets from 192.168.0.1: icmp_seq=1 ttl=127 time=1.4 ms
64 octets from 192.168.0.1: icmp_seq=2 ttl=127 time=1.4 ms
64 octets from 192.168.0.1: icmp_seq=3 ttl=127 time=1.3 ms
 
--- 192.168.0.1 ping statistics ---
4 packets transmitted, 4 packets received, 0% packet loss
round-trip min/avg/max = 1.3/1.4/1.6 ms

The above (LAN) IP address is my hardware router, a DLink DI-604.

---------------------------------------------------------
gelmce@web:~$ ping -c 4 68.74.221.208
PING 68.74.221.208 (68.74.221.208): 56 octets data
64 octets from 68.74.221.208: icmp_seq=0 ttl=127 time=1.6 ms
64 octets from 68.74.221.208: icmp_seq=1 ttl=127 time=1.4 ms
64 octets from 68.74.221.208: icmp_seq=2 ttl=127 time=1.4 ms
64 octets from 68.74.221.208: icmp_seq=3 ttl=127 time=1.4 ms
 
--- 68.74.221.208 ping statistics ---
4 packets transmitted, 4 packets received, 0% packet loss
round-trip min/avg/max = 1.4/1.4/1.6 ms
------------------------------------------------------------
The above is the IP address that my ISP gives my router.

So, again, exactly how does 'ping' fail?

Chuck

"Chadha, Devesh" wrote:
> 
> Well my reason for not giving is that it is a public IP and does not have
> any firewalls in place. This exposes my server much more to unauthorized
> "visit"
> 
> Anyway...lets get down to getting this done.
> 
> I am on RH Linux 8
> uname -a is Linux 2.4.18
> netstat -nr gives
> 192.168.1.0                     0.0.0.0         255.255.255.0           U
> eth1
> xxx.xxx.xxx.0           0.0.0.0         255.255.255.0           U       eth0
> 127.0.0.1                       0.0.0.0         255.0.0.0
> U       lo
> 0.0.0.0                 xxx.xxx.xxx.1   0.0.0.0                 UG      eth0
> 
> ifconfig gives me that eth0, eth1 and lo are correctly configured.
> 
> ip_forward gives a "1"
> 
> What do the gurus say???

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
