From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 20:09:06 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0211231958470.15555-100000@ppg_penguin.linux.bogus>
References: <5.1.0.14.1.20021123114235.020b8210@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021123114235.020b8210@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 23 Nov 2002, Ray Olszewski wrote:

> Ken -- There is one part of your latest reply that I do not understand.
> 
> >  Thanks, I think this is what I did from the iBook. Trouble is, it fails
> >to negotiate an ip address from the server (either it ignores the
> >specification to use my `router', or it's asking the firewall for the
> >address.) It then falls back to trying ping (but doesn't specify who or
> >where). Hence my original question.
> 
> Since I suggest two different approaches, I am not certain which of them 
> "this" refers to.
>
 Sorry, I meant the second.
 
> If it is the second ... then I am still unclear on what some of the "it"s 
> refer to, as well as whether the "router" and the "firewall" are both the 
> same Linux device or if you mean one term or the other to refer to some 
> different device.

 Sorry again. They are indeed the same (I'm worried about calling it a
firewall while iptables isn't running).

> For the second approach to work, the iBook itself has a LAN address (either 
> assigned statically or via a LAN DHCP server). The ISP then needs to be 
> assigning the external address by DHCP, using the router's MAC address for 
> authentication. To get this last part to work, you may need to reboot the 
> router, or at least force it to request a new DHCP lease.
>

 Agreed. I've got static addresses internally. The registration CD uses
a two-part process : check the system (the iBook, in this case), make
sure IE is running, unknown other checks. It waits to reboot. At this
point I relinquish the lease, power-cycle the set-top box, request (and
get) a new address (mostly the same as before), then reboot the mac.

> Or it may not work at all. Depends on the details of how the ISP expects 
> you to authenticate yourself.
> 

 Would you believe three, or four sets, of passwords or numbers and they
don't ask for them in the same way as the printed manual says they will
- at least on the mac it asks for two of them plus a username before it
attempts to get the address, but it doesn't ask for the serial number
that the manual says will be the first thing required. It will be a good
game.

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
