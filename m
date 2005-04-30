From: James Miller <jamtat@mailsnare.net>
Subject: wierd firewall log entries: interpretation?
Date: Sat, 30 Apr 2005 18:04:42 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504301732280.13807@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello all:

I run a Freesco router/firewall here and check the logs from time to time. 
The typical entry looks something like this:

Apr 29 17:39:35 - kernel: IP fw-in deny eth0 TCP 218.85.135.54:2109 my.router.ip.addy:80 L=60 S=0x00 I=19787 F=0x4000 T=48

I interpret it to mean that someone from the internet, using address 
218.85.135.54 is making a request to port 80 on my router/firewall, and 
that they are issuing the request from port 2109 on their machine. Is this 
pretty much on target? I guess they're checking to see if I'm running a 
web server or something.

Anyway, given these suppositions, I occassionally get some entries that 
confuse me. They confuse me because, in place of my.router.ip.addy, there 
is a different IP address. It's not one from my LAN, and it's not one from 
the range of university addresses on which my router/firewall is located 
(close range WAN?). In instances I give below, one address is 224.0.0.251. 
So, it's as if the firewall is telling my that someone is sending a 
request to my router as though its address were 224.0.0.251, and that the 
kernel is blocking the request. Here are some examples that appeared 
recently:

Apr 29 18:15:42 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49243 224.0.0.251:53 L=59 S=0x00 I=9282 F=0x0000 T=1
Apr 29 18:15:42 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49243 224.0.0.251:53 L=59 S=0x00 I=9284 F=0x0000 T=1 
Apr 29 23:59:07 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49268 224.0.0.251:53 L=59 S=0x00 I=40040 F=0x0000 T=1
Apr 29 23:59:08 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49268 224.0.0.251:53 L=59 S=0x00 I=40042 F=0x0000 T=1
<snip>
Apr 30 09:10:00 - kernel: IP fw-in deny eth0 TCP 134.48.206.92:62718 128.11.250.3:80 L=52 S=0x00 I=29969 F=0x4000 T=63
Apr 30 09:10:00 - kernel: IP fw-in deny eth0 TCP 134.48.206.92:62718 128.11.250.3:80 L=52 S=0x00 I=29969 F=0x4000 T=62
Apr 30 12:48:58 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49192 224.0.0.251:53 L=59 S=0x00 I=1839 F=0x0000 T=1
Apr 30 12:48:58 - kernel: IP fw-in deny eth0 UDP 134.48.206.176:49192 224.0.0.251:53 L=59 S=0x00 I=1841 F=0x0000 T=1

The addresses from which the request is being made in these cases are 
addresses local to the WAN I'm on (university network). But their last 3 
digits are different than my router/firewall's. I get a pretty much static 
IP from the university, btw (changes maybe once a year).

So, what is the explanation for this? Of course it could be something 
simple and inocuous, and it's just my sketchy understanding of firewalls, 
routing, and networking that makes them seem suspicious. Any cause for 
concern here? Clarifications on fundamental aspects of what's involved?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
