From: Ray Olszewski <ray@comarre.com>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Fri, 29 Nov 2002 15:02:50 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021129143846.0212e110@celine>
References: <3DE7B1BE.E7B971AD@gelm.net>
 <200211291206.gATC6rd28223@hartford-hwp.com>
 <3DE77DC1.AE1D5026@gelm.net>
 <200211291737.gATHbhP02431@hartford-hwp.com>
 <3DE7B1BE.E7B971AD@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211292223.gATMNQR10076@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- You are not here reporting any problem with your configuration. 
Everything you list below is as it should be with PPPoE. In particular, 
your routing table does not list eth0 because you have (and need have) no 
routes that use it; it isn't even a configured interface (that is, no IP 
address). It just operates at the link level, where it provides an Ethernet 
link that encapsulates a ppp link (a different link-level protocol). The 
ppp link carries your network-layer (IP) traffic.

The next test is to try using the connection to the Internet that exists. 
As I already said, if you need an IP address that you know responds to 
pings, please feel free to use mine (which I listed in a prior message, or 
you can check the Received: headers here). Or just try doing whatever it is 
you actually do on this computer and see if it works.

The ping you specifically report trying that fails, namely

           # ping 1.160.252.64

no doubt fails because it is not your ppp0 address, which is (according to 
ifconfig) 64.252.168.146 . The address that fails is your gateway address 
in reverse order; I can't guess where you might have picked that up from.

Just to be completely clear on this, I **can** ping both your gateway 
address and your ppp0 address (but not the bogus address you report as your 
gateway in the ping test), suggesting that you are connected (though the 
second success may be a trick, depending on how the ISP implements ppp at 
its end). Here are my results:

autovcr@kuryakin:~$ ping 1.160.252.64
PING 1.160.252.64 (1.160.252.64): 56 data bytes

--- 1.160.252.64 ping statistics ---
3 packets transmitted, 0 packets received, 100% packet loss
autovcr@kuryakin:~$ ping 64.252.160.1
PING 64.252.160.1 (64.252.160.1): 56 data bytes
64 bytes from 64.252.160.1: icmp_seq=0 ttl=47 time=98.9 ms
64 bytes from 64.252.160.1: icmp_seq=1 ttl=47 time=97.5 ms

--- 64.252.160.1 ping statistics ---
3 packets transmitted, 2 packets received, 33% packet loss
round-trip min/avg/max = 97.5/98.2/98.9 ms
autovcr@kuryakin:~$ ping 64.252.168.146
PING 64.252.168.146 (64.252.168.146): 56 data bytes
64 bytes from 64.252.168.146: icmp_seq=0 ttl=110 time=118.9 ms
64 bytes from 64.252.168.146: icmp_seq=1 ttl=110 time=135.3 ms
64 bytes from 64.252.168.146: icmp_seq=2 ttl=110 time=119.7 ms

--- 64.252.168.146 ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max = 118.9/124.6/135.3 ms
autovcr@kuryakin:~$

You say "And other pings failed", but that's too vague to troubleshoot (and 
your getting your own gateway address wrong gives me some cause for 
skepticism regarding parts of your report that I cannot check). Tell us 
what you tried to ping and EXACTLY how the pings failed (pings fail in many 
distinct ways, and the differences are informative).

The main problem you *may* still have is with DNS. Since the ISP DNS server 
address you are using does not respond to pings (and cannot be reached 
using traceroute), you *may* be trying to use the wrong address. So you 
first want to try doing things that use actual IP addresses, not FQNs. If 
actual addresses work but not FQNs, your options are

         1. Get the correct IP addresses for your ISP's nameserves in 
/etc/resolv.conf
         2. Run BIND (or an equivalent) yourself and bypass the ISP's 
nameservers (your ISP *might* block this, but it is rare for them to do so).

At 05:23 PM 11/29/02 -0500, Haines Brown wrote:
>Chuck,
>
>I've revisited my drive with RH 8.0, and while the situation is
>different, not sure I've made much progress. After messing around last
>time, after booting eth0 was not seen. And so I had to deal with that
>first. Here's the result, which should be ok.
>
>   # ifconfig -a
>
>   eth0      Link encap:Ethernet  HWaddr 00:03:47:CA:FA:E2
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:6 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:100
>           RX bytes:400 (400.0 b)  TX bytes:0 (0.0 b)
>           Interrupt:11 Base address:0xb000
>
>   lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:482 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:482 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:33284 (32.5 Kb)  TX bytes:33284 (32.5 Kb)
>
>I had been running rp-pppoe 3.4-7, but now upgraded it to 3.5-1. When I
>run adsl-setup to create a new configuration, I discovered that this
>time a /etc/ppp/pppoe.conf file is created. Clearly the distribution
>copy of roarding penguin was broken. When I run adsl-start, I now get
>a proper response and no hang:
>
>     # adsl-start
>   . Connected!
>
>Now my interfaces are looking good:
>
>   # ifconfig -a
>   eth0      Link encap:Ethernet  HWaddr 00:03:47:CA:FA:E2
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:31 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:36 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:100
>           RX bytes:2490 (2.4 Kb)  TX bytes:2260 (2.2 Kb)
>           Interrupt:11 Base address:0xb000
>
>   lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:482 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:482 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:33284 (32.5 Kb)  TX bytes:33284 (32.5 Kb)
>
>   ppp0      Link encap:Point-to-Point Protocol
>           inet addr:64.252.168.146  P-t-P:64.252.160.1  Mask:255.255.255.255
>           UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
>           RX packets:10 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:20 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:3
>           RX bytes:864 (864.0 b)  TX bytes:1298 (1.2 Kb)
>
>However, I find that my routing table still missing eth0
>
>   # netstat -nr
>   Kernel IP routing table
>   Destination  Gateway      Genmask         Flags MSS Window  irtt Iface
>   64.252.160.1 0.0.0.0      255.255.255.255 UH     40 0       0 ppp0
>   127.0.0.0    0.0.0.0      255.0.0.0       U      40 0       0 lo
>   0.0.0.0      64.252.160.1 0.0.0.0         UG     40 0       0 ppp0
>
>I check with route:
>
>   # route
>   Kernel IP routing table
>   Destination     Gateway         Genmask         Flags ...   Use Iface
>   1.160.252.64.sn *               255.255.255.255 UH    ...   0 ppp0
>   127.0.0.0       *               255.0.0.0       U     ...   0 lo
>   default         1.160.252.64.sn 0.0.0.0         UG    ...   0 ppp0
>
>So I try to add it:
>
>   # route add eth0
>   SIOCADDRT: No such device
>
>I try to ping my gateway as reported by netstat above:
>
>   # ping 64.252.160.1
>
>That is successful, but trying to ping the ppp0 address failed:
>
>   # ping 1.160.252.64
>
>And other pings failed.
>
>Haines


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
