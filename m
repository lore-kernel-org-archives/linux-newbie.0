From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Fri, 22 Nov 2002 14:35:18 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211221935.gAMJZIW09438@hartford-hwp.com>
References: <5.1.0.14.1.20021121103403.02116350@celine>
	 <200211202236.gAKMaIK05653@hartford-hwp.com>
	 <200211202236.gAKMaIK05653@hartford-hwp.com>
	 <5.1.0.14.1.20021121103403.02116350@celine>
	 <5.1.0.14.1.20021121130840.0215f2a0@celine>
	 <200211220010.gAM0A9b02546@hartford-hwp.com> <1037954445.1994.6.camel@zebra.vil.ite.mee.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1037954445.1994.6.camel@zebra.vil.ite.mee.com> (message from
	Paul Furness on 22 Nov 2002 08:40:45 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: paul.furness@vil.ite.mee.com
Cc: linux-newbie@vger.kernel.org, brownh@hartford-hwp.com

> Do you mean that you completely removed one hard disk, which
> contained _all_ of the partitions on the system, and replaced it
> with a completely different disk which had a different system
> installed on it?

That's correct. Insurmountable problems were mounting up, and so I
decided on a fresh start with a bigger HD. Completely fresh install of
RH 8.0 on it.

> It sounds like you are talking about a laptop. Is that true?

Nope. I've got a desktop with a bunch of hard disks dangling on scci
cables.
 
> How about if you create a new account, start X from it, then quit X
> and simply reboot (making no other changes at all in between)? Does
> the new user still have the problem?

That was exactly what I did. I could start X for the new account and
do anything I wanted with it, including loging out, into another
account, and back in again. However, if I reboot, I no longer can
start X for the user's account.

Ray asked what damange I had recently done to my system. The answer is
that I'm always doing damage ;-(. However, there's two thngs that do
stand out, and I'll mention them here now,

About the time I experienced the problem I had just created the
following ~/.xinitrc file (which does not exist in root's account na
did not previously exist in user's account):

xset s off

My purpose here was to kill screen blanking. It didn't work, but I
hadn't bother to remove it. So just how does one prevent any screen
blanking? (I think there's a provision in RH8.0, but I don't see it in
RH 7.3). Since this file is checked first by startx, it could be the
culprit. Have not checked yet.

Also, my problems followed a disastrous attempt to install an nVidia
driver in place of the generic nv driver in RedHat. I completely blew
the X server in the process, and had to recover from the console. OK,
but I'm (ie, user) is not using a /etc/X11/XF86Configure-4 rather than
a XF86Configure configuration file. I have a funny feeling that the
former was created by the abortive driver install, and my backing out
left it there and in use. Can anyone tell me which is the correct
configuration file for RH7.3 using the nv driver that comes with the
distribution? If I'm using the wrong configuration, how do I switch
it?

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
