From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 23:19:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030519230639.01f88a80@celine>
References: <5.1.0.14.1.20030519141159.01f205c8@celine>
 <3EC92B60.1000406@bcgreen.com>
 <5.1.0.14.1.20030519141159.01f205c8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305200723.18633.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:23 AM 5/20/2003 +0200, Richard Adams wrote:
>On Monday 19 May 2003 23:14, Ray Olszewski wrote:
> > At 09:55 PM 5/19/2003 +0200, Richard Adams wrote:
> > >On Monday 19 May 2003 21:07, Stephen Samuel wrote:
> > > > This solution presumes that X startup is controlled by the runlevel.
> > > > I presume that you know about TurboLinux. I really only know RedHat.
> > > > Apparently, some versions of Linux use methods other than run level
> > > > to control X-Windows startup.
> > >
> > >Name one that does not use /etc/inittab, i do not posess to know
> > > everything, but i have never seen one which does not use the inittab
> > > method.
> >
> > A normal Debian install (Woody or Sid, maybe older versions too) starts xdm
> > from an /etc/init.d script that is symlinked to runlevels the usual way.
> > The standard practice is to leave the system at runlevel 2 and run an
> > S99xdm .
>
>But does Debian define the runlevel in /etc/inittab ?.

What does "define the runlevel" mean, Richard?

The usual practice (RH and its offshoots, Slackware) is to define in 
/etc/inittab a distinct runlevel that starts an xdm process directly from a 
line of this form:

         6:23:respawn:/sbin/getty 38400 tty6

(the example starts a tty, so it's only illustrative). As I recall, RH and 
its ilk do it from runlevel 5, while Slackware does it from runlevel 4.

So to start xdm from these distros, you change this line in inittab --

         id:2:initdefault:

-- to read either

         id:5:initdefault:
or
         id:4:initdefault:


Debian, in contrast, creates a script /etc/init.d/xdm that starts the xdm 
process on the next available vt (usually 7, in practice). It them symlinks 
that script to the standard multiuser runlevel, runlevel 2 and does not 
change the initdefault line in inittab.

This has operational consequences. The important one, for purposes of this 
thread, is that you cannot change the X startup either by editing inittab 
or by specifying a runlevels a lilo parameter (the symlinks are the same 
for runlevels 2, 3, 4, and 5 on a standard Debian install). You must change 
or remove the symlink to xdm in runlevel 2 (again, on a standard Debian 
install). This is inconvenient in the cases where xdm so trashes the video 
subsystem that you cannot CTRL-ALT-F* back to a console (it happens) ... 
your only option (unless you have a remote login capability, say through 
ssh) is to boot/init into runlevel 1 and fix things there.

I don't know if any distro other than Debian does it that way. I'd 
speculate that the Debian derivatives do, but there are not nearly so many 
of them as there are RH derivatives, so it may not actually come up much.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
