From: Ray Olszewski <ray@comarre.com>
Subject: Re: daisychain addresses
Date: Fri, 12 Mar 2004 08:21:27 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040312074450.0204a6b8@celine>
References: <40518631.5020203@arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40518631.5020203@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:43 AM 3/12/2004 +0100, Andrew Langdon-Davies wrote:
>Hello,
>In a daisychain network such as this:
>fw/router------server------workstation1------workstation2 (these are 
>descriptions, not real hostnames), how should the addresses be set up? At 
>the moment, all the machines are on 192.168.0.0. Is this wrong? Each 
>machine can ping its neighbour but no farther, except for 'server', which 
>can connect to the Internet via 'fw/router'. But 'workstation1' cannot 
>ping 'fw/server', even after doing 'route add fw/router gw server eth0'. 
>Using numerical addresses makes no difference. All my /etc/hosts list 
>every machine. Daisychaining does not seem to be very much covered in the 
>documentation I've found. I'm sure I'm making a basic mistake (apart from 
>being too stingy to invest in hubs or switches or whatever). Therefore, a 
>basic (and very general) question: What is the correct way to address 
>machines in this sort of topology?
>TIA,
>Andrew


It depends on what actual topology you are describing by "daisychaining". 
Others replying to you seem to be assuming that each host (except the 
rightmost one in your representation) has two NICs (Ethernet interfaces). 
In that case, you could use a setup something like the following:

              Internet
                 |
                   eth0
             (ext.er.nal.ip)
                router
            (192.168.1.254)
                   eth1
                     |
                    eth0
             (192.168.1.1)
                 server
             (192.168.2.254)
                   eth1
                 |
                   eth0
              (192.168.2.1)
               workstation1
              (192.168.3.254)
                   eth1
                 |
                   eth0
              (192.168.3.1)
               workstation2

Each system in this daisychain (except workstation2) serves as a router for 
the system immediately below it and is that system's default gateway. 
Depending on details you haven't provided about what you have in mind, 
EITHER --

         A. Each system NATs the network immediately below it (so, for 
example, traffic from workstation2 to the Internet gets NAT'd 3 times); -OR-

         B. Each router has a routing table that allows it to fins ALL the 
networks below it in my diagram (so, for example, "router" knows that 
"server" is its route to 192.168.2.0/24 and 192.168.3.0/24).

If you are trying approach B here, then the entry "route add fw/router gw 
server eth0" does only half the job. On "fw/router", you need an entry 
something like "route add workstation1/24 server eth?" (the last ? because 
I don't know how your interfaces are assigned).

The other possibility is to run "server" and "workstation1" as bridges 
rather than routers. In that case, all the hosts would have addresses on 
the same IP network (probably 192.168.1.0/24) and the bridging hosts would 
bridge. OR you could use one network and set up "server" and "workstation1" 
to proxy-ARP the addresses "below" them.

All this assumes, though, that each system (except workstation2) has 2 
NICs. The example ifconfig output you posted in reply to someone else's 
request, though, shows only an eth0 in the example host, workstation1. So I 
suspect you actually have some different physical setup than what I assume 
above (and chuck also assumed, I think). If that's the case, then you're 
going to have to describe it more completely and exactly to get real help 
with it ... my response above, and the responses of others, are likely not 
to apply to your actual setup.

For example, you may trying to describe a thinnet network ... and I must 
say that thinnet, not multiple NICs,  is the first physical-layer 
arrangement I think of when someone mentions "daisychaining". In that case, 
only the router has 2 interfaces, and your setup looks something like this:

         T
         | ----eth1(192.168.1.254) fw/router(ext.er.nal.ip)eth0 ---- Internet
         |
         | ---- eth0 (192.168.1.1) server
         |
         | --- eth0 (192.168.1.2) workstation1
         |
         | --- eth0 (192.168.1.3) workstation2
         |
         T

(the Ts at top and bottom remind us that thinnet needs hardware terminators 
at both ends.)

In this case, all the machines DO belong on the same /24 network, and 
fw/router's LAN IP address IS the default gateway for all of them. So 
adding route add fw/router gw server eth0' would be incorrect ... though 
HOW (or, even possibly, whether) it would fail depends on unreported 
details of the configuration of "server".

If we haven't guessed correctly about what you mean by "daisychaining", 
please clarify. Specifically:

         provide a diagram more in the style of the one I present above 
(that is, make it vertical, and include exact interface names and IP 
addresses);

         include the output of "ifconfig -a" and "netstat -nr" for EVERY 
host you want us to troubleshoot;

         mention what version of Linux (distro name, distro version, and 
kernel version, the last coming from "uname -a") each system is running; and

         report the EXACT error associated with every ping that fails.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
