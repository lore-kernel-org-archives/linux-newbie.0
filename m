From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Configuring RH8.0 window manager
Date: Sun, 24 Nov 2002 09:37:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211241437.gAOEbWL26578@hartford-hwp.com>
References: <200211232133.gANLXFP02853@hartford-hwp.com> <200211250016.08885.genright@paradise.net.nz>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200211250016.08885.genright@paradise.net.nz> (message from glenn
	on Mon, 25 Nov 2002 00:16:08 +1300)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: genright@paradise.net.nz
Cc: linux-newbie@vger.kernel.org

> > 1. I can delete any icon from the desktop except for two. How do I
> > get rid of trash and home?
> 
> Are you using KDE or Gnome? I think these icons may be somewhat
> integral to the Window Manager like they are in windows. Other
> Window managers I have avalible in Mandrake include sawfish and
> blackbox. These are light options designed for speed rather than
> integrated platforms but they may be more suitable for you.

I'm running gnome. I need a developed window manager because of my
question 3 re control of stacking. I can't dicker with the window
manager code because it's compiled.

I'm not using RH8.0 presently, but a copy of RH 7.3. I can set up
sawfish not to raise windows when they are focused, but that does not
seem to have the desired effect (if a window looses focus, it
disappears to the bottom of the stack). Enlightenment, however, does
have the behavior I want. But RH 8.0 does not come with
Enlightenment. I suppose I could install Enlightenment on it (not
sure).  I'm about to see if wmaker has what I need (For some reason
I've got it on my system, although Gnome Control Center doesn't know
it)

> <snip unknown>
> 
> >
> > 3. Window stacking is tied to focus, so that the window on top of
> > the stack is the focused window. I want to revert to my usual
> > preference which is for stacking to be in order of window
> > creation, so that what's on top is the newest window.
> 
> If you are using KDE then there should be a 'Control Center' in the
> main programs menu. Otherwise you should look up the docs for a
> configuartion utility which most of the desktops should have
> provided with the install.

In RH 7.3, I had little difficulty changing and configuring window
managers. RedHat 8.0 is not so straightforward. Things get hidden. I
can run xinit on a winow manager to see how it works, and then figure
out where to call it by default (xinitrc, xserverrc?)

> > 4. I want to configure xterm, but ~/.Xdefaults no longer
> > understands statements such as
> >
> > 	      XTerm*Font: 7x13bold xterm -geometry 20x5-0-0 &
> >
> >    Where now does one now define things like fn, bg, fg, etc.?

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
