From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: mac address change on an eth alias
Date: Wed, 18 Dec 2002 19:46:55 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212181946.55601.g38@rdsbv.ro>
References: <200212172355.32568.g38@rdsbv.ro> <5.1.0.14.1.20021217144923.020a7bd0@celine>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021217144923.020a7bd0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

just testing for my general knowledge

I heard that I can change the mac, I did as richard said and it went ok, and 
furthermore I wanted to change the mac of the alias, which I didn't succeed 
(richard's receipt gave the same mac - the mac I specifically assigned to the 
alias - to both IFC and it's alias)

so, I should take the final answer as no ?

thanks,

petre

On Wednesday 18 December 2002 00:53 Anno Domini, Ray Olszewski wrote using one 
of his keyboards:
> At 10:06 PM 12/17/02 +0000, pa3gcu wrote:
> >On Tuesday 17 December 2002 21:55, Petre Bandac wrote:
> >[...]
> >
> > > so I didn't get what I wanted - the mac of the alias being different
> > > than the interface's; should I presume "no can do" ?
> >
> >I myself have never used aliasing, i do however need to spoof my MAC
> >sometimes on my laptop to be able to use it on other locations for my
> > work. However thats beside the point, as far as i can see if you set a
> > different IP# then the need for another MAC is (AFAIK) not nessasary.
> >If ARP's are a problem then setting static arps may be an answer, once
> > more i have no experiance with alising, possably Ray may have some advise
> > for you.
>
> Afraid not; I've never actually used aliasing (except in trivial test
> setups).
>
> Perhaps the best next step would be for you to explain  why you need the
> interfaces to respond as though they were on different physical devices
> (that is, NICs with distinct MAC addresses). With that information, then
> maybe someone here could suggest a workaround. But as far as I know, NICs
> only support a single MAC address at any moment, not multiple ones.

-- 
 19:43:21 up  7:15,  1 user,  load average: 0.42, 0.16, 0.09

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
