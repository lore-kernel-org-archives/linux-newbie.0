From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: switching window managers
Date: Sat, 22 Mar 2003 23:53:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303230453.h2N4rb3T024680@hartford-hwp.com>
References: <20030322225559.8260.qmail@linux.ik5bcu.ampr.org>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20030322225559.8260.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ik5bcu@tin.it
Cc: linux-newbie@vger.kernel.org

> Hello Haines,Im using IceWm as well from very few days and I simply run:
> 
> xinit /usr/local/bin/icewm --:0 
> 
> from terminal when I'am here on my RHL-7.3 box,or even run:

Thanks Marco, but I managed to get myself into trouble. When runing
IceWM, I was using its panel at the same time as gnome's desktop
switcher. They seemed to get along, but unfortunately, they had
conflicing keybindings, and as soon as I typed a key that had
conflicting purposes, X crashed.

I got X working and am now back in gnome to start again. However, I
seem to have damaged gnome desktop switcher because panel crashes as
it is loaded. I need to configure gnome not to run the desktop switcher,
but don't know how to do it.

Do you happen to know the name of the gnome desktop switcher
executable and its configuration file? Do you know which panel file
calls the desktop switcher? I'm caught in a gnome panel crash loop,
and so was forced to use another account (root has same trouble as
regular user) in order to use X apps.  

Haines Brown 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
