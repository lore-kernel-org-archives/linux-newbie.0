From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?]
Date: Fri, 29 Nov 2002 10:10:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE78381.CEC9110D@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Haines Brown wrote:
 
> Here's the result of my run today:
 
> a) redhat-config-network. It shows both eth0 (ethernet) and ppp0 (xDSL)
> as being inactive.

I think that this is OK.

> b) ifconfig shows etho0 up (how do I reconcile with the above?) and with
> no IP address.

I think that this is OK.

> c) I bring to bring ppp0 by what I thought was a straightforward way:
> 
> # ifconfig ppp0 up
> ppp0: unknown interface: No such device

 I think that 'adsl-start' should be the way to create device ppp0.
 I think that you should not be forcing ppp0 up by hand.

> d) While adsl-start has not yet timed out:
> 
> # ifconfig -a
> eth0      Link encap:Ethernet  HWaddr 00:03:47:CA:FA:E2
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:24 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:23 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:100
>           RX bytes:1821 (1.7 Kb)  TX bytes:1131 (1.1 Kb)
>           Interrupt:11 Base address:0x9000
> 
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:250 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:250 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:17268 (16.8 Kb)  TX bytes:17268 (16.8 Kb)
> 
> ppp0      Link encap:Point-to-Point Protocol
>           inet addr:64.252.166.131  P-t-P:64.252.160.1  Mask:255.255.255.255
>           UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
>           RX packets:9 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:12 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:3
>           RX bytes:577 (577.0 b)  TX bytes:495 (495.0 b)

 This looks good to me.

> e) Then adsl-start times out:
> 
> # adsl-start
> /sbin/adsl-start: line 221: 18532 Terminated $CONNECT "$@" >/dev/null 2>&1

 Umm, is this a 'time-out' or a script execution failure?
 My adsl-start file has only 197 lines.
 A line nearly identical to your appears in my line 152:
"$CONNECT "$@" >/dev/null 2>&1 &"
 Except my line is terminated with a "&".
 This line appears after a comment:
# Start the connection in the background unless we're debugging

> f) I then look at my routing table:
> 
> # netstat -nr
> Kernel IP routing table
> Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
> 64.252.160.1    0.0.0.0         255.255.255.255 UH       40 0          0 ppp0
> 127.0.0.0       0.0.0.0         255.0.0.0       U        40 0          0 lo
> 0.0.0.0         64.252.160.1    0.0.0.0         UG       40 0          0 ppp0

 This may be part of a problem.  Notice that your routing table
 has only a ppp0 device (not counting 'lo') and no eth0 device ...

> g) Kernel not using ipchains
> 
> # ipchains -nvL
> ipchains: Incompatible with this kernel

Here is my ipchains -nvL
Chain input (policy ACCEPT: 12771974 packets, 4905163086 bytes):
 pkts bytes target     prot opt    tosa tosx  ifname     mark      
outsize  source                destination           ports
 5336  423K DENY       udp  ----l- 0xFF 0x00 
ppp+                           0.0.0.0/0           
0.0.0.0/0             * ->   0:1023
  744 37331 DENY       tcp  ----l- 0xFF 0x00 
ppp+                           0.0.0.0/0           
0.0.0.0/0             * ->   0:1023
 1149 55368 DENY       tcp  -y--l- 0xFF 0x00 
ppp+                           0.0.0.0/0           
0.0.0.0/0             * ->   *
   53  2489 DENY       icmp ----l- 0xFF 0x00 
ppp+                           0.0.0.0/0           
0.0.0.0/0             8 ->   *
Chain forward (policy DENY: 0 packets, 0 bytes):
 pkts bytes target     prot opt    tosa tosx  ifname     mark      
