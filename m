From: Ray Olszewski <ray@comarre.com>
Subject: Re: Help with Roaring Penguin & Red Hat 8.0?
Date: Tue, 26 Nov 2002 15:08:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021126143752.020dbec0@celine>
References: <3DE2C664.41479620@gelm.net>
 <200211232355.gANNtx703441@hartford-hwp.com>
 <3DE102FA.85D8F85D@gelm.net>
 <200211241801.gAOI1Wa28470@hartford-hwp.com>
 <3DE1208F.F3D58506@gelm.net>
 <200211242237.gAOMbjD02367@hartford-hwp.com>
 <3DE16550.FD5B402E@gelm.net>
 <200211252153.gAPLr4904660@hartford-hwp.com>
 <3DE2C664.41479620@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211262150.gAQLoiC02556@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines --

While I cannot help you diagnose at the level of peculiarities in the 
interaction between RP-PPPoE and other parts of RH-8.0, I might be able to 
offer some suggestions based on "rounding up the usual suspects" for your 
configuration. If you'd like this, please post (from a time when ppp0 is up 
and configured) the complete, unedited output of the following commands:

         ifconfig -a
                 (to check the status of ALL interfaces)
         netstat -nr
                 (to check if you have a problem with your routing table)
         ipchains -nvL
         iptables -nvL
                 (one of those two will error out, but perhaps the other 
will succeed)
         ping a.b.c.d
                 (replace a.b.c.d with your default gateway, as reported by 
netstat -nr)
         ping e.f.g.h
                 (replace e.f.g.h with the IP address of ppp0)
                 (in these last 2 cases, if ping "just hangs", tell us what 
it reports when you
                 SIGINT (^C) out of it)

Now a couple of specifics, below.

At 04:50 PM 11/26/02 -0500, Haines Brown wrote:
[...]
> >  I'm still holding on to these concepts:
> >
> > - RP-PPPOE creates an IPCHAINS ruleset & Red Hat 8.0 uses IPTABLES.
> > i.e. You never end up with 'valid' instructions to the kernel about
> > handling packets with your DSL modem.
>
>This terrifies me, knowing absolutely nothing of ip
>tables. Furthermore, it strikes me as very odd that RH 8.0 would ship
>with an application (rp is part of the distribution of RH 8.0) that is
>incompatible with the shipped kernel. Mistakes can occur, of course,
>but wouldn't we have heard about it by now?

My memory of RP-PPPoE is that it is extremely easy to misconfigure it; the 
app is very tempramental. If you are not doing a "by the book" 
configuration of it (RH seems to want you to use an X-based app called 
"Internet Druid", whatever that is), you might be running into some 
sufficiently uncommon problem that it doesn't get talked about. Or there 
may not be very many RH 8.0 users running RP-PPPoE (your humorously-offered 
15% estimate seems extraordinarily high to me).

>Is there any way I can verify that iptables is in fact blocking
>packets sent by pppoe, or that roaring penguin depends on ipchains? I
>gather that ipchains and iptables can co-exist, so how do I verify
>that the specific rules are in conflict?

First, the PPPoE part of RP does NOT depends on either ipchains or 
iptables. RP-PPPoE seems to have an associated firewall that uses ipchains. 
But since you are running a standalone system, not a router, you should be 
able to connect just fine (for test purposes, anyway) with no firewall 
rulesets (either ipchains or iptables) installed.

Second, the way to find out what rules are blocking packets is to list your 
rules. The "iptables -nvL" command does this for iptables; if it does not 
work, then there is no other way to check.

Third, ipchains and iptables CANNOT "co-exist". 2.2.x kernels use ipchains; 
2.4.x kernels use iptables. Period. What *might* be the case is that RH 
supplies some userspace program that lets you configure an iptables kernel 
using ipchains syntax (but if they do, it is not a backward-compatibility 
app I am acquainted with ... Debian seems to have nothing like it). There 
was such an app that handled the similar change in firewalling code between 
2.0.x kernels (ipfwadm) and 2.2.x kernels (ipchains).



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
