From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: ifconfig appears to also add entry to routing table
Date: Sun, 1 Sep 2002 19:41:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02090119414005.09346@unix.pa3gcu>
References: <B997C486.2F11%jimurl@montanaice.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <B997C486.2F11%jimurl@montanaice.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Earl <jimurl@montanaice.com>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sunday 01 September 2002 19:20, Jim Earl wrote:
> Hello all,
>
> I have been configuring a linux box to function as a router, ran into some
> problems, and think that I traced the problem to a faulty routing table. 
> So I brought down all my interfaces and routing table ( except lo ) and
> attempted to add them manually.

A complete routing table would have been of more help here;

>
> I was able to add an interface manually, assigning my eth0 device the IP
> addr 192.168.1.2.  ifconfig verifys that this if is good to go.
>
> However, I found that I was unable to give a simple "route" command, for
> example:
>
> route add 192.168.1.2

There is nothing wrong there as what would a route to "yourself" be of any 
use to you.
 
>
> gives the response:
>
> SIOCADDRT: No such device

Yup thats normal with that command.

>
> the man page for route implies that you can specify the device in the route
> command also:
>
> route add 192.168.1.2 dev eth0
>
> Still no good.  Various stabs at syntax based on the route man page also
> yield nothing

As above, you cant and dont need a route to you "own interface".

> I have also found that after issuing the ifconfig command, the routing
> table is automatically updated with an entry for a route to that network:
>
> Destination  Gateway   Genmask     Flags    Metric   REf  Use   Iface
> 192.168.1.0     *    255.255.255.0   U        0       0     0   eth0
>
> Though this seems sloppy- note that Flags column lacks an "N" for Network.

No not sloppy at all, note your netmask 255.255.255.0
So ifconfig adds a route accordingly.
If you dislike the above use the netmask option with "ifconfig"

>
> This is undocumented behavior, as everywhere I have looked it has been
> implied that one has to bring up an interface and also independently
> establish the route to it.  I would like to be able to add a route to the
> host itself, indicating that it is its own gateway ( I believe this is the
> root of my router problem- no pun intended .  Can someone verify this?)

Not at all, a route is assigned according to the netmask used with ifconfig.

I think it would be better if you stated your router problem and supply 
details of the routing table and output of ifconfig.
route -ne
ifconfig -a
+ of course a description of just what you want to do.

The problem which most folks have is that they need to define a default route 
via an interface.
Simply upping an interface on a machine does not automaticly mean you have a 
working routing table.

>
> Of course, Thanks in advance,
>
> Jim
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
