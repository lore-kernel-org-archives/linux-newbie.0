From: cr <cr@orcon.net.nz>
Subject: Re: Switching between KDE and GNOME
Date: Thu, 3 Jul 2003 21:23:59 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307030921.h639Lg0J000826@dbmail-mx2.orcon.co.nz>
References: <Pine.LNX.4.43.0307011307270.32514-100000@perpugilliam.csclub.uwaterloo.ca> <200307020758.h627wdvS019825@dbmail-mx1.orcon.co.nz> <oprrorkd0fyuy227@mail.citech-bd.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprrorkd0fyuy227@mail.citech-bd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

On Thursday 03 July 2003 01:54, Amin wrote:
> Hello,
>
> On Wed, 2 Jul 2003 19:40:53 +1200, cr <cr@orcon.net.nz> wrote:
> > There *used* to be, in RedHat 7.2 or thereabouts, a 'Desktop switcher'
> > app.   It required a restart of X for it to take effect.   But I can't
> > seem to find it in Debian 3.0.
> >
> > cr
>
> I don't know how much this'll help, but I have three fully functional
> window managers/environments (a.k.a. IceWM, GNOME, KDE) that I run
> depending on my needs, and here's the file I use to switch between them:
>
> $ more .Xclients-default
> exec icewm || exec xterm -fn 7x14
> #exec startkde || exec xterm -fn 7x14
> #exec gnome-session || exec xterm -fn 7x14
> $
>
> As you can probably tell, IceWM is my favorite.
>
> BTW, `.Xclients-default' is actually called from another file, at least on
> my system:
>
> $ more .Xclients
> #!/bin/bash
>
> # Created by Red Hat Desktop Switcher
>
> if [ -e "$HOME/.Xclients-$HOSTNAME$DISPLAY" ]; then
>     exec $HOME/.Xclients-$HOSTNAME$DISPLAY
> else
>     exec $HOME/.Xclients-default
> fi
> $
>
> I guess this is more flexible, but if you want, you could bypass the
> convolution and put your GNOME/KDE starting commands in `.Xclients'.  These
> files are shell scripts, of course, and they are a feature of the X Window
> System.
>
> The reason I'm bringing this up is that, seeing as controlling desktop
> environments/WMs is more of an X issue, people ought to know that there's a
> standard way they can do it in all distros, regardless of whether the
> command-line/graphical tools are available (or not).  The standard
> (command-line and graphical) tool, is, of course, `switchdesk'.  No
> surprise:  `switchdesk' is itself (mostly) a shell script!
>
> One last thing: I read in this thread that someone's been trying to use
> KDE's window manager with GNOME.  Please save yourself the headache!
>
> HTH,
> Yawar Amin

Thanks for that!

Incidentally, though I've always used a weird mixture of Gnome and KDE apps, 
I've never felt tempted to use the KDE windowmanager under Gnome.

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
