From: Jim Earl <jimurl@montanaice.com>
Subject: Re: ifconfig appears to also add entry to routing table
Date: Sun, 01 Sep 2002 20:08:02 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <B998241F.2F1F%jimurl@montanaice.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Well, as is common, you all forcing me to clearly state the problem made its
root cause apparent... I read the IP Masqerading-HOWTO, and found that I
hadn't given ipschains the correct arguments, so that was my router problem.

Although it sounds stupic, I had been trying to establish a route to the LAN
itself ( with the router as its own gateway ) because "thats how it was in
the documentation ".   From what I had seen, every entry in the routing
table included an entry in the Gateway column.  So I was attempting to
delete the existing entries and replace them with entries which included
gateway information.  Here's what my routing table looks like:

Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use
Iface
66.109.134.225  *               255.255.255.255 UH    0      0        0 ppp0
192.168.1.0     *               255.255.255.0   U     0      0        0 eth0
127.0.0.0       *               255.0.0.0       U     0      0        0 lo
default         66.109.134.225  0.0.0.0         UG    0      0        0 ppp0

The idea being to establish a dial- up connection to my ISP, and allow the
Mac on my LAN to communicate with the Great Unknown via the router.

Thanks again for your "answer", which was questions forcing me to examine
the problem differently.

Jim






-----Previous message------

Jim --

First, the basics: What Linux distro, what kernel version? Does it use ifup
and ifdown, or do its init scripts call ifconfig and route directly?

Second, when you say " ifconfig verifys that this if is good to go" ... are
you sufficiently expert to be sure of this? If not, please repost with the
actual output if "ifconfig -a" as it appears just before you run the
unsuccessful "route" command.

Third, in my experience, I've found "route" to be a bit picky in ways that
the man page doesn't warn about. In your case, I'd suggest you try this
form of the command

         route add -host 192.168.1.2 dev eth0

and see if it does any better for you.

(Of course, I can't comment on the "various stabs" that you do not
describe... it may be that you already tried this, without success.)

Finally, you write:

         Destination  Gateway   Genmask     Flags    Metric   REf  Use
Iface
         192.168.1.0     *    255.255.255.0   U        0       0     0
eth0

         Though this seems sloppy- note that Flags column lacks an "N" for
Network.

If you look at the list of flags in the man page for "route", you will
notice that N is not a choice. There is an H for host and a G for gateway,
but routes are assumed to be networks by default, so not specially labeled.
So no, it is not "sloppy".

As to the "undocumented" addition of this route ... I'm so used to this
stuff happening in the background that I don't recall offhand what command
does what (ifup and ifdown, the commands used on most modern, full-size
Linux distros, does handle both, and their man pages do say so). So you
might be more specific about the details of what you did (for example, was
the routing table empty *before* you brought the interface up?).

As to the source of your router problem, I wouldn't hazard a guess. Your
guess seems implausible, though ... routers do not usually need to be told
that they are their own gateways; indeed, I find it hard to imagine a
circumstance under which this would even work ... but you offer so little
description of your setup, any comments here are wild guesses. IF you want
help at that level, please tell us

         what you want this system to route between (2 Ethernets?
                 an Ethernet LAN and a dialup connection
                 to the Internet? something else?) what interfaces
                 does it have (probably eth* and/or ppp*)?
         whether the hosts on the LAN(s) have "real" (routable) IP
                 addresses or you want the router to use IP Masquerading
                 to NAT them for connections to the Internet
         what "ifconfig -a" shows when the router does not route
         what "netstat -nr" shows when the router does not route
         what "cat /proc/sys/net/ipv4/ip_forward" shows when the
                 router does not route
         if this is a connection to the Internet, how the interface to the
                 ISP is supposed to get its IP address (static? DHCP?
                 PPPoE?) and what the ISP says you are supposed to use
                 as a gateway address.
         if this is a connection to the Internet, can you ping the gateway
                 address above? If not, HOW does ping fail (yes, there are
                 many different errors it can report, and they are
diagnostic).
         what the routing failures are? For EXAMPLE, can the router itself
                 make Internet connections, but not hosts on the LAN it is
                 supposed to route?

There may be more we need to know, but that will make a good start.

At 01:20 PM 9/1/02 -0600, Jim Earl wrote:
>Hello all,
>
>I have been configuring a linux box to function as a router, ran into some
>problems, and think that I traced the problem to a faulty routing table.  So
>I brought down all my interfaces and routing table ( except lo ) and
>attempted to add them manually.
>
>I was able to add an interface manually, assigning my eth0 device the IP
>addr 192.168.1.2.  ifconfig verifys that this if is good to go.
>
>However, I found that I was unable to give a simple "route" command, for
>example:
>
>route add 192.168.1.2
>
>gives the response:
>
>SIOCADDRT: No such device
>
>the man page for route implies that you can specify the device in the route
>command also:
>
>route add 192.168.1.2 dev eth0
>
>Still no good.  Various stabs at syntax based on the route man page also
>yield nothing
>
>
>I have also found that after issuing the ifconfig command, the routing table
>is automatically updated with an entry for a route to that network:
>
>Destination  Gateway   Genmask     Flags    Metric   REf  Use   Iface
>192.168.1.0     *    255.255.255.0   U        0       0     0   eth0
>
>Though this seems sloppy- note that Flags column lacks an "N" for Network.
>
>This is undocumented behavior, as everywhere I have looked it has been
>implied that one has to bring up an interface and also independently
>establish the route to it.  I would like to be able to add a route to the
>host itself, indicating that it is its own gateway ( I believe this is the
>root of my router problem- no pun intended .  Can someone verify this?)
>
>Of course, Thanks in advance,
>
>Jim




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski                    -- Han Solo
Palo Alto, California, USA              ray@comarre.com
----------------------------------------------------------------------------
---




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
