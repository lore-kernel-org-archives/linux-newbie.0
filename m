From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Linux as a router and/or bridge
Date: Fri, 30 May 2003 10:48:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ED79956.1060001@bcgreen.com>
References: <1054264112.4715.4.camel@jayhawk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1054264112.4715.4.camel@jayhawk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: J S <webnews@comcast.net>, linux-newbie@vger.kernel.org



J S wrote:
> out of the other interface?  To extend the example, assume eth0 receives
> a packet from 192.168.0.25 that is destined for 192.168.2.40.  What is
> the minimal set of steps I need to perform in order to get my kernel to
> send that packet on its way?

on an ad-hock basis, the answer of
   echo 1 > /proc/sys/net/ipv4/ip_forward

   sysctl.conf:net.ipv4.ip_forward = 1 >> /etc/sysctl.conf
   (note the double greater than on this one.. You want to append it)
   sysctl.conf works on RedHat. it may work on other distributions too.

   man sysctl.conf to see if you have it on your distro.
> 
> Second question, what exactly is network bridging and how might I use it
> instead of setting up a Linux system as a router?

bridging is used to connect two networks in a transparent manner.
With bridging, the two 'networks' would normally have the same
subnet, and the bridge would essentially act like a switching hub.
traffic that between two machines on the same side of the
bridge will not normally go to the other side, other traffic will
to through as if the bridge is a slow piece of wire. For each
packet that gets retransmitted, the card is actually programmed
to the ethernet MAC address of the original originator of the
packet.

Unlike routers, bridges do NOT show up in a traceroute

The main reason to use a UNIX (linux) instead of a hub is
that it allows you to do  filtering. Usually this is security
related, but you can also use it more actively to simulate
various network conditions (but OpenBSD has a better set of
tools for doing that, right now).

If you have a bridging hub where none of the ethernet cards
has it's own IP address, then the machine will be unreachable
on those networks -- essentially invisible.If you're using it
for security reasons, this makes it that much harder for an
intruder to break into.



Note that bridging and routing can coexist.  I've set up a
system (OpenBSD, in this case) with three interfaces as follows
(names and addresses changed for simplicity)

eth1   external link   64.35.83.88
ext2   internal, bridged to outside
eth3   internal routed link 10.35.44.1

To do that, I had to give eth1 and eth3 IP addresses  and turn
on forwarding.  Eth3 did NOT need an IP address (since it's used
for bridging only)  In this case, the machines on the eth3 network
could talk to the router using it's address on eth1.

machines attached to eth3 would talk directly to our ISP's router.
(and have 64.35.83.XXX addresses) machines on the eth2 network
would use 10.35.44.1 as their default router and have 10.35.44.xxx
addresses.

(Some people might notice that 10.xx.xx.xx addresses are
non-routing and would thus need a NAT setup, but we can ignore
that for now (just presume that our ISP does the NAT work).)


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
