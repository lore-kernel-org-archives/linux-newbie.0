From: jamtat@mailsnare.net
Subject: Re: Getting a valid display under Debian revisited
Date: Tue, 9 Dec 2003 18:44:37 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312091843110.1018@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Apologies if this gets double-posted.  I sent it 2 or 3 hrs ago and
haven't seen it hit the list yet, so I'm resending.

On Tue, 9 Dec 2003, Ray Olszewski wrote:

> OK. First thing to wonder is if this is some sort of xdm problem. Test this
> by removing the symlink /etc/rc2.d/S99xdm and rebooting. This change should
> leave you with a standard login: prompt on VT1.
>
> Log in and run "startx", and see if you have the same problem.
>
Same problem.  A bit of phosphor excitement as the server starts, and some
blinking.  Then it goes totally black and the power light starts blinking.

> This detail actually is important. It is an indicator of a problem with an
> hsync or vsync signal to the monitor. Make sure your X setup is set to use
> default size of 640x480 and color depth of 8 (not great settings, but very
> vanilla ones, likely to find a workable modeline).
>
Tried 640x480x8 with the current hsync and vsync.  Same problem - black
screen after a blink or two.

> I don't have a 2.2.20 source tree handy to examine, and I don't otherwise
> recall if it supports devfs. Based on my system here, current (or at least
> recent) X doesn't assume devfs is in use.
>
I tried the new kernel and am running it now.  It has not resolved the
problem.

> As a general matter, if we are looking at the possibility of hardware
> problems, you might want to report the details of how you consifured X (in
> the dpkg-mediated dialog) and what the relevant sections (Modules,  Device,
> Monitor, Screen, and ServerLayout) of XF86Config look like. Also tell us
> what monitor you are using and what you know about its multisync
> capabilities (this last item is an RTFM exercise).
>
When I installed X using tasksel, a set of dialogues ran after the
download asking details about video card, monitor, keyboard and mouse.  I
entered the values there.  I initially edited (by hand) a line in the
section that deals with the mouse.  Since then, I have run
dpkg-reconfigure xserver-xfree86 at least 4 or 5 times to try and fiddle
with settings to see if that would help.  Those mouse settings have almost
surely been overwritten by now.  The way XF86Config-4 looks is sort of a
moving target for this reason: I'm not sure what to show you.  This
monitor is a Microscan ADI 4V LM-1564.  Like most of the other stuff I
have, this one is a castoff that came with no documentation.  Specs I
found on the web for it say it can do 1280x1024 maximum, and that hsync is
30-64, vsync 50-100.  I tried those settings initially at 24 bit color and
640x480, 800x600 and 1024x768 resolutions.  Later I went down to 50-80 on
vsync.  Since your last reply I've selected 640x480 only in
dpkg-reconfigure xserver-xfree86 and 8 bit color.  I also tried limiting
hsync down to 30-40 and vsync to 50-60.

Though it may not be relevant, I'd like to ask how I go about specifying a
window manager.  I apt-get(ted) fluxbox as I mentioned, but I'm just not
sure if I need to configure the system somehow so that the computer knows
to start it.  I'm assuming that, even if that's not configured correctly,
I should still see something when I run "startx," and that it's therefore
probably not relevant to the problems I'm having.  But not being sure, and
needing to perhaps confront that aspect at some stage, I thought I should
mention it.  What I really need is some sort of description of setting up
X from start to finish.  Unfortunately, I haven't located such a resource
yet.  Any recommendations anyone?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
