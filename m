From: Ray Olszewski <ray@comarre.com>
Subject: Fwd: Re: tuning iptables (was Who is running Red Hat 8.0 and
  Roaring Penguin?)
Date: Wed, 04 Dec 2002 16:36:59 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021204163620.021046c0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- Your system is using that bogus "To: 
inux-newbie@hartford-hwp.com" address again. My substantive response to 
your questions is in the forwarded response below.

>Date: Wed, 04 Dec 2002 16:31:45 -0800
>To: linux-newbie@hartford-hwp.com
>From: Ray Olszewski <ray@comarre.com>
>Subject: Re: tuning iptables (was Who is running Red Hat 8.0 and Roaring 
>Penguin?)
>
>Haines --
>
>First, could you explain the symptom ("extraordinarily large turn around 
>times") in a bit more detail?
>
>The ping results you report look just fine -- individual ping responses 
>from aol.com in what you sent us are:
>         64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=1
>                 ttl=52 time=58.7 ms
>         64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=2
>                 ttl=52 time=60.0 ms
>         64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=3
>                 ttl=52 time=60.6 ms
>
>That's good response; pinging aol.com from from here, I see 90 ms times 
>(and slightly lower ttls, indicating that my pings need to take more hops 
>than yours), not the 60 ms you report above. But just to be clear, these 
>are GOOD ping times, not "extraordinarily large" ones, by any measure.
>
>The only oddity is on the summary line, which reads
>
>         3 packets transmitted, 3 received, 0% loss, time 10308ms
>                 rtt min/avg/max/mdev = 58.705/59.820/60.683/0.874 ms
>
>My version of ping (from Debian Sid) displays a different summary line, 
>one that omits the odd "10308ms" entry above completely. And with 
>everything else looking both normal and good, I don't know what 
>significance to attach to that value (surely not that these 3 pings really 
>took 10 seconds to run, rather than the 0.03 seconds their individual 
>times add up to).
>
>One thought ... might your problem really be slow DNS? That wouldn't show 
>in the ping results themselves, but it would show in a long delay before 
>the first ping goes out. Does pinging an IP address do any better than 
>pinging an FQN, for example?
>
>As to your iptables rulesets, the first odd thing about them is the 
>presence of the unidentified (by you) IP addresses 206.141.193.55 and 
>206.73.20.40 in the only active chain (Chain RH-Lokkit-0-50-INPUT). Are 
>these perhaps your ISP's DNS servers? Probably, since the rules for them 
>involve source-port 53, and the first one indicates that you have received 
>packets that match it.
>
>But the final 2 rules in this same chain block all other UDP and some 
>other TCP (I didn't look up what those flags involve) packets. This should 
>prevent many other services from working on this system, an odd setup 
>unless the system is intended to be a router (a bit implausible, since the 
>FORWARD chain is unconfigured, although the presence of 2 Ethernet 
>interfaces suggests that routing is an intended purpose). These rules no 
>doubt are blocking your pop3 (fetchmail) connections.
>
>Since the Chain RH-Lokkit-0-50-INPUT doesn't mention icmp, handling those 
>packets reverts back to the INPUT chain, whose default ACCEPT policy 
>should pass them. And indeed, we see policy "ACCEPT 1472 packets", which 
>no doubt includes (but is not limited to; the byte count is way too big) 
>the pings. Any TCP traffic that does not match the penultimate rule in the 
>RH-Lokkit chain also drops through, and that probably explains why you can 
>run a browser successfully.
>
>Overall, these rulesets are a mess. Just to get things working at the test 
>level, I'd suggest you simply delete them and set policies to ACCEPT. If 
>you verify that everything works right with that setup, you can begin to 
>investigate setting up a working firewall. To comment on that part, I'd 
>need to know a bit about the system in question, specifically ..
>
>         is it a standalone workstation or will it also NAT and route 
> traffic from a LAN?
>         what services are you actually running on it ("netstat -l")
>         if it is a router, what serviees on other hosts do you want to 
> make available on the Internet?
>
>My own custom is to write my own iptables or ipchains rulesets, not use a 
>prepackaged firewall system. But even so, I might be able to give you some 
>useful advice if I knew even those basics about your setup.
>
>Oh, one final thing ... since your external IP address is dynamic, you 
>should have rp-pppoe set up to re-run your firewall scripts when the ppp0 
>IP address changes. If you don't, then any decent ruleset (any one that 
>gives you good protection) will cease to work properly whenever the 
>interface address changes. Either rp-pppoe or pppd itself (I forget which 
>at this moment) has the ability to run a script when the interface gets an 
>address assigned, and you need to tie your firewalling into that facility.
>
>At 05:59 PM 12/4/02 -0500, Haines Brown wrote:
>>I've changed the subject line because the original problem of a broken
>>Roaring Penguin has been resolved.
>>
>>I'm trying to set up RedHat to use my DSL connection. The connection
>>now works fine, and I can browse Internet with a browser. The problem
>>lies in a VERY slow ping and a fetchmail hang. I have reason to
>>believe the TCP packets are not coming into my machine through the
>>high level firewall protection (plus Bastille, but I left Bastille's
>>iptable defaults alone).
>>
>>Fetchmail reports the number of messages waiting on the mail server,
>>but hangs on the retrieve of the first message.
>>
>>Because my iptables suggests there's an eth0 and an eth1, I run:
>>
>>         # ifconfig -a
>>
>>and that seems perfectly ok. The eth0 is up and ppp0 is up and has
>>been assigned an address by my ISP. The ping of the ppp0 address works
>>just fine.
>>
>>   # netstat -nr
>>   Kernel IP routing table
>>   Destination   Gateway      Genmask         Flags MSS Win irttIface
>>   64.252.160.1  0.0.0.0      255.255.255.255 UH     40 0   0 ppp0
>>   127.0.0.0     0.0.0.0      255.0.0.0       U      40 0   0 lo
>>   0.0.0.0       64.252.160.1 0.0.0.0         UG     40 0   0 ppp0
>>
>>I can ping the gateway address, 64.252.160.1 just fine.
>>
>>But if I try to ping anything else, I get extraordinarily large turn
>>around times:
>>
>>  # ping aol.com
>>  PING aol.com (205.188.145.215) from 64.252.172.254 : 56(84) bytes
>>       of data.
>>  64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=1
>>      ttl=52 time=58.7 ms
>>  64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=2
>>     ttl=52 time=60.0 ms
>>  64 bytes from aol-v1.websys.aol.com (205.188.145.215): icmp_seq=3
>>     ttl=52 time=60.6 ms
>>
>>  --- aol.com ping statistics ---
>>  3 packets transmitted, 3 received, 0% loss, time 10308ms
>>  rtt min/avg/max/mdev = 58.705/59.820/60.683/0.874 ms
>>
>>
>>Finally, my iptables:
>>
>># iptables -nvL
>>Chain INPUT (policy ACCEPT 1472 packets, 565K bytes)
>>  pkts bytes target     prot opt in     out     source  destination
>>
>>  1773  599K RH-Lokkit-0-50-INPUT  all  --  *  * 0.0.0.0/0 0.0.0.0/0
>>
>>Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>>  pkts bytes target     prot opt in     out     source  destination
>>
>>
>>Chain OUTPUT (policy ACCEPT 2232 packets, 325K bytes)
>>  pkts bytes target     prot opt in     out     source  destination
>>
>>
>>Chain RH-Lokkit-0-50-INPUT (1 references)
>>  pkts bytes target     prot opt in     out     source  destination
>>
>>    91 19639 ACCEPT     udp  --  *      *  206.141.193.55 0.0.0.0/0
>>        udp spt:53 dpts:1025:65535
>>     0     0 ACCEPT     udp  --  *      *  206.73.20.40   0.0.0.0/0
>>        udp spt:53 dpts:1025:65535
>>     0     0 ACCEPT     udp  --  eth0   *  0.0.0.0/0      0.0.0.0/0
>>        udp spts:67:68 dpts:67:68
>>     0     0 ACCEPT     udp  --  eth1   *  0.0.0.0/0      0.0.0.0/0
>>        udp spts:67:68 dpts:67:68
>>   150 10348 ACCEPT     all  --  lo     *  0.0.0.0/0      0.0.0.0/0
>>
>>    33  1596 REJECT     tcp  --  *      *  0.0.0.0/0      0.0.0.0/0
>>        tcp flags:0x16/0x02 reject-with icmp-port-unreachable
>>    27  2106 REJECT     udp  --  *      *  0.0.0.0/0      0.0.0.0/0
>>        udp reject-with icmp-port-unreachable
>>
>>It seems that tcp packets are rejected (because icmp port unreachable?).
>>Further, I have ppp0 and eth0 interfaces, but no eth1 interface.
>>
>>When I run insmod I find:
>>
>>         ip_tables              14936   2  [ipt_REJECT iptable_filter]
>>
>>Reading man iptables leaves me in a cold sweat, and I'd appreciate
>>insight into what looks wrong in this table and what I might do about
>>it.
>

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
