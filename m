From: "Enrique Nieves" <spanfax@charter.net>
Subject: Re: Newbie installation problem
Date: Sun, 4 Aug 2002 00:55:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002801c23b73$2b1a31d0$6401a8c0@ENRIQUE>
References: <5.1.0.14.1.20020802181721.02153750@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray,

Thanks for your query.  I've placed a response after each of your questions
below.
Another possibility may be the cable itself; however, the router lights
indicate the
cable is connected.

EN

----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: "Enrique Nieves" <spanfax@charter.net>; <linux-newbie@vger.kernel.org>
Sent: Friday, August 02, 2002 9:27 PM
Subject: Re: Newbie installation problem


> At 08:07 PM 8/2/02 -0400, Enrique Nieves wrote:
> >I'm a newbie with Linux and I'm trying to install Red Hat 7.3 in my AMD
K6
> >box (128 mb RAM, 233 mhz, 6 gb hard drive) to be the sole OS for that
box.
> >When the installation program tries to detect the network card (eth0) it
> >gives me a FAILED message.
>
> Please be a bit clearer about the details here.
>
> 1. What NIC do you have in the system?  Make and model.

Netgear, 32 bit, PCI Adapter, 10/100 Mbps Fast Ethernet FA311

> 2. At what stage does RH fail? (Technically, eth0 is an interface, not a
> card; it does not get created until -AFTER- the card has been detected and
> an appropriate kernel module loaded.)

When booting up and detecting hardware it indicated that it can't detect IP
settings

> 3. Quote the EXACT error message (not just the word "FAILED").

After the error message FAILED it indicates that IP settings can't be
detected

> 4. Has the NIC worked previously, say with some version of Windows? Or is
> this a new NIC (from the hardware details, I'd guess it is not a
completely
> new PC)?
>

It's a new NIC


> >I'm trying to have a home network using a LinkSys router with a Windows
XP
> >box and this AMD PC connected peer to peer and another ethernet
connection
> >to use with my laptop.
>
> What do you mean by "peer to peer"? In this context, the term usually
> describes two hosts that are connected directly via Ethernet, without a
hub
> in between ... but your mention of the Linksys router causes me to doubt
> that that is what you mean. Do you just mean that the two hosts are on the
> same LAN?

As Riley Williams indicted, I'm trying to set up a home network with three
systems on it,
my Windows XP box, the AMD I'm trying to set up under Red Hat Linux
and  my laptop, and I'm not sure if I'm using a 10baseT or 100baseTX
ethernet with my
LinkSys router, which is acting as a routing hub for the three of them.

>
> >I'm trying to decide if the problem is in the NIC card or in my attempt
to
> >install Red Hat.  Is it very difficult to connect a Linux box and an XP
box
> >peer to peer?
>
> No matter what you might mean by "peer to peer", the answer is no, at
least
> from the Linux side. (Also from the XP side, probably, as I doubt it is
> very different from WIn98 or Win2k). But if RH is having trouble either
> detecting or initializing your NIC, you are way far away from worrying
> about anything that the host is connected to (other host, hub, whatever).
>
> The details I asked for above will help us give you advice. The problem
> *may* be a NIC that the RH installer cannot auto detect, requiring you to
> configure it manually (which someone else will need to help with the
> details of, since I haven't installed RH in years).
>
>
> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
