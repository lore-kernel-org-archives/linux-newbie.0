From: Jim Earl <jimurl@montanaice.com>
Subject: ifconfig appears to also add entry to routing table
Date: Sun, 01 Sep 2002 13:20:07 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <B997C486.2F11%jimurl@montanaice.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello all,

I have been configuring a linux box to function as a router, ran into some
problems, and think that I traced the problem to a faulty routing table.  So
I brought down all my interfaces and routing table ( except lo ) and
attempted to add them manually.

I was able to add an interface manually, assigning my eth0 device the IP
addr 192.168.1.2.  ifconfig verifys that this if is good to go.

However, I found that I was unable to give a simple "route" command, for
example:

route add 192.168.1.2

gives the response:

SIOCADDRT: No such device

the man page for route implies that you can specify the device in the route
command also:

route add 192.168.1.2 dev eth0

Still no good.  Various stabs at syntax based on the route man page also
yield nothing


I have also found that after issuing the ifconfig command, the routing table
is automatically updated with an entry for a route to that network:

Destination  Gateway   Genmask     Flags    Metric   REf  Use   Iface
192.168.1.0     *    255.255.255.0   U        0       0     0   eth0

Though this seems sloppy- note that Flags column lacks an "N" for Network.

This is undocumented behavior, as everywhere I have looked it has been
implied that one has to bring up an interface and also independently
establish the route to it.  I would like to be able to add a route to the
host itself, indicating that it is its own gateway ( I believe this is the
root of my router problem- no pun intended .  Can someone verify this?)

Of course, Thanks in advance,

Jim


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