outsize  source                destination           ports
1376K   85M MASQ       all  ------ 0xFF 0x00 
*                              0.0.0.0/0           
0.0.0.0/0             n/a
Chain output (policy ACCEPT: 12894352 packets, 3893742239 bytes):

 Notice that my IPCHAINS uses ppp+
  (perhaps the + indicates all ppp# devices)
 and does not mention my eth0 nor eth1 devices.
 
 Likewise notice that ppp* is never mentioned in your IPTABLES ruleset,
 only eth0 and eth1 which are 'down'. :-|

 It appears that rp-pppoe has not modified your IPTABLES ruleset.

> h) Here is the iptables
> 
> # iptables -nvL
> Chain INPUT (policy ACCEPT 2 packets, 95 bytes)
>  pkts bytes target     prot opt in     out     source               destination
>   259 18589 RH-Lokkit-0-50-INPUT  all  --  *      *       0.0.0.0/0
> 0.0.0.0/0
> 
> Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target     prot opt in     out     source               destination
> 
> Chain OUTPUT (policy ACCEPT 278 packets, 18866 bytes)
>  pkts bytes target     prot opt in     out     source               destination
> 
> Chain RH-Lokkit-0-50-INPUT (1 references)
>  pkts bytes target     prot opt in     out     source               destination
>     7  1226 ACCEPT     udp  --  *      *       206.141.193.55       0.0.0.0/0
>         udp spt:53 dpts:1025:65535
>     0     0 ACCEPT     udp  --  *      *       206.73.20.40         0.0.0.0/0
>         udp spt:53 dpts:1025:65535
>     0     0 ACCEPT     udp  --  eth0   *       0.0.0.0/0            0.0.0.0/0
>         udp spts:67:68 dpts:67:68
>     0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0            0.0.0.0/0
>         udp spts:67:68 dpts:67:68
>   250 17268 ACCEPT     all  --  lo     *       0.0.0.0/0            0.0.0.0/0
> 
>     0     0 REJECT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0
>         tcp flags:0x16/0x02 reject-with icmp-port-unreachable
>     0     0 REJECT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0
>         udp reject-with icmp-port-unreachable

> i) I can ping my gateway:
> 
> # ping 64.252.160.1
> PING 64.252.160.1 (64.252.160.1) from 64.252.166.131 : 56(84) bytes of data.
> 64 bytes from 64.252.160.1: icmp_seq=1 ttl=64 time=15.6 ms
> 64 bytes from 64.252.160.1: icmp_seq=2 ttl=64 time=16.5 ms
> 64 bytes from 64.252.160.1: icmp_seq=3 ttl=64 time=18.3 ms
> 64 bytes from 64.252.160.1: icmp_seq=4 ttl=64 time=16.8 ms
> 
> --- 64.252.160.1 ping statistics ---
> 4 packets transmitted, 4 received, 0% loss, time 3006ms
> rtt min/avg/max/mdev = 15.655/16.837/18.303/0.963 ms
> 
> ========================
> 
> j) I can also ping my ppp0's address
> 
> # ping 64.252.166.131
> PING 64.252.166.131 (64.252.166.131) from 64.252.166.131 : 56(84) bytes of data.
> 64 bytes from 64.252.166.131: icmp_seq=1 ttl=64 time=0.038 ms
> 64 bytes from 64.252.166.131: icmp_seq=2 ttl=64 time=0.027 ms
> 64 bytes from 64.252.166.131: icmp_seq=3 ttl=64 time=0.029 ms
> 
> --- 64.252.166.131 ping statistics ---
> 3 packets transmitted, 3 received, 0% loss, time 1998ms
> rtt min/avg/max/mdev = 0.027/0.031/0.038/0.006 ms
> 
> ========================
> 
> k) But I can't ping my ISP's domain name server:
> 
> # ping 206.73.20.40
> PING 206.73.20.40 (206.73.20.40) from 64.252.166.131 : 56(84) bytes of data.
> 
> --- 206.73.20.40 ping statistics ---
> 10 packets transmitted, 0 received, 100% loss, time 9012ms

 I get the same results when I ping 206.73.20.40.
 100% failure.  So:

a. Sorry, I don't know Red Hat's 'redhat-config-network'.
b. You do not want eth# up.
   'ifconfig eth0 down' before running adsl-start.
c. Do not 'bring up' ppp0 yourself.  Let adsl-start do it.
d. '# ifconfig -a' looks perfect
e. I think 'adsl-start' fails rather than 'times out'.
f. Output of 'netstat -nr' looks fine.
g. Yes, kernel 2.4.x does not use IPCHAINS.
h. IPTABLES indicates no knowledge/use of ppp0.  :-(
i. I can ping your gateway too. ;-)
j. Not applicable.
k. I cannot ping your DNS either.

Conclusion:

- rp-pppoe-v? has not been correctly installed and/or configured.
  e.g. Your adsl-start script 'fails'.
  I suggest that if your version is not the 'current' one,
  download and install the current version from Roaring Penguin.
  I think that they have RPMs.  Hopefully a release that creates
  an IPTABLES ruleset is available.

- You do not have a 'working' iptables ruleset because ppp0
  is not mentioned.

HTH, Chuck

> Haines
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
