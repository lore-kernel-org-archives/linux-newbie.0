From: Ray Olszewski <ray@comarre.com>
Subject: Re: browser errors
Date: Sun, 04 Aug 2002 13:49:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020804132806.0211e4e0@celine>
References: <200208041817.57248.korosi@eunet.yu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208042035170.30515-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux Newbies <linux-newbie@vger.kernel.org>

Riley -- I would like to disagree with your recommendation here, 
particularly with the general form in which you present it ("simply replace 
each specific IP address with a specific IP address from one of the 
"reserved ranges"").

Specifically, I believe that your statement that the approach you recommend 
results in "guaranteeing to provide all of the information needed to debug 
the problem" is incorrect, as is your conclusion that "the problem is 
almost always equally diagnosable with substituted IP addresses".

Knowing the actual IP addresses involved is not likely to be relevant in 
Korosi's *specific* case, but there are many cases when it is vital to know 
the actual addresses involved (or at least important properties of them). A 
lot of the troubleshooting I do, here and elsewhere, involves connectivity 
(address acquisition, routing, firewalling), and in these cases, you 
usually want to know

         if the host with the problem is using "real" or private-range IP 
addresses (*especially* if
                 the ISP is using private-range addreses, since a lot of 
firewalling software blocks
                 them by default)
         if the local network (especially the netmask) makes sense; I often 
see routing problems caused
                 by specifying a netmask that puts the default gateway 
outside the external network
         any number of things about the routing table

Another example: often, MAC-address authentication failures with 
cable-modem ISPs are indicated by the symptom of the host being assigned a 
10.b.c.d address instead of a "real" IP address. Your advice conceals this 
symptom.

My core answer to this sort of question always is: As a general 
proposition, beginners do not know enough to decide what to include and 
what to leave out; they need to post the complete output of commands, not 
edited output. Only passwords (and perhaps other personal information, 
though I can't offhand think of a diagnostic that provides anything secret 
except for passwords) are secret enough to be an exception to this.

Korosi -- I'm afraid that I too am stumped by your symptoms. As you 
describe them this time around, they sound like a bug in Opera, an 
application I do not use. Or perhaps Opera has a problem with some specific 
URL; you don't mention if the problem was always associated witht he same 
URL , or always with a Javascript page, or something similar.

I'm sorry that I cannot offer any better suggestions than those, admittedly 
trivial, ones.

At 08:44 PM 8/4/02 +0100, Riley Williams wrote:
>Hi Korosi.
>
>I can't help with your general problem, but there is one point in here
>that I can clarify...
>
> > And here is the /var/log/messages with messages generated at the
> > that time: (I put X-es to ip addresses, because I don't know if it
> > is a security problem if I tell you. Ray wrote previously that I
> > should cut off passwords, and I don't know if I should do the same
> > with ip-s...)
>
>To avoid security problems whilst guaranteeing to provide all of the
>information needed to debug the problem, simply replace each specific IP
>address with a specific IP address from one of the "reserved ranges".
>There can be no security problems with those IP addresses since they are
>not routable outside of your own network.
>
>The important detail is that each IP address must be replaced with the
>same one each time, and the results must indicate whether the originals
>were on the same or different subnets. Providing you can guarantee that,
>the problem is almost always equally diagnosable with substituted IP
>addresses.
>
>Often, the simplest way is just to replace the first number in each quad
>with 10 as the entire 10.* range is reserved in this way.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
