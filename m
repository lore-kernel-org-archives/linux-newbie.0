From: James Miller <jamtat@mailsnare.net>
Subject: router/firewall log interpretation help
Date: Wed, 18 Feb 2004 13:46:39 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402181323100.1034@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've set up a Freesco router/firewall (university LAN/WAN) that does
logging, and I'd like some help interpreting something I saw in the log.
Hopefully, with some help I get here and scattered reading here and there,
I'll get a better idea of log entries and how to interpret them.  I look
at the log once a day or so, just to see what sorts of activity it's
logging and to see if I can understand any of it.  Some strange entries
showed up yesterday, and I'd just like to get some input on what they
mean.  Here's the relevant excerpt:

-----------BEGIN FREESCO LOG EXCERPT-----------------
Feb 17 15:08:13 - kernel: IP fw-in deny eth0 UDP 192.168.1.101:68
255.255.255.255:67 L=328 S=0x00 I=391 F=0x0000 T=128
<snip>
Feb 17 15:46:09 - kernel: IP fw-in deny eth0 UDP 192.168.1.100:68
255.255.255.255:67 L=328 S=0x00 I=183 F=0x0000 T=128
Feb 17 16:29:14 - kernel: IP fw-in deny eth0 UDP 192.168.1.100:68
255.255.255.255:67 L=328 S=0x00 I=17186 F=0x0000 T=128
----------------END FREESCO LOG EXCERPT-----------------

If I understand correctly, a UDP packet is coming from 192.168.1.101 port
68 to 255.255.255.255 port 67.  Have I got that part right?  If so, it's
sort of like a machine with a local address (192.168.x.x is class c
addressing, right?) is making a dhcp request (I understood from something
I read that port 68 is for dhcp) to any computer listening on port 67.
Doesn't 255.255.255.255 include all machines with any IP address?
Couldn't find much in the little bit of searching I did on port 67.  And
I'm at a total loss on what L=328 and the like means.  Clarifications,
observations, corrections and comments welcomed.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
