From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Alternate network connections
Date: Sun, 22 Jun 2003 10:16:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306221016.04676.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.53.0306210129420.21796@reg_kipling>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306210129420.21796@reg_kipling>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ken Moffat <ken@kenmoffat.uklinux.net>, linux-newbie@vger.kernel.org

On Saturday 21 June 2003 02:40, Ken Moffat wrote:
> Well, looks like I've finally got a kernel in my iBook which is going to
> allow all the things I want but haven't had (principally, accessing the
> rtc and ppp), so now I need to figure out how to manage the
> connectivity.

I've seen no reply to this mail here as yet so here goes.

You would have been well advised to have mentioned which distro you are using, 
that way more system spesific information could have been given, anyway here 
goes.

>  At the moment, my only connectivity is through eth0 when I'm at home,
> using a fixed IP address.  What I'd like to do is set up a script
> allowing initially

Why create a script when really what you want is already taken care of by 
scripts.

>
> (a) no connectivity - (the way it will boot, in runlevel 3, so I guess I
> want things like loopback configured all the time)

With slackware one edits /etc/inittab to define;
id:3:initdefault:

The ethernet device does not need to be downed to allow you to start ppp, all 
you need to do is delete your 'default route' via eth0 then start ppp.

>
> (b) connection to my home network via eth0

Using the above does what you want.

>
> (c) modem connection via /dev/ppp0.

There is a HOWTO for PPP its called PPP-HOWTO and is found on most systems in 
/usr/doc/*HOWTO* or /usr/share/doc/*HOWTO*

>
> I can live with having to reboot to change from network to ppp or vice
> versa, but I'm not at all familiar with any of this.  I'm not even sure
> what I should search for on google to get pointers on how to do this.
> Anybody got any advice, please ?

There is abosolutly no need to reboot at anytime to do what you want.

>
> Ken

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
