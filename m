From: Ray Olszewski <ray@comarre.com>
Subject: Re: firewall blocks ppp0?
Date: Sun, 24 Nov 2002 10:58:43 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021124102855.02154730@celine>
References: <3DE102FA.85D8F85D@gelm.net>
 <200211232355.gANNtx703441@hartford-hwp.com>
 <3DE102FA.85D8F85D@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211241801.gAOI1Wa28470@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- My attempt to reply to your initial message bounced due to the 
error in your To: line that someone else already pointed out (but that I 
didn't notice when replying, only when I found the bounce this morning) -- 
you really need to fix this.

As I read both this and your earlier posting, you have three independent 
configuration issues, namely --

1. ppp0  "cycles between active and inactive". If you are using RP-PPPoE in 
"on demand" mode, this may be normal. The interface gets dropped (either by 
your end or by the ISP) when there is no traffic, and it gets restored (by 
your end) when there is new traffic. If more is going on here, you will 
need to describe the problem in more detail to get help. (BTW, while pppd 
is a daemon, it can be configured in different ways -- "on demand" is one, 
and "permanent", that is, restore the connection whenever it goes down due 
to action from the other end, is another. When I had the misfortune to use 
a PPPoE connection a couple of years back, my router, using a prepackaged 
LEAF image that ran RP-PPPoE, was set for "permanent", and it worked nicely 
here with SBC's DSL service.)

2. "ipchains -L" does not work ("got the error message that this command is 
incompabible with my kernel."). Odd, since you also report that in a 
different context, the ipchains commands returns an error message ("I'm 
also told: ipchains: Protocol not available"), and ipchains has to run to 
be able to return this message.  The inconsistency here is the first thing 
to address. Please run (as root) "ipchains -nvL" and if you get an error 
message, quote the EXACT, COMPLETE message, and the EXACT command you 
enter, in your followup to us. Also identify your kernel ("uname -a" will 
serve). And finally, tell us the context in which some ipchains command IS 
running.

3. You think your firewall might be interfering with the ppp protocol. The 
way you state it, this is unlikely, since with ipchains-based firewalls, 
"protocol" refers only to layer 4 (transport layer - TCP, UDP, ICMP, 
mainly), not  layer 2 (link layer - Ethernet, ppp). The ipchains error 
message you quote is almost surely just an error in a -A or -I command 
(specifically, its -p argument) to ipchains. But to be sure, please provide 
context -- where are you "told" this (in a log file? in the dmesg buffer? 
on a console?) and what precedes and follows it there?

But your firewall and your PPPoE connection may be interfering with each 
other in a different way. If ppp0 stops and restarts, its IP address 
probably changes. Most firewalls (especially ones set to "high" protection, 
as you say yours is) block all external-interface traffic not to your 
external IP address. If your external (ppp0) IP address changes, the 
ipchains rulesets have to be cleared and restored to reflect the new IP 
address. RP-PPPoE has a way to do this, but whether it works with your 
firewall package ... well, who can guess? What firewall package are you 
using? Did you provide for RP-PPPoE to restart the firewall whenever it 
comes up?

One last thought ... what does it mean when you say "My eth0 is made active 
during boot, for I can run ifconfig and see that it is up as soon as I've 
finished booting"? The term "active" has no specific meaning, but if you 
can see the interface with "ifconfig" (rather than with "ifconfig -a"), 
that implies that it has a IP address assigned to it. In my (admittedly 
limited) experience, an eth* interface being used for PPPoE does NOT get an 
IP address assigned to it; at the network layer, your external connection 
is over ppp0, not eth0. If you are assigning an IP address to this 
interface, that might be part of your problem. Hard to say without more 
information, such as the complete output of "ifconfig -a" and "netstat -nr" 
(one way to display your routing table).

At 01:01 PM 11/24/02 -0500, Haines Brown wrote:
>Chuck,
>
> >  I use Roaring Penguin PPPOE. http://www.roaringpenguin.com/pppoe/ I
> > selected permanent connection, but I am unsure if this applies to
> > eth# or ppp#. :-| 'adsl-setup' and 'adsl-start' are script names
> > with my application (Roaring Penguin).  I am assuming that your
> > using the same or similar.
> >
> >  How do you know "I definitely have eth0 set to be permanently up" ?
> >  Actually, I'm betting that it is ppp# that is set to demand or
> >  permanent.
>
>Yes, I also use the roaring penguin, My eth0 is made active during
>boot, for I can run ifconfig and see that it is up as soon as I've
>finished booting. The ppp0, on the other hand, is not up until
>adsl-start is run. That is, ppp0 is on demand, while eth0 is
>permanent. That's my impression, anyway. pppd is a daemon which I
>assume is meant normally to be on demand.
>
>Actually, when I run redhat-configuration-network, I see not only
>eth0, but also ppp0 (trying to be active). That's not right. ppp0
>should not appear (or at least it does not show up under RH7.3 as I
>speak to you). I may have some kind of problem in that pppd is trying
>to start ppp, rather than my starting pppoe by means of adsl-start
>
> >  It seems that your dsl connection (PPPOE?) application is setting
> > up IPCHAINS, but your kernel is using IPTABLES.
>
>That may be, but then a good percentage of folks who get RedHat 8.0
>must reconfigure and recompile their kernel, which I doubt.
>
> > - configure IPTABLES to replace your dsl-connection application's
> > attempt to use IPCHAINS.
>
>This was my inclination, for I gather IPTables are better. I've got a
>copy of Bastille, which should make my life a lot easier, not only
>spotting the source of any difficulty, but setting up a secure set of
>rules.




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
