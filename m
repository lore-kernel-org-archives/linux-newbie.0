From: Anton Martchukov <vhlist@yandex.ru>
Subject: PPP server doesn't work
Date: Sat, 27 Mar 2004 13:46:22 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403271346.23320.vhlist@yandex.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I did install a small PPP server on my home machine in order to play 
FreeCiv etc., but can't figure out why it refuses to run. According to 
pppd debug logs all goes right, here is the options I use for pppd:

auth
-chap
+pap
login
debug
proxyarp
ktune
asyncmap 0
netmask 255.255.0.0
lock
crtscts
modem
vhcastle:ppp
ms-dns 192.168.1.1
mtu 576
mru 576
logfile /var/log/pppd.log

I use proxyarp and pppd tells that allright in logs:

found interface eth0 for proxy arp
local  IP address 192.168.1.1 (this is vhcastle)
remote IP address 192.168.10.1 (this is ppp)

But anyway I can't ping remote machine, none of packets are sent thru 
the link, I've checked it with tcpdump. IP forwarding is enabled via 
sysctl.

ifconfig ppp0:
ppp0   Link encap:Point-to-Point Protocol
          inet addr:192.168.1.1  P-t-P:192.168.10.1 Mask:255.255.255.255
          UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
          RX packets:5 errors:0 dropped:0 overruns:0 frame:0
          TX packets:5 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0
          RX bytes:102 (102.0 b)  TX bytes:96 (96.0 b)

route on server:
ppp                 *      255.255.255.255 UH  0      0        0 ppp0
169.254.0.0     *      255.255.0.0        U     0      0        0 eth0
192.168.0.0     *      255.255.0.0        U     0      0        0 eth0
127.0.0.0         *       255.0.0.0          U     0      0        0 lo

So, I completely stuck with this. Some points confusing me are NOARP for 
ppp0 in the output of ifconfig (is this a problem?). Also, I can't 
pinpoint where the net 169.254.0.0 is assigned to eth0 in configs, I 
did not specify it anywhere. 

I use RedHat 9 (ASP 9) with pppd 2.4.2, same on the other end + KPPP 
from KDE 3.1. Any ideas will be greatly appreciated.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
