From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling X display Manager
Date: Tue, 17 Jun 2003 06:28:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030617061959.0201dcd0@celine>
References: <5.1.0.14.1.20030611133014.01f97628@celine>
 <20030611.160313.-280611.0.matthewstapleton@juno.com>
 <5.1.0.14.1.20030611133014.01f97628@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306171128.h5HBSYiZ005546@dbmail-mx2.orcon.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

See below.

At 11:42 PM 6/17/2003 +1200, cr wrote:
>On Thursday 12 June 2003 08:32, Ray Olszewski wrote:
>
>(snip for bandwidth)
>
> > >2. /etc/inittab will always start *some* init script (this is as close to
> > >autoexec.bat as you will get with Linux), and that script in turn
> > >customarily runs a bunch of other init scripts, each of which sets up some
> > >piece of the OS or starts some background process. Locations vary, but one
> > >example of where they are is
> > >         /etc/init.d     for the actual scripts
> > >         /etc/rc2.d      for symlinks to the ones run at runlevel 2
> > >                         (there will be a corresponding /etc/rc?.d for
> > >                         each runlevel, including an /etc/rcS.d for
> > >                         single-user mode)
> > >
> > >Look in the directory for the default runlevel for a symlink with a name
> > >something like "S99xdm". To stop xdm from starting during boot/init,
> > >remove this symlink.
> > >(This is the less common method of starting xdm, but the one I am more
> > >familiar with, since Debian does it this way.)
>
>Picking up on that thread, I'm running Deb 3.0, logging into Gnome, and I'd
>very much prefer a text login.
>My /etc/inittab  contains
># The default runlevel.
>id:2:initdefault:
>
>and /etc/rc2.d  contains
>S99gdm -> ../init.d/gdm
>
>*Before* I change things I'd like to make absolutely sure - removing  (or
>renaming)  S99gdm  will leave me with a text login, right?     (I don't wish
>to remove it and then find I can't get back in!    :)

To be "absolutely" sure, check /etc/inittab for lines of this form:

         1:2345:respawn:/sbin/getty 38400 tty1
         2:23:respawn:/sbin/getty 38400 tty2
         3:23:respawn:/sbin/getty 38400 tty3
         4:23:respawn:/sbin/getty 38400 tty4
         5:23:respawn:/sbin/getty 38400 tty5
         6:23:respawn:/sbin/getty 38400 tty6

I have no real doubt that your system will offer a standard console login, 
but seeing that these lines are present (the ones above come from Debian 
Sid, but this is extremely standard inittab content) is as close to 
"absolutely" as I can get you.

The other thing to do is to check that when you do start X via gdm, the 
consoles are present. From the gdm display, you should be able to access 
them by pressing CTRL-ALT-F1 through CTRL-ALT-F6.

>And then, to start X, do I just use 'startx'  as I'm used to with RH?  (There
>seems to be one in /usr/X11R6/bin  though its contents are somewhat cryptic
>to me).

It's been awhile since I did a Debian-Woody install, but my memory is that 
there is some specific package you need to install to get startx. If you 
did a standard X install of Woody, it was probably included. But your 
phrasing  "seems to be" gives me pause -- either an executable app (a 
script, actually) of this name *is* or *is not* present. Try checking with 
"which startx".



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
