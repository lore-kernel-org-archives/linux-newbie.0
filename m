From: Ray Olszewski <ray@comarre.com>
Subject: Re: Trying to get GUI'ed
Date: Wed, 23 Oct 2002 13:27:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021023130903.02121660@celine>
References: <200210231953.g9NJrFdC012165@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210231953.g9NJrFdC012165@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>Ray's "first draft to a window manager how-to" did (finally!) give me
>some insight.
>(I would like to go longer in reading and putting other bits and pieces
>in there too - just haven*'t got the time right now, woner when ever...)
>
>Practical question: is it possible, and how then, to run X and some
>application in it at a very "low level", for instance _without_ as
>much as could be cut off from the libraries (both Gtk and Qt) needed
>for the "higher level" managers/desktops ?

I find it hard to follow the syntax of this sentence. I don't mean to pick 
on you, Heimo, but you are getting into very technical areas now, where 
clarity and precision are at a premium, and I simply can't be sure what you 
mean by (for example) "as much as could be cut off from".

With that disclaimer, the answer to whatever your question is, most likely, 
is: it depends on the application. Please try asking the specific question 
you want answered, about the actual application.

For example, on my Linux workstations, I routinely run Blackbox as a Window 
Manager, and I run no Desktop Environment. I probably do run some 
components of the Gnome and/or KDE APIs; Debian dependency management is 
really very good at handling those sorts of dependency issues without 
operator involvement. Most applications ... all the ones I care about, in 
particular ... examples are xterm, eterm, xmms, xine, XMovie, Mplayer, 
ogle, xawtv, GTKsee, and xvncviewwe ... run fine on this stripped-down 
system. Possibly some of the Gnome-specific apps would not display or run 
properly, and I don't attempt to run any whose names begin with K (KDE apps 
seem a bit pickier about choice of WM than Gnome ones, though I'm not 
certain of that).

I've never tried it myself, but I seem to recall that Lawson Whitney (are 
you there, Lawson? acn you comment helpfully?) has in the past run his 
xserver "bare metal", without even a basic Window Manager. I don't know how 
versatile he found that setup.

>And how to de-install these latter cleanly without creating new problems ?
>
>(The problem I have with that SCSI device and the application for it is
>not the deveice's functioning, which works Ok., but this application's
>screen GUI - it's definitely some conflict there with both Gtk and Qt
>"families", i.e. using either KDE or Gnome. The one occasion it did
>run well was with a "just window maker" install of X. Thus banning the
>additional presence of those Gnome/KDE could perhaps avoid that
>collision, whatever it is.)

Troubleshooting requires information, and your posting messages about an 
application you will not identify by name is unlikely to get you any 
meaningful help. Name the application (include a URL if the app is 
obscure), describe the GUI problem, and report the basics of the system 
that you are having it on (what X server, what Window Manager, and which of 
KDE or Gnome you are running).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
