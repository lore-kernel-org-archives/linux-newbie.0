From: Ray Olszewski <ray@comarre.com>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Thu, 30 Dec 2004 08:36:42 -0800
Message-ID: <5.1.0.14.1.20041230080855.0217c410@celine>
References: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-4908980"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:03 AM 12/30/2004 -0600, James Miller wrote:

>I'm trying to make a temporary internet connection for a friend who's
>moving into and apt where they provide a wireless connection. Since I'm
>not sure whether she'll eventually buy a new computer or simply add
>necessary parts (mainly wireless adaptor) to some older machine I have, I
>want to expend a minimal amount of effort on this using stuff I have
>around that's pretty much already set up. One thing I have around is an
>old laptop with both wired and wireless cards (PCMCIA) that runs a Debian
>variant (DamnSmalLinux). Since it's got pretty paltry resources (P1 120,
>48MB RAM), I'm thinking maybe I could set it up as a sort of gateway to
>route the wireless signal the apt complex offers: eth1 gets on the
>wireless network and the computer routes the signal out eth0. To eth0 I
>hook another desktop computer I have via crossover cable which has a wired
>NIC and slightly better system resources (P2 233 96MB RAM) and runs
>Ubuntu. By doing some research online and experimentation, I could maybe
>eventualy figure all this out on my own. In the interest of saving me some
>time working on the project, since it's a temporary thing, I'd like to
>just see if I could get some suggestions and/or pointers to helpful
>documentation from anyone onlist first.

As outlined, all of this should work. But as you already seem to realize, 
the devil is in the details. From what you've said, I can't really tell 
what details you need help with, and trying to write a response that 
explains everything you *might* need to know (or even the subset of 
"everything" that I know) is simply too much work.

If there are any soup-to-nuts resources for this sort of exercise, I'd like 
to know about them too ... so even suggesting for resources, it helps to 
know which parts of this overall job you need help with.

So, which of these pieces of the problem do you need help with?


1. Getting the laptop connected to the wireless network? For this, fill us 
in on what the  apt's ISP says about how to do it (probably Windows-based 
advice). No actual passwords, of couse, but be as specific as you can about 
anything else.  You haven't even mentioned if the wireless side is b, a, or 
g. This stuff is always network specific.


2. Getting the wireless NIC working with Linux? Again, what are the 
details? What kernel driver does it use (or is that what you need help 
with)? And BTW, wireless NICs usually are not eth* interfaces; they usually 
are (I think) wlan* interfaces.


3. Getting the laptop connected to the other workstation? This should work 
out of the box, assuming you have compatible networking setups (IP address, 
netmask, and so forth) on both machines. If it doesn't, please be as 
specific as you can about what's not working. One thing to watch for 
(whenever you use a crossover cable) is handshaking problems between the 
NICs ... sometimes in these direct connections 10/100 NICs have trouble 
agreeing on a speed. If you're seeing problems, try, at least for testing 
purposes, using a small hub instead of the crossover cable. (You must have 
an old, small hub and a couple of cables around, right? Don't we all, these 
days?)


4. Getting the laptop to route? This involves three basic steps:
         (a) simply turning on routing, by setting 
/proc/sys/net/ipv4/ip_forward to 1.
         (b) setting up routing properly in the laptop's routing table. If 
DSL is close enough to Debian for my guesses abut it to work, you do this 
in /etc/network/interfaces, then restart networking (/etc/init.d/networking 
restart).
         (c) setting up NAT if you need to. Whether you need to depends on 
how the apt's ISP provides IP addresses to the system that use it; see piece 1.


5. Something else? If so, what?



>I should also mention that I have a Linksys wireless B access point laying
>around unused (given to me for some work I did for a friend), but so far
>as I can see, this is not going to help me get her computer on the
>wireless network she'll have access to. It's meant to route a wireless
>signal, and has an rj45 jack on which a dhcp client runs and into which a
>wired signal is to be fed, which then gets sent out the antennae to
>wireless NICs within range. From documentation I've looked at, this device
>can act as a bridge or can extend range in concert with a second access
>point like it. But looking into this earlier, I determined I could not use
>it as a sort of wireless NIC in itself, receiving a signal and routing it
>back and forth through the rj45 plug. But I'm not terribly knowledgeable
>about this, so maybe there is a way to use it for this project.

Since we don't know anything about the apt's wireless LAN, I hesitate to 
say there is no possibility of using the Linksys device to access it. But I 
can't think of a way to make it do the job you want done.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.6 - Release Date: 12/28/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
