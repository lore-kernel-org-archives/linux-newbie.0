From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux as a router and/or bridge
Date: Thu, 29 May 2003 20:28:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030529201704.01f24e38@celine>
References: <1054264112.4715.4.camel@jayhawk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1054264112.4715.4.camel@jayhawk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 11:08 PM 5/29/2003 -0400, J S wrote:
>Linux people,
>
>I'm trying to understand how to set up a Linux system as a router.  For
>example, assume I have an interface with IP address 192.168.0.1(eth0)
>and another with IP address 192.168.1.1(eth1).  What do I need to do to
>allow traffic received on one interface to be automatically forwarded
>out of the other interface?  To extend the example, assume eth0 receives
>a packet from 192.168.0.25 that is destined for 192.168.2.40.  What is
>the minimal set of steps I need to perform in order to get my kernel to
>send that packet on its way?

Assuming your routing table is set up correctly (that is, that the Linux 
host itself can communicate with both networks), all you need to do on the 
Linux host is

         echo '1' > /proc/sys/net/ipv4/ip_forward

You do need IP dforwarding compiled into the kernel, but I believe 
off-the-shelf kernel images normally include it.

Hosts on the two LANs need to know that the Linux host is their route to 
the other network, information needed in *their* routing tables ... the 
router's interface on each network needs to be identified either as the 
route to the other network or as the default route for all non-local IP 
addresses.

But that's not part of the Linux router's configuration ... it's required 
for your assumption to hold ("assume eth0 receives a packet from 
192.168.0.25 that is destined for 192.168.2.40", since if  192.168.0.25 
doesn't know that 192.168.0.1 is its route to, probably, 192.168.2.0/24, 
then the router's eth0 interface will never receive the packet).

There is a lot more to routing than this, but you asked for a minial set of 
steps, and this is the simplest routing setup I can think of.

>Second question, what exactly is network bridging and how might I use it
>instead of setting up a Linux system as a router?

Routing takes place at the network layer (IP addresses). Bridging takes 
place at the link layer (in this example, since the interfaces are eth*, 
that would be Ethernet MAC addresses). Linux can bridge as well as route, 
but it's been so long since I used it that way that I cannot rattle off 
even the basics in an e-mail message.

To learn more, I suggest you look at one of the router/firewall specialized 
Linux distros, like LEAF (leaf.sourceforge.net) or get a good book (I like 
Mancill's _Linux Routers_, 2e, published by Prentice-Hall).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
