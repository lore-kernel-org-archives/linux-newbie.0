From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: Networking issue
Date: Fri, 3 Jan 2003 12:45:09 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301031245.09599.Adam@Luchjenbroers.com>
References: <5.1.0.14.1.20030102082846.021bb750@celine>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030102082846.021bb750@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Friday 03 Jan 2003 2:08 am, Ray Olszewski wrote:
> Your report is way too sketchy to let anyone spot the problem. Post a
> followup with this information:
>
>          1. Unedited output of "ifconfig -a"

eth0      Link encap:Ethernet  HWaddr 00:09:5B:1A:45:6D  
          inet addr:192.168.0.90  Bcast:192.168.0.255  Mask:255.255.255.0
          UP BROADCAST NOTRAILERS RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:527043 errors:0 dropped:0 overruns:0 frame:0
          TX packets:252053 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:100 
          RX bytes:763516605 (728.1 Mb)  TX bytes:16678999 (15.9 Mb)
          Interrupt:5 Base address:0x1000 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:12 errors:0 dropped:0 overruns:0 frame:0
          TX packets:12 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:1008 (1008.0 b)  TX bytes:1008 (1008.0 b)

>          2. Unedited output of "netstat -nr'

Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
192.168.0.0     0.0.0.0         255.255.255.0   U        40 0          0 eth0
127.0.0.0       0.0.0.0         255.0.0.0       U        40 0          0 lo
0.0.0.0         192.168.0.1     0.0.0.0         UG       40 0          0 eth0

>          3. Unedited output of "iptables -nvL"

Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               
destination

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               
destination

Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               
destination


>          4. An EXACT description of what the ping failures look like. (Does
> ping fail silently, or does it fail with an error message? If there's a
> message, what is it). Do this for (a) 127.0.0.1 pinged from the Mandrake
> host and (b) its eth0 IP address pinged from some other host (and mention
> what OS that host is running, since that affects the wording of ping error
> messages).

No error messages, replies just don't get received

>          5. The unedited output of
> "cat  /proc/sys/net/ipv4/icmp_echo_ignore_all"

1

>          6. An EXACT description of what the ssh failures look like.
> Include info on how you run sshd (as a deamon by itself or through inetd),
> any error messages sshd logs, and how long you wait before deciding that
> sshd has failed (if you haven't been waiting for 5 minutes before giving
> up, please do so, so we can rule out DNS-related logging errors).

Default setup for Mandrake 9, how do I check?

I use gtelnet to connect from my workstation (it supports using ssh), it tries 
to connect but then fails. Oddly enough, http and ftp servers seem to work 
fine (only just tested them)

I want SSH so I don't have to use this second monitor and keyboard to do 
everything (messy)

> Do all of this WITHOUT installing Shorewall. Let's fix the problems one at
> a time ... get your basic conectivity working, then get the system properly
> firewalled. Oh, also mention what kernel version you are using ("uname -a")
> and whether you compiled it yourself or it is a stock Mandrake kernel.

Would be the stock Mandrake 9 kernel (2.4.19-16mdk)

-- 
"Unix is user-friendly. It just isn't promiscuous about which users it's 
friendly with." - Steven King

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
