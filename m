From: Ray Olszewski <ray@comarre.com>
Subject: Re: PPP server doesn't work
Date: Sat, 27 Mar 2004 06:20:14 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040327055706.01f263a0@celine>
References: <200403271346.23320.vhlist@yandex.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403271346.23320.vhlist@yandex.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You are going to have to say a bit more about the setup to get good help. 
For now ...

1. Your routing table is hard to read (due to the "ppp" entry on the first 
line). But your ifconfig output says that both ends of the ppp link are in 
netwotk 192.168.0.0/16, which the routing talbe says is in eth0, not ppp0. 
Usually host routes supersede network routes, but the use of "ppp" conceals 
the actual address set. When reporting routing tables, ALWAYS use a flag to 
force reporting by address (e.g., "netstat -nr" or "route -n").

2. Since you are familiar with tcpdump ... are the ping packets going out 
ANY interface? (Answer with respect both to the host you are ping'ing from 
AND the "ppp server", if they are different hosts.)

3. here are you ping'ing FROM? The server itself? Some other host on 
192.168.0.0/16? Since you talk about proxyarp, I'd guess the second. If so, 
after you try and fail to ping, does this third host's arp table have an 
entry for the "ppp server "host? Does the ping fail silently, or is there 
some error message?

4. Can you ping the "ppp server" from the "ppp client"? If not, how does 
that ping fail (silently, or is there an error message)?

5. Next time please be very exact about which machine is which.

         You say you put "a small PPP server on my home machine".

         Later, you talk about "local" and "remote" machines, but I am 
unclear as to which of these is the ppp "server" (since you said it was 
your "home" machine, does that mean it is "local"?).

         Then you tell us which IP address is "vhcastle", which "ppp", 
without explaining what the hostnames refer to.

         Similarly, later switching to referring to the "server" and the 
"other end" leaves me confused ... pick one way to refer to each host and 
stick with it, please.

In addition to clarifying the above items, next time please provide for 
BOTH hosts (or all 3, if you are ping'ing from yet a different host), the 
unedited output of

         ifconfig -a
         netstat -nr
         cat /proc/net/arp [this AFTER an unsuccessful ping]

labeling them very clearly as to which is which.

At 01:46 PM 3/27/2004 +0300, Anton Martchukov wrote:
>I did install a small PPP server on my home machine in order to play
>FreeCiv etc., but can't figure out why it refuses to run. According to
>pppd debug logs all goes right, here is the options I use for pppd:
>
>auth
>-chap
>+pap
>login
>debug
>proxyarp
>ktune
>asyncmap 0
>netmask 255.255.0.0
>lock
>crtscts
>modem
>vhcastle:ppp
>ms-dns 192.168.1.1
>mtu 576
>mru 576
>logfile /var/log/pppd.log
>
>I use proxyarp and pppd tells that allright in logs:
>
>found interface eth0 for proxy arp
>local  IP address 192.168.1.1 (this is vhcastle)
>remote IP address 192.168.10.1 (this is ppp)
>
>But anyway I can't ping remote machine, none of packets are sent thru
>the link, I've checked it with tcpdump. IP forwarding is enabled via
>sysctl.
>
>ifconfig ppp0:
>ppp0   Link encap:Point-to-Point Protocol
>           inet addr:192.168.1.1  P-t-P:192.168.10.1 Mask:255.255.255.255
>           UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:576  Metric:1
>           RX packets:5 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:5 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0
>           RX bytes:102 (102.0 b)  TX bytes:96 (96.0 b)
>
>route on server:
>ppp                 *      255.255.255.255 UH  0      0        0 ppp0
>169.254.0.0     *      255.255.0.0        U     0      0        0 eth0
>192.168.0.0     *      255.255.0.0        U     0      0        0 eth0
>127.0.0.0         *       255.0.0.0          U     0      0        0 lo
>
>So, I completely stuck with this. Some points confusing me are NOARP for
>ppp0 in the output of ifconfig (is this a problem?). Also, I can't
>pinpoint where the net 169.254.0.0 is assigned to eth0 in configs, I
>did not specify it anywhere.
>
>I use RedHat 9 (ASP 9) with pppd 2.4.2, same on the other end + KPPP
>from KDE 3.1. Any ideas will be greatly appreciated.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
