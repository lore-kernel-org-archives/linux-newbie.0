From: Ray Olszewski <ray@comarre.com>
Subject: RE: Debian install issue
Date: Wed, 09 Oct 2002 10:03:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021009094032.025bd780@celine>
References: <Pine.LNX.4.44.0210091108330.6549-100000@localhost.localdom
 ain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210091108330.6549-100000@localhost.localdom
 ain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailandnews.com>, linux-newbie <linux-newbie@vger.kernel.org>

OK. This report is quite different. Since you are having trouble with 
Debian *and* Slackware, we can eliminate Debian-specific issues. And you 
are correct to write that "I know I could probably get better help in 
troubleshooting my particular setup by posting details about them." As you 
surmise, we'll have to stay with the "general drift" of the problem.

If X fails with errors, then the problem is not at the level of your 
display. If it were, you'd just see a blank display, because X woudl think 
it was working, even though the display failed,. Your problem might be at 
the level of your video card, or it might be that you made inconsistent 
choices in XF86Setup.

You say (with respect to the Debian install):

>But
>each time I would try to startx (by typing "startx" at the command line),
>the server would abort with errors. There were no modes available,
>apparently, under the 640x480 resolution (I tried other resolutions and
>color depths, but 640x480 is the only one that would actually work).

In what you write here, what do you mean by "actually work" (since you say 
this choice aborts with errors)?

What xserver have you chosen? Is it the right one for your video card (vga 
is a pretty generic xserver, and if you can run XF86Setup, then your card 
works with it ... but svga is far from generic for better color-size 
setting). URL www.xfree86.org has a "cardlist" somewhere on its site that 
tells you what xserver to use with various cards. And 640x480 is only a 
resolution; what color depths are you trying?

You say this card-monitor combo worked with RH 6.2 -- you do mean it worked 
as an X display, right? If so, what were the details -- what xserver, what 
XF86Config settings?

As to Slackware (and btw, what does "survpc-friendly" mean?) ... what is 
the "it" that says "no screens available"? Setting TERM=vt100 has nothing 
to do with X installation; it just identifies the default terminal type of 
console displays.

In the end, I suspect these random observations I'm offering won't bring 
you any closer to the source of the problem. You need to do one of two things.

One -- if you had some setup that ran X successfully (e.g., RH 6.2), stay 
with that install, at least long enough to preserve its XF86Config file, so 
you have a sample of a working config (also make note of the version of 
XFree85 it installs ... RH 6.2 is quite old, so it might be a dated X). Use 
that info to configure X on whichever distro you prefer.

Two -- pick one distro, install it, configure X, and if it fails, save the 
error output (by redirecting both STDIN and STRERR to a file). Use this, 
combined with XF86Config, to post a requrst for help that includes the kind 
of detail we need to do real troubleshooting.

At 11:14 AM 10/9/02 -0500, James Miller wrote:
>Apologies if this message gets double-posted. I sent it 12 hrs ago or so
>but have not seen it hit the list yet.
>
>On 7 Oct 2002, Ray Olszewski wrote:
> >
> > 1. Are you installing using dpkg or apt-get?
> >
>
>Apt-get, I believe.
>
> > 2. What version of X are you installing (I know what Woody, the current
> > Debian Stable, installs, but I don't remember what Potato was doing or 
> what
> > package names it used, and I don't have a Potato system around that has X
> > installed)? On Debian systems, X 3.x.x uses CF86Config, and X 4.x.x uses
> > XF86Config-4, so I'll assume for now that you are trying to install 3.x.x,
> > since you mention XF86Config.
> >
>
>Yes, it's 3.3.6
>
> > That said ... you should be able to CTRL-C out of wherever you are stuck,
> > leaving the install incomplete. You can then clean things up in any of
> > several ways ....
> >
>
>That's what I did. I fiddled a bit with a couple of the options you
>proposed, but not with much success. I don't claim to be very adept at
>Linux or in using computers in general. I finally just decided to
>reinstall. I did that a couple of more times. I finally got to the point
>of running XF86Setup from the command line (since, I think, I did not
>select a default X server - SVGA and VGA16 being the ones offerred, IIRC).
>I actually went through the setup, got the mouse and everything
>configured, and was congratulated at having a working xserver configured. But
>each time I would try to startx (by typing "startx" at the command line),
>the server would abort with errors. There were no modes available,
>apparently, under the 640x480 resolution (I tried other resolutions and
>color depths, but 640x480 is the only one that would actually work).
>
>I got frustrated with that and decided to try Slackware (8.0) - the other
>survpc-friendly distro I've heard about. Well, I finally got that
>installed as well. But it also will not start X. It says there are no
>screens available. I selected TERM=vt100 for the installation routine,
>since Slack suggests that if you don't have a color monitor.
>
>Sorry for being a bit vague on the error messages. I know I could probably
>get better help in troubleshooting my particular setup by posting details
>about them. But for now I'm just trying to identify the general drift of the
>problem. It seems to me it could be my old AOC monochrome monitor (yes, the
>card is SVGA, not monochrome). Does that sound like it could be the source of
>the X difficulties I'm having? The monitor has worked just fine under RH 6.2
>- no problems whatever. Could newer versions of XFree86 be somehow 
>incompatible
>with the monitor I'm using and causing such errors?
>
>For now, I'm trying to identify in principle the nature of this problem.
>You see, I have older color (VGA, probably) monitors laying around I could
>use. I'm faced now with determining if hooking up one of those might not
>be the simplest way to resolve the troubles I'm having - simpler, that is,
>than ironing out how to get a working display on the old monochrome
>monitor.




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
