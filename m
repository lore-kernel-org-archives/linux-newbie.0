From: Ray Olszewski <ray@comarre.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 21:56:33 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040121211920.020312d8@celine>
References: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.co
 m>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.co
 m>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

 From what you wrote, I'd guess that you have not set up iptables to NAT 
the LAN hosts. I'm afraid that what you posted did not answer this 
definitively, but that was my fault; I asked for incomplete information 
about iptables. NAT'ing is done not in the default (filter) table that 
"iptables -nvL" reports, but in the nat table, specifically its POSTROUTING 
chain.

Run "iptables -t nat -nvL", and look for a rule in POSTROUTING similar to 
this one (in which I reckessly reveal my own static IP address, on the 
theory that 3 wrongs neither make a right nor improve the readibility of 
troubleshooting advice) --

Chain POSTROUTING (policy ACCEPT 149K packets, 9127K bytes)
  pkts bytes target     prot opt 
in     out     source               destination
  147K 8592K 
SNAT       all  --  *      eth0   !63.198.182.124       0.0.0.0/0 
to:63.198.182.124

If it is not there, you create this rule with a command like this one:

iptables -t nat -A POSTROUTING -o eth0 -s \! 63.198.182.124 -j SNAT 
--to-source 63.198.182.124

Since I don't know how you set up iptables on your system -- I don't even 
know how stock Red Hat does it, and I won't even try to troubleshoot a 
description like "I looked up the internet and ran some scripts" -- I can 
tell you only the rule you need, not where in your setup to put the command 
to add it.

If this isn't enough to fix your problem, then when you describe it next 
time, you need at least to tell us  where you are pinging these IP 
addresses *from*. Others have tried to guess what you mean by "Pinging 
192.168.1.1 from eth0" and "pinging xxx.xxx.xxx.xxx from eth1" mean,  but I 
prefer to ask you to be clear than to guess. Identify the host explicitly, 
quote the actual command you entered (if you feel you must obfuscate the 
external IP address, at least quote the rest of the command intact) and the 
exact, complete actual response.

Anyway, if you have a LAN to NAT, then you have a host other than this 
Linux host on it, right? You should be testing the ability of the Linux 
host to route using that host, not by doing tricky things with the 
interfaces on the Linux host itself. So if you are using ping with the -I 
flag, that's not the best test of routing and NAT'ing ability. Instead, see 
if a LAN host can ping --
         the Linux router's internal IP address
         the Linux router's external IP address
         your ISP's gateway IP address (the Limux router's default gateway, 
that is)
         some well-known Internet IP address (one known to respond to 
pings; not all do)

Use the success or failure of these tests to determine whether your Linux 
host is routing/NAT'ing the LAN successfully.

There are several well-known drop-in firewalling packages that will handle 
a NAT'd connection like yours probably is. The one I'm most familiar with 
is Shorewall (shorewall.sourceforge.net, I think). You might find it easier 
to turn to one of them, since any good one will deal with both your NAT'ing 
needs and typical firewalling requirements.

At 09:31 PM 1/21/2004 -0500, Chadha, Devesh wrote:
>Here are all the answers:
>
>Chuck's questions:
>My IP address is a public IP.
>I think I am not NATing correctly and hence this problem.
>ping -c 4 192.168.1.1 gives:
>64 bytes from 192.168.1.1 icmp_seq=1 ttl=64 time=0.237 ms
>64 bytes from 192.168.1.1 icmp_seq=2 ttl=64 time=0.152 ms
>64 bytes from 192.168.1.1 icmp_seq=3 ttl=64 time=0.150 ms
>64 bytes from 192.168.1.1 icmp_seq=4 ttl=64 time=0.152 ms
>
>--- 192.168.1.1 ping statistics ---
>4 packets transmitted, 4 received, 0% loss, time 3000ms
>
>ping -c 4 xxx.xxx.xxx.xxx gives:
>64 bytes from xxx.xxx.xxx.xxx icmp_seq=1 ttl=64 time=0.237 ms
>64 bytes from xxx.xxx.xxx.xxx icmp_seq=2 ttl=64 time=0.146 ms
>64 bytes from xxx.xxx.xxx.xxx icmp_seq=3 ttl=64 time=0.151 ms
>64 bytes from xxx.xxx.xxx.xxx icmp_seq=4 ttl=64 time=0.149 ms
>
>--- xxx.xxx.xxx.xxx ping statistics ---
>4 packets transmitted, 4 received, 0% loss, time 2998ms
>
>Rays questions:
>1. Correction, both are not on same subnet. Sorry for the wrong info. I
>guess I am not NATing right
>2. given that information. see below
>3. ip forwarding is on. I dont know if I have NATing set up correct. I
>looked up the internet and ran some scripts.
>Here is my iptables -nvl output:
>
>Chain INPUT (policy ACCEPT 46 packets, 4390 bytes)
>  pkts bytes target        prot  opt   in         out        source
>destination
>
>Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target        prot  opt   in         out        source
>destination
>     0     0 ACCEPT         all  --    eth1        *         0.0.0.0/0
>0.0.0.0/0
>
>Chain OUTPUT (policy ACCEPT 66 packets, 6036 bytes)
>  pkts bytes target        prot  opt   in         out        source
>destination
>
>4.Pinging 192.168.1.1 from eth0 gave destnation host unreachable and pinging
>xxx.xxx.xxx.xxx from eth1 gave the same.
>
>5. I can connect to internet using eth0 since I can browse the internet. I
>can also ping the gateway from eth0
>
>Hope this helps. I know that xxx.xxx.... is annoying, but I cant help it.
>
>Thanks for taking interest...
[old stuff deleted]
[new garbage deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
