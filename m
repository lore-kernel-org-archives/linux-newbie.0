From: Jeff Woods <kazrak+kernel@cesmail.net>
Subject: Re: basic networking queries
Date: Thu, 31 Jul 2003 21:13:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.2.0.9.0.20030731205941.05fa7168@SpeakEasy.but.no.reading.jeffwoods.us>
References: <Pine.LNX.4.56.0307242218050.6210@homenet>
 <5.1.0.14.1.20030724200741.01ee7cc0@celine>
 <Pine.LNX.4.56.0307242218050.6210@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0307311915170.10393@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

James Miller wrote:
>I will use it most of the time at home, where I have static network 
>addressing.  The card works, and the machine is successfully on my network 
>now.  When I need to take it away from home, though, different network 
>settings will need to be used - almost surely DHCP will be in use where 
>I'll use it away from home.
>
>But, the question remains: how to handle those times when I am away from 
>home and may need to make the card connect to a DHCP network?  What I 
>found relevant to this in the PCMCIA how to is something called "schemes" 
>that enable one to have alternate network settings for the PCMCIA card.

Rather than trying to change the network configuration manually between 
your home/static and elsewhere/DHCP environments, I recommend you simply 
always use DHCP for the laptop.  Using DHCP at home does *not* mean you 
must use DHCP to assign network information to all your home systems, 
though you probably can if you like.  You can reserve part of your IP 
addresses for static systems and part for dynamic/DHCP systems.

In particular, servers should have static addresses so they don't move 
around, but desktop/workstation/portable systems can usually be dynamic 
without any difficulties.  In fact, due to the auto-configuring aspect of 
DHCP clients and the ability thereby to prevent duplicate IP addresses, it 
makes a lot of sense to me to use DHCP for *all* systems that don't 
*require* static addresses, (i.e. servers).

So you "simply"  ;) configure a DHCP server on some local system at home 
(Mine is built into the DSL router I use.) and then leave the laptop 
enabled for DHCP all the time.  When home, it gets all the network config 
from the home network just like it does when away from home.

--
Jeff Woods <kazrak+kernel@cesmail.net>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
