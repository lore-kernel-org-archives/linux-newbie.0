From: James Miller <jamtat@mailsnare.net>
Subject: making a gateway with eth0 wired eth1 wireless
Date: Thu, 30 Dec 2004 09:03:38 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm trying to make a temporary internet connection for a friend who's
moving into and apt where they provide a wireless connection. Since I'm
not sure whether she'll eventually buy a new computer or simply add
necessary parts (mainly wireless adaptor) to some older machine I have, I
want to expend a minimal amount of effort on this using stuff I have
around that's pretty much already set up. One thing I have around is an
old laptop with both wired and wireless cards (PCMCIA) that runs a Debian
variant (DamnSmalLinux). Since it's got pretty paltry resources (P1 120,
48MB RAM), I'm thinking maybe I could set it up as a sort of gateway to
route the wireless signal the apt complex offers: eth1 gets on the
wireless network and the computer routes the signal out eth0. To eth0 I
hook another desktop computer I have via crossover cable which has a wired
NIC and slightly better system resources (P2 233 96MB RAM) and runs
Ubuntu. By doing some research online and experimentation, I could maybe
eventualy figure all this out on my own. In the interest of saving me some
time working on the project, since it's a temporary thing, I'd like to
just see if I could get some suggestions and/or pointers to helpful
documentation from anyone onlist first.

I should also mention that I have a Linksys wireless B access point laying
around unused (given to me for some work I did for a friend), but so far
as I can see, this is not going to help me get her computer on the
wireless network she'll have access to. It's meant to route a wireless
signal, and has an rj45 jack on which a dhcp client runs and into which a
wired signal is to be fed, which then gets sent out the antennae to
wireless NICs within range. From documentation I've looked at, this device
can act as a bridge or can extend range in concert with a second access
point like it. But looking into this earlier, I determined I could not use
it as a sort of wireless NIC in itself, receiving a signal and routing it
back and forth through the rj45 plug. But I'm not terribly knowledgeable
about this, so maybe there is a way to use it for this project.

Input on these matters will be appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
