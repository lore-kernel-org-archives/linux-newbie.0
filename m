From: Ray Olszewski <ray@comarre.com>
Subject: Re: Router setup
Date: Wed, 09 Mar 2005 17:26:23 -0800
Message-ID: <5.1.0.14.1.20050309171148.01f6ff38@celine>
References: <200503091948.21210.sotl155360@earthlink.net>
Mime-Version: 1.0
In-Reply-To: <200503091948.21210.sotl155360@earthlink.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:48 PM 3/9/2005 -0500, SOTL wrote:
>Hi All
>
>I would appreciate a little help with a router set up.
>
>First I would like to keep this as simple as possible with the intent of
>adding complexity after I make the most basic items function as required
>first.
>
>This is a standard Netgear wireless router with 1 input RJ45 port and 4 
>output
>RJ45 ports and 1 wireless output port.
>
>I would like to have dynastic [input] connection capability for the 
>connection
>to the ISP.

I assume you mean dynamic, not dynastic. In any case, what you have on that 
end is pretty muchdictated by your ISP, not your own preferences.


>I would like to use static [output] connections to the computers with ports
>_____________________________________________
>Proposed Static Router Settings
>
>Route Name     <Computer Name for computer X>
>Designated IP 192.168.10.X
>IP Submask     255.255.255.0
>IP Gateway      192.168.1.X
>
>where X = 1, 2, 3, 4, 5 for RJ45 connection 1, 2, 3, & 4 and 5 for the
>wireless connection.

If the router can support host-level (single address) static routes in its 
routing table (not really a Linux question unless Netgear routers have 
started running embedded Linux), then this is mostly fine, although a bit 
cumbersome. I don't know what "Route Name" means, though, unless it is 
something specific to the Netgear UI (still not a Linux question).

The one fundamental problem with your proposed approach is that you can use 
any given address only once, so you cannot use 192.168.10.1-5 on the 802.3 
connection and then use the same 192.168.10.1-5 addresses on the 802.11 
connection.

On typical wireless routers, the 802.3 and 802.11 interfaces are bridged, 
so they support the same network in the routing table (usually 
192.168.1.0/24).

A less fundamental problem with this approach is that it is unnecessarily 
complex. See the alternative I outline in the next section.

>_____________________________________________
>LAN IP Set-Up
>
>IP Address 191.168.1.1
>IP Subnet   255.255.255.0
>Set Use Router DHCP to on
>Starting IP Address 192.168.20.1
>Ending IP Address 192.168.20.51

This creates the need ofr ugly routing tables. If the router's own address 
is 192.168.1.1 and its netmask (what you call "IP Subnet") is 
255.255.255.0, then it has no route to any 192.168.20.x host. You'll need 
more static routes in the router -AND- static routes on each host to the 
router. This is all very icky.

And really, both  parts of this approach are really doing it the hard way, 
unless you have some compelling reason for not using the standard approach 
with home routers, something like:

         Router IP Address:      192.168.1.1 or 192.168.1.254
         Netmask:                255.255.255.0 (AKA /4)
         Static Addresses:       192.168.1.2-63
         DHCP Addresses: 192.168.1.64-253

Plus you shoudl implement whatever security your wireless interface offers 
(the crappy WEP for 802.11b or the better encryption, called In think WPA, 
for 802.11g ... I don't know which version of wireless your "standard" 
Netgear wireless offers.

>I would appreciate knowing if these setting look OK  or not.
>
>Are there any other settings I have to make for the simplest of systems.

Your approach is far from "simplest". The standard approach that I sketch 
out above is far simpler.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
