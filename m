From: Eric <eric@cisu.net>
Subject: Re: getting MAC addresses (was: Re: opening a port without root permission)
Date: Wed, 30 Jun 2004 16:17:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406301617.06218.eric@cisu.net>
References: <5.1.0.14.1.20040630093235.01f959e0@celine>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040630093235.01f959e0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, Anshuman Singh Rawat <asr245@nyu.edu>
Cc: linux-newbie@vger.kernel.org

On Wednesday 30 June 2004 11:39 am, Ray Olszewski wrote:
> At 09:20 PM 6/29/2004 -0400, Anshuman Singh Rawat wrote:
> >Hi,
> >Is there any way one can open a port, in my specific case - the ARP port,
> >so that I could do an Arping without a root access ?
> >
> >Or is there any way the root could give permission to a user to open a
> > port ?
> >
> >Or does anyone know a way by which I can extract the MAC address of a
> >remote machine in a different subnet, where I do not have to be a
> > super-user?
> >
> >Any pointers would be greatly appreciated.
> >Thanks.
>
> Others already suggested "sudo" as the way to deal with the arping problem.
> But... are you really able to use arping to get MAC addresses of hosts not
> on the Ethernet local to the host you arping from? (I assume that is what
> you mean by "in a different subnet".)
>
> I was curious about this, so I tested it here. With the current Debian-Sid
> version of arping, arping'ing the IP address of a host on my DMZ from my
> LAN returns the MAC address of my router (since it does proxy arp), NOT the
> MAC address of the target host's own interface. If I arping the actual MAC
> address of the DMZ host (as shown in the arp table of my router), I get no
> response.
>
> Am I missing something? I ask because this problem -- how to get the MAC
> address of a non-local host -- comes up again and again, and I always
> believed there was no solution to it (excluding ones that involve running
> some application on the target host). Am I mistaken?
>

As far as I know there is no way to get the MAC address across subnets. I 
believe the problem is the source MAC gets stripped off when it hits the 
router and the MAC of the router is used. This would be possible if you are 
on a *briged* network I believe, but there is little to no hope on a routed 
network.

Try telnet/ssh tot he remote and then ifconfig ;)
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
