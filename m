From: cr <cr@orcon.net.nz>
Subject: Re: Switching between KDE and GNOME
Date: Wed, 2 Jul 2003 19:40:53 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307020758.h627wdvS019825@dbmail-mx1.orcon.co.nz>
References: <Pine.LNX.4.43.0307011307270.32514-100000@perpugilliam.csclub.uwaterloo.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0307011307270.32514-100000@perpugilliam.csclub.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 02 July 2003 05:12, Dan Zlotnikov wrote:
> This is the most bizarre thing that's happened yet. I tried startkde from
> a text-term and it died. Trying to switch to the KDE wm from inside GNOME
> tended to hang up the x-session. Then, all of a sudden (must've been some
> bloody slow process in the background), KDE goes active on me. I'm not
> seeing any GNOME processes through ps -aux, it's all KDE now.
>
> Problem: Any attempt to access the drive is exceedingly slow. I'm talking
> about three minutes to load the /home filelist in Konqueror sort of slow.
> Something isn't working right, and I'll be damned if I knew what.
>
> Dan

Well, I'm back with Gnome now, but a number of things seem to be not 
working...   for example, right-click on the desktop doesn't bring up a menu. 
And a number of menu programs don't launch.   
So maybe KDE and Gnome interfere with some of each other's settings.   

There *used* to be, in RedHat 7.2 or thereabouts, a 'Desktop switcher' app.   
It required a restart of X for it to take effect.   But I can't seem to find 
it in Debian 3.0.

cr


> On Tue, 1 Jul 2003, cr wrote:
> > On Tuesday 01 July 2003 08:51, Dan Zlotnikov wrote:
> > > First of all, D'oh! 2.4.19, of course. Typoed.
> > >
> > > On Mon, 30 Jun 2003, Ray Olszewski wrote:
> > > > I don't run either KDE or Gnome here, so I can help only a little
> > > > with the DEbian parts.
> > > >
> > > > Assuming you are using the apt-* tools for package management, you
> > > > probably want to apt-get install kdebase . (At least this is right
> > > > for Sid; Woody is probably the same in this respect.) If its
> > > > installer is any good, it will either ask appropriate questions to
> > > > get you to replace Gnome with KDE, or it will do so without asking
> > > > (less likely but possible). Once the base stuff is installed, you'll
> > > > need to install appropriate specific
> > > > applications for kde.
> >
> > For what it's worth, I installed kdebase a week or so ago.    And bingo!,
> > without so much as asking me, KDE took over.    Next time I logged in my
> > screen looked like a jukebox.   (Sorry to any who *like* KDE's default
> > settings  :).
> >
> > (About two weeks ago I installed Debian 3.0, and somehow (blame Debian's
> > installer! :)  kdebase got missed out.   I had all the other KDE apps
> > like Kmail etc, though I 'always' run Gnome as a desktop.   But I noticed
> > that Kaddressbook was missing, so I installed kdebase (using kpackage as
> > the installer).
> >
> > I guess, if you're running Gnome, you may find Gnome-apt will do it,
> > though I've never tried it.   Anyway, there are a number of associated
> > KDE packages which you might want to install.   I would hope Gnome-apt
> > would prompt for or let you search for any such packages.
> >
> > The way to swap from one to the other, I found, is to make
> > /etc/alternatives/x-session-manager a symlink to either /usr/bin/kde2  or
> > /usr/bin/gnome-session.
> >
> > ln -s /usr/bin/gnome-session /etc/alternatives/x-session-manager
> >
> > Well, it worked for me anyway.
> >
> > cr
> > ... very much a Debian newbie
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> > in the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
