From: James Miller <jamtat@mailsnare.net>
Subject: Re: basic networking queries
Date: Thu, 31 Jul 2003 20:49:43 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307311915170.10393@homenet>
References: <5.1.0.14.1.20030724200741.01ee7cc0@celine>
 <Pine.LNX.4.56.0307242218050.6210@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0307242218050.6210@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Ok.  More on DHCP, networking fundamentals, PCMCIA cards and so forth.
The system ref'd is a Slackware 7.1 minimal install on a 486 laptop.  I
will use it most of the time at home, where I have static network
addressing.  The card works, and the machine is successfully on my network
now.  When I need to take it away from home, though, different network
settings will need to be used - almost surely DHCP will be in use where
I'll use it away from home.  I believe what I have on this machine is
udhcpc - some sort of trimmed-down dhcp client.  I have no idea if this is
something I need to start manually, or whether it sort of runs as some
kind of background process (ps axu |more shows no trace of it but, as I
mentioned, I use static addressing on my home network, so I wouldn't
necessarily expect it to be visible).  Now, where to start?  As I
understand it (from the PCMCIA how to), I set my networking options in
/etc/pcmcia/network.opts.  When I run /etc/rc.d/rc.pcmcia start , values
are read from that file to get the network connection up.  I did edit that
file for my home network, and it does get me connected.  But, the question
remains: how to handle those times when I am away from home and may need
to make the card connect to a DHCP network?  What I found relevant to
this in the PCMCIA how to is something called "schemes" that enable one to
have alternate network settings for the PCMCIA card.  Here's an excerpt:

---------------BEGIN EXCERPT----------------------------------
This is fairly easy using ``scheme'' support. Use two configuration
schemes, called ``home'' and ``work''. Here is an example of a
network.opts script with scheme-specific settings:

case "$ADDRESS" in
work,*,*,*)
    # definitions for network card in work scheme
    ...
    ;;
home,*,*,*|default,*,*,*)
    # definitions for network card in home scheme
    ...
    ;;
esac

The first part of a device address is always the configuration scheme. In
this example, the second ``case'' clause will select for both the ``home''
and ``default'' schemes. So, if the scheme is unset for any reason, it
will default to the ``home'' setup.

Now, to select between the two sets of settings, run either:

cardctl scheme home

or

cardctl scheme work
-----------------------END EXCERPT--------------------------------------

Well, I got confused right off.  My network.opts file doesn't look very
similar to this: it consists of about 15 more lines with all kind of
fields where values can be entered in - one of the fields saying something
like 'DHCP=""' - a "y" or "n" needing to follow.  I don't see how I could
use the lines given in the PCMCIA how to: they don't even have a DHCP
option.  I decided that, what I should probably do is simply copy the
whole scheme that appeared in the default network.opts file so that the
file would contain 2 instances of it, then rename the 2 with appropriate
"scheme" entries and edit them accordingly.  This I did.  Was I right?
The "home" scheme contains various static networking entries: the address
of the PCMCIA interface, the gateway's address, etc., and an "n" next to
the DHCP option.  In the "away" scheme (as I called the second scheme),
all fields I left blank except the one next to DHCP, which of course has a
"y".  Does this sound right?  I'm not entirely sure how to go about
testing this, except to take the laptop to a place where I'll use it that
has DHCP and run the cardctl scheme away command from the command line.
One thing that's got me confused is that I tried running the cardctl
scheme away command on my network at home, expecting that I wouldn't get a
working network connection: however, it did connect to the LAN and I was
able to use the 'net connection.  I use Freesco router to route the 'net
connection and LAN traffic and, so far as I know, I've disabled DHCP on
it.  So, why was I able to get on the LAN with the DHCP scheme?  ifconfig
shows that, on the home network, regardless of whether the "home" or
"away" schemes are chosen, eth0 is getting assigned the same address.

Input on this anyone?  I hope it's more comprehensible to someone reading
it than it was to me while writing it: I think I'm still a bit lost.

James

On Thu, 24 Jul 2003, James Miller wrote:

> On Thu, 24 Jul 2003, Ray Olszewski wrote:
>
> Thanks for your answer, Ray.  I didn't provide much detail because, rather
> than trying to set something up specifically or trying to troubleshoot, I
> was trying to understand better *in theory* something about networking -
> namely about how DHCP works.  I know so little about it, in fact, that I'm
> not sure what sort of information to provide.  I do use a Slackware
> variant.  As I mentioned, I know from sources connected with this variant
> that some form of dhcp is enabled on it (dhcpd?) and maybe just runs as a
> background process.  But this is really already further than I want to go
> with this.  I'm just trying to better my grasp on some of the fundamentals
> of how dhcp works, what sort of info it needs/uses and the like.  One of
> those touchy-feely inquiries, you know, where you're not even sure which
> questions to ask to get started learning?  I don't know, maybe you already
> know everything about everything and don't find yourself in those sorts of
> situations.  But I sure do (not ashamed of admitting it, either).  Anyway,
> this sort of inquiry goes in stages for me: I start with some probings,
> which helps me get bearings and know what further to ask, where further to
> look.  At some later stage of the learning process, I can then formulate
> more specific questions related to some task.  But I'm just not at that
> stage yet with DHCP.  Is a linux-newbie list not the place to make those
> sorts of inquiries?
>
> James
>
> PS I had some problems getting that message to the list, since my initial
> post got lost.  Maybe I didn't formulate things very clearly in the
> rewriting, with the disappointment of having lost what I'd earlier
> started.
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
