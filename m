From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: forwarding question
Date: Wed, 10 Dec 2003 01:34:03 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200312100134.03552.g38@rdsbv.ro>
References: <5.1.0.14.1.20031209145625.02059488@celine>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031209145625.02059488@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, g38@rdsbv.ro, linux-newbie@vger.kernel.org

On Wednesday 10 December 2003 01:22 Anno Domini, Ray Olszewski wrote using one 
of his keyboards:
> At 12:21 AM 12/10/2003 +0200, Petre Bandac wrote:
> >hello
> >
> >I have the following problem:
> >
> >I want all the http traffic (dport 80) to be redirected to some other
> >machine,
> >from where the packets should go out on the internet
> >
> >I have tried to SNAT, but it seems that it isn't possible only with
> > iptables
> >
> >on the second machine there should be squid running to take care of the
> >incoming packets, or what ?
> >
> >(please cc to me, because though I'm subscribed to this list, messages
> >stopped
> >arriving to me since april 19th)
>
> First the incidental part: if you are not getting list mail, you are
> probably not subscribed. The vger server will detect some mail delievery
> failures and auto-unsubscribe addresses. So if you had a transient e-mail
> failure, one that left you unable to receive mail for a day or so, that
> might have caused you to be unsubscribed. (Or it may be something else, of
> course; I only mention this because any time one stops getting list mail
> for no apparent reason, it is worth verifying that you are still
> subscribed. Over the 5 years or so I've been on this list, I've been
> involuntarily unsubscribed about a half dozen times.)

I resubscribed and it works now :-)

> Now your actual question:  I don't *quite* understand what you want to
> accomplish here, so some of this is guessing.

linux_1 193.231.x.x is routing a subnet (routable)
linux_2 is on the same network with linux_1 (193.231.x.x)

all the traffic from the subnet going to port 80 must be redirected to linux_2 
(this redirection I presume should be made by linux_1), and from there go to 
its destination (yahoo.com or whatever)

so, linux_2 should have proxy (squid or apache, as you say) or it can do snat 
or whatever trick with iptables

thanks,

petre


> The usual way to force a host to use a proxy server for (say) http traffic
> is
>
>          (A) in the site's router/firewall, DENY all traffic going from
> workstations to external addresses at port 80 (and maybe 443, if you want
> to restrict https too); ALLOW traffic only from the machine in B.
>
>          (B) on some suitable-secure internal server, run a proxy like
> Squid or Junkbuster or whatever (I think even Apache itself can be
> configured to operate as a proxy) to forward the traffic.
>
>          (C) Have each user configure his or her bowser to use that proxy
> server.
>
> What I **think** you are trying is a bit different, something I've never
> seen done but that, in principle, whould work. It goes something like this:
>
>          (A) is the same as above, since if you don't restrict things at
> the router, users will have the opportunity to bypass restrictions (unless
> no user has *any* way to get root access to his or her workstation, hard to
> manage on Linux systems that the user has physical access to).
>
>          (B) On each individual workstation (or perhaps on the router,
> instead of step A), use the kernel's routing code to redirect all port-80
> (and 443?) traffic to an internal server that runs some sort of proxy.
>
> If you want to do that, then iptables should work. The details depend on
> whether you are talking about running Linux and iptables on the
> workstations or the firewall/router. For example, on the firewall/router,
> you would do it with 2 rules:
>
>          (1) in the default table's FORWARD chain: For any traffic from the
> LAN to port 80, ACCEPT it
>
>          (2) in the nat table's PREROUTING chain: For any traffic from any
> LAN address other than the proxy server to an external port 80 destination,
> DNAT it to the proxy server address.
>
> You may need to modify other existing rules as well, depending on details
> of your setup that can vary too much for me to cover even all the likely
> cases. (For example, rulesets often block routing LAN traffic back to the
> LAN, and rule 2 above runs afoul of that.)
>
> All this is a bit vague, I admit, but your requirements ae a bit vague too.
> If you try again, describing the setup and your goal more precisely, as
> well as telling us what you tried (I do'nt see how even to *try* doing this
> with SNAT, for example) and what went wrong, then maybe I or someone else
> can give you more exact help.
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
 1:34AM  up 15:19, 1 user, load averages: 1.13, 1.26, 1.31

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
