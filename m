From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Fri, 29 Nov 2002 17:23:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211292223.gATMNQR10076@hartford-hwp.com>
References: <200211291206.gATC6rd28223@hartford-hwp.com> <3DE77DC1.AE1D5026@gelm.net> <200211291737.gATHbhP02431@hartford-hwp.com> <3DE7B1BE.E7B971AD@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE7B1BE.E7B971AD@gelm.net> (message from Chuck Gelm on Fri, 29
	Nov 2002 13:28:14 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org

Chuck,

I've revisited my drive with RH 8.0, and while the situation is
different, not sure I've made much progress. After messing around last
time, after booting eth0 was not seen. And so I had to deal with that
first. Here's the result, which should be ok.

  # ifconfig -a

  eth0      Link encap:Ethernet  HWaddr 00:03:47:CA:FA:E2
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:6 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:100
          RX bytes:400 (400.0 b)  TX bytes:0 (0.0 b)
          Interrupt:11 Base address:0xb000

  lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:482 errors:0 dropped:0 overruns:0 frame:0
          TX packets:482 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:33284 (32.5 Kb)  TX bytes:33284 (32.5 Kb)

I had been running rp-pppoe 3.4-7, but now upgraded it to 3.5-1. When I
run adsl-setup to create a new configuration, I discovered that this
time a /etc/ppp/pppoe.conf file is created. Clearly the distribution
copy of roarding penguin was broken. When I run adsl-start, I now get
a proper response and no hang:

    # adsl-start
  . Connected!

Now my interfaces are looking good:

  # ifconfig -a
  eth0      Link encap:Ethernet  HWaddr 00:03:47:CA:FA:E2
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:31 errors:0 dropped:0 overruns:0 frame:0
          TX packets:36 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:100
          RX bytes:2490 (2.4 Kb)  TX bytes:2260 (2.2 Kb)
          Interrupt:11 Base address:0xb000

  lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:482 errors:0 dropped:0 overruns:0 frame:0
          TX packets:482 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:33284 (32.5 Kb)  TX bytes:33284 (32.5 Kb)

  ppp0      Link encap:Point-to-Point Protocol
          inet addr:64.252.168.146  P-t-P:64.252.160.1  Mask:255.255.255.255
          UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
          RX packets:10 errors:0 dropped:0 overruns:0 frame:0
          TX packets:20 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:3
          RX bytes:864 (864.0 b)  TX bytes:1298 (1.2 Kb)

However, I find that my routing table still missing eth0

  # netstat -nr
  Kernel IP routing table
  Destination  Gateway      Genmask         Flags MSS Window  irtt Iface
  64.252.160.1 0.0.0.0      255.255.255.255 UH     40 0       0 ppp0
  127.0.0.0    0.0.0.0      255.0.0.0       U      40 0       0 lo
  0.0.0.0      64.252.160.1 0.0.0.0         UG     40 0       0 ppp0

I check with route:

  # route
  Kernel IP routing table
  Destination     Gateway         Genmask         Flags ...   Use Iface
  1.160.252.64.sn *               255.255.255.255 UH    ...   0 ppp0
  127.0.0.0       *               255.0.0.0       U     ...   0 lo
  default         1.160.252.64.sn 0.0.0.0         UG    ...   0 ppp0

So I try to add it:

  # route add eth0
  SIOCADDRT: No such device

I try to ping my gateway as reported by netstat above: 

  # ping 64.252.160.1

That is successful, but trying to ping the ppp0 address failed:

  # ping 1.160.252.64

And other pings failed.

Haines
  


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
