From: cr <cr@orcon.net.nz>
Subject: Re: disabling X display Manager
Date: Tue, 17 Jun 2003 23:42:21 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306171128.h5HBSYiZ005546@dbmail-mx2.orcon.co.nz>
References: <20030611.160313.-280611.0.matthewstapleton@juno.com> <5.1.0.14.1.20030611133014.01f97628@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030611133014.01f97628@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 12 June 2003 08:32, Ray Olszewski wrote:

(snip for bandwidth) 

> >2. /etc/inittab will always start *some* init script (this is as close to
> >autoexec.bat as you will get with Linux), and that script in turn
> >customarily runs a bunch of other init scripts, each of which sets up some
> >piece of the OS or starts some background process. Locations vary, but one
> >example of where they are is
> >         /etc/init.d     for the actual scripts
> >         /etc/rc2.d      for symlinks to the ones run at runlevel 2
> >                         (there will be a corresponding /etc/rc?.d for
> >                         each runlevel, including an /etc/rcS.d for
> >                         single-user mode)
> >
> >Look in the directory for the default runlevel for a symlink with a name
> >something like "S99xdm". To stop xdm from starting during boot/init,
> >remove this symlink.
> >(This is the less common method of starting xdm, but the one I am more
> >familiar with, since Debian does it this way.)

Picking up on that thread, I'm running Deb 3.0, logging into Gnome, and I'd 
very much prefer a text login.   
My /etc/inittab  contains
# The default runlevel.
id:2:initdefault:

and /etc/rc2.d  contains 
S99gdm -> ../init.d/gdm

*Before* I change things I'd like to make absolutely sure - removing  (or 
renaming)  S99gdm  will leave me with a text login, right?     (I don't wish 
to remove it and then find I can't get back in!    :)

And then, to start X, do I just use 'startx'  as I'm used to with RH?  (There 
seems to be one in /usr/X11R6/bin  though its contents are somewhat cryptic 
to me).

Regards

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
