From: Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca>
Subject: Re: Switching between KDE and GNOME
Date: Tue, 1 Jul 2003 13:12:14 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.43.0307011307270.32514-100000@perpugilliam.csclub.uwaterloo.ca>
References: <200307010826.h618PhYr031272@dbmail-mx2.orcon.co.nz>
Reply-To: dzlotnik@uwaterloo.ca
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307010826.h618PhYr031272@dbmail-mx2.orcon.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

This is the most bizarre thing that's happened yet. I tried startkde from
a text-term and it died. Trying to switch to the KDE wm from inside GNOME
tended to hang up the x-session. Then, all of a sudden (must've been some
bloody slow process in the background), KDE goes active on me. I'm not
seeing any GNOME processes through ps -aux, it's all KDE now.

Problem: Any attempt to access the drive is exceedingly slow. I'm talking
about three minutes to load the /home filelist in Konqueror sort of slow.
Something isn't working right, and I'll be damned if I knew what.

Dan

On Tue, 1 Jul 2003, cr wrote:

> On Tuesday 01 July 2003 08:51, Dan Zlotnikov wrote:
> > First of all, D'oh! 2.4.19, of course. Typoed.
> >
> > On Mon, 30 Jun 2003, Ray Olszewski wrote:
> > > I don't run either KDE or Gnome here, so I can help only a little with
> > > the DEbian parts.
> > >
> > > Assuming you are using the apt-* tools for package management, you
> > > probably want to apt-get install kdebase . (At least this is right for
> > > Sid; Woody is probably the same in this respect.) If its installer is any
> > > good, it will either ask appropriate questions to get you to replace
> > > Gnome with KDE, or it will do so without asking (less likely but
> > > possible). Once the base stuff is installed, you'll need to install
> > > appropriate specific
> > > applications for kde.
>
> For what it's worth, I installed kdebase a week or so ago.    And bingo!,
> without so much as asking me, KDE took over.    Next time I logged in my
> screen looked like a jukebox.   (Sorry to any who *like* KDE's default
> settings  :).
>
> (About two weeks ago I installed Debian 3.0, and somehow (blame Debian's
> installer! :)  kdebase got missed out.   I had all the other KDE apps like
> Kmail etc, though I 'always' run Gnome as a desktop.   But I noticed that
> Kaddressbook was missing, so I installed kdebase (using kpackage as the
> installer).
>
> I guess, if you're running Gnome, you may find Gnome-apt will do it, though
> I've never tried it.   Anyway, there are a number of associated KDE packages
> which you might want to install.   I would hope Gnome-apt would prompt for or
> let you search for any such packages.
>
> The way to swap from one to the other, I found, is to make
> /etc/alternatives/x-session-manager a symlink to either /usr/bin/kde2  or
> /usr/bin/gnome-session.
>
> ln -s /usr/bin/gnome-session /etc/alternatives/x-session-manager
>
> Well, it worked for me anyway.
>
> cr
> ... very much a Debian newbie
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
