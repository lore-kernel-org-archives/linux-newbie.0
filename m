From: cr <cr@orcon.net.nz>
Subject: Re: disabling X display Manager
Date: Wed, 18 Jun 2003 23:29:21 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306181212.h5ICC4gu019704@dbmail-mx1.orcon.co.nz>
References: <5.1.0.14.1.20030611133014.01f97628@celine> <5.1.0.14.1.20030617061959.0201dcd0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030617061959.0201dcd0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Wednesday 18 June 2003 01:28, Ray Olszewski wrote:

(snips)

> >
> >*Before* I change things I'd like to make absolutely sure - removing  (or
> >renaming)  S99gdm  will leave me with a text login, right?     (I don't
> > wish to remove it and then find I can't get back in!    :)
>
> To be "absolutely" sure, check /etc/inittab for lines of this form:
>
>          1:2345:respawn:/sbin/getty 38400 tty1
>          2:23:respawn:/sbin/getty 38400 tty2
>          3:23:respawn:/sbin/getty 38400 tty3
>          4:23:respawn:/sbin/getty 38400 tty4
>          5:23:respawn:/sbin/getty 38400 tty5
>          6:23:respawn:/sbin/getty 38400 tty6

Yep, they're there.    Would the '2345' be runlevels?

> I have no real doubt that your system will offer a standard console login,
> but seeing that these lines are present (the ones above come from Debian
> Sid, but this is extremely standard inittab content) is as close to
> "absolutely" as I can get you.
>
> The other thing to do is to check that when you do start X via gdm, the
> consoles are present. From the gdm display, you should be able to access
> them by pressing CTRL-ALT-F1 through CTRL-ALT-F6.

Yes, they do.    But then I didn't know how to get the gdm back :)   
Never mind, I just rebooted it.   

> >And then, to start X, do I just use 'startx'  as I'm used to with RH? 
> > (There seems to be one in /usr/X11R6/bin  though its contents are
> > somewhat cryptic to me).
>
> It's been awhile since I did a Debian-Woody install, but my memory is that
> there is some specific package you need to install to get startx. If you
> did a standard X install of Woody, it was probably included. But your
> phrasing  "seems to be" gives me pause -- either an executable app (a
> script, actually) of this name *is* or *is not* present. Try checking with
> "which startx".

Sorry, my vague wording was meant to reflect my unfamiliarity with Debian.  
There *is* a /usr/X11R6/bin/startx.

And it worked, I have a text login, and 'startx' starts X.

Many thanks!

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
