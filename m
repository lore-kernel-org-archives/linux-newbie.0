From: james niland <bareego@yahoo.com>
Subject: Re: Freesco, old kernel lines, security
Date: Tue, 3 Jun 2003 00:25:49 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030603072549.79917.qmail@web11402.mail.yahoo.com>
References: <Pine.LNX.4.53.0306020858070.6480@vector>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306020858070.6480@vector>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org



--- "James Miller (office)" <jamtat@mailsnare.net>
wrote:
> I understand that in the world of Linux network
> security, generally older
> = worser (more insecure).  So, I see that Freesco, a
> small Linux
> gateway/router distro that seems to be actively
> maintained, is using a
> kernel from the 2.0.x line - 2.0.38 (I understand
> that the most
> recent 2.0.x kernel is 2.0.39).  Is Freesco
> considered an insecure
> gateway/router distro because it uses this older
> kernel line, or can it be
> expected to provide adequate network security?  What
> would be the risks
> involved in using such a distro?  Would the security
> savants on this list
> recommend against using it?
> 
> Thanks, James

Ihave used the freesco 0.2.7 router now for over 2
years. 
It is the easiest to setup for my purposes. I use it
to NAT-share the internet on the home lan, for
firewalling and as DHCP server for the lan. 

As I am denying any incoming ports (from the internet)
it doesn't matter too much if the apps are uptodate or
not.(apart from the netfilter of the kernel I guess)
Neverless I configure them to run only on the local
net.
( the s setting)

There is an updated version 0.3.1 on their website
now, but I had some stability problems with 0.3.0 and
have been happy with the 0.2.7 version, so I stay with
it.

I have invited several linux savvy friend to hack into
my router from the internet side and none of them has
had any luck. You can configure most services as
running on the local net only, so they won't be
available to the internet.

As long as you don't open holes by eg doing port
forwarding it's pretty safe for my purpose as far as I
can tell.

If you want to export services through it like eg a
web server or such I'd look for another solution,
though.

Cheers
James N.

__________________________________________________
Do you Yahoo!?
The New Yahoo! Search - Faster. Easier. Bingo
http://search.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
