From: Ray Olszewski <ray@comarre.com>
Subject: Re: DSL reality check
Date: Thu, 05 Jun 2003 07:08:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030605070211.0204e710@celine>
References: <Pine.LNX.4.53.0306050747530.1059@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306050747530.1059@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Everything you describe in your query below should work fine. A couple of 
details on that:

1. DSL works by using line frequencies outside the audible range. Normally, 
DSL installations involve putting some sort of splitter on the line to 
separate the voice and DSL frequencies. (Currently, for example, here in 
California, SBC gives you a little kit with a bunch of filters, and you 
place on on each telephone connection to the line.) Since modems use 
audible frequencies, they coexist nicely with DSL.

2. Remember that you will need on the router a modem that works with Linux. 
Most cheap modems for PCs are so-called Winmodems and do not work with 
Linux. Check before you buy that you are getting either an internal modem 
with a real UART, one of the few WInmodem-type modems that have Linux 
support, or an external modem that works properly with a serial port.

3. I am currently editing an "PPP Server HowTo" being written by one of the 
LEAF developers (leaf.sourceforge.net). It should be available soon and 
will help you with the PPP part of your requirements (particularly if you 
use LEAF, but even somewhat if you do not and run into trouble). Check for 
it at the LEAF Website in a week or so.

At 08:48 AM 6/5/2003 -0500, James Miller wrote:
>I suppose this is as much a telecommunications question as it is a Linux
>question.  But there is at least a Linux component to it, so here goes.
>My dial-up ISP contract expires soon so I'm looking at other ISP options.
>One thing I'm considering is getting DSL to share with the neighbor
>downstairs - both cost and bandwidth.  I think I would want to use an old
>machine with Freesco or some other Linux gateway/router distro to share
>the connection.  One thing I'd also want to do though is to make the
>gateway/router accept incoming calls so I could log in from my office
>across town and use the 'net connection.  From all I've gathered thus far,
>Freesco - and likely other Linux routers - can handle this (accepting
>incoming calls, establishing ppp communications and sharing a 'net
>connection).  But my question really has to do with more fundamental
>aspects of how this all would work.  Essentially, I'm talking about
>calling my own phone from another location, having the computer answer the
>call, then logging me on to that same line so that I can use it to surf
>the 'net.  Sounds a bit self-serving, doesn't it? (har har)  Anyway, the
>little I know about DSL tells me that this scheme should work.  But before
>proceeding any further in it, I just want to check with others and see if
>they see any reason why it should not work.  So, finally, my question: is
>there any reason I could not dial into a computer that is hooked up to a
>DSL line, using the same phone line through which the DSL signal is
>travelling, and have that computer then allow me to share its DSL
>connection to do things on the 'net?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
