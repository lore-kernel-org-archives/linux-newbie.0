From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Re: switching window managers
Date: Sat, 22 Mar 2003 23:55:59 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030322225559.8260.qmail@linux.ik5bcu.ampr.org>
References: <200303191558.h2JFwvF4007542@hartford-hwp.com>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303191558.h2JFwvF4007542@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1


On 19-Mar-2003 Haines Brown wrote:
> Simon,
> 
>> Hi, I think redhat has the "switchdesk" utility, you can choose whether
>> it is for current session or permanent change.
>> 
>> Give it a whirl.
> 
> Thanks. RH8.0 indeed does have a destop switching tool, but it seems
> to conflate desktop environments (gnome vs kde) and window managers
> (WindowMaker vs. twm). This left me feeling uncomfortable. 
> 
> Since I'm planning a migration from RedHat to gentoo or debian, I
> don't want to become reliant on gui utilities any more than I have
> to. If I were to reconfigure the desktop switcher to recognize icewm,
> I suspect it would be easier to modify a rc file to call icewm in
> the first place. 
> 
> Haines

Hello Haines,Im using IceWm as well from very few days and I simply run:

xinit /usr/local/bin/icewm --:0 

from terminal when I'am here on my RHL-7.3 box,or even run:

icewm

which contains

#!/bin/sh
startx /usr/local/bin/icewm --:0
exit 0

from my job companion Compaq E500 running RHL8.0

By the way suggested documentation contains a lot of stuff for a more deep
customization of IceWM.

Best Regards

Marco


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+fOmas0ru0Kz1knARApA7AKCy4lgaDxzvVt/0wxdBZaBlPs4+HgCcCwi0
p2ztfJiohMrFiZVsqW+h9P8=
=z+9V
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
