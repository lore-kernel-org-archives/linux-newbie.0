From: James Miller <jamtat@mailandnews.com>
Subject: RE: Debian install issue
Date: Wed, 9 Oct 2002 11:14:08 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210091108330.6549-100000@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Apologies if this message gets double-posted. I sent it 12 hrs ago or so 
but have not seen it hit the list yet.

On 7 Oct 2002, Ray Olszewski wrote:
> 
> 1. Are you installing using dpkg or apt-get?
> 

Apt-get, I believe.

> 2. What version of X are you installing (I know what Woody, the current 
> Debian Stable, installs, but I don't remember what Potato was doing or what 
> package names it used, and I don't have a Potato system around that has X 
> installed)? On Debian systems, X 3.x.x uses CF86Config, and X 4.x.x uses 
> XF86Config-4, so I'll assume for now that you are trying to install 3.x.x, 
> since you mention XF86Config.
> 

Yes, it's 3.3.6

> That said ... you should be able to CTRL-C out of wherever you are stuck, 
> leaving the install incomplete. You can then clean things up in any of 
> several ways ....
> 

That's what I did. I fiddled a bit with a couple of the options you 
proposed, but not with much success. I don't claim to be very adept at 
Linux or in using computers in general. I finally just decided to 
reinstall. I did that a couple of more times. I finally got to the point 
of running XF86Setup from the command line (since, I think, I did not 
select a default X server - SVGA and VGA16 being the ones offerred, IIRC). 
I actually went through the setup, got the mouse and everything 
configured, and was congratulated at having a working xserver configured. But 
each time I would try to startx (by typing "startx" at the command line), 
the server would abort with errors. There were no modes available, 
apparently, under the 640x480 resolution (I tried other resolutions and 
color depths, but 640x480 is the only one that would actually work).

I got frustrated with that and decided to try Slackware (8.0) - the other 
survpc-friendly distro I've heard about. Well, I finally got that 
installed as well. But it also will not start X. It says there are no 
screens available. I selected TERM=vt100 for the installation routine, 
since Slack suggests that if you don't have a color monitor.

Sorry for being a bit vague on the error messages. I know I could probably 
get better help in troubleshooting my particular setup by posting details 
about them. But for now I'm just trying to identify the general drift of the 
problem. It seems to me it could be my old AOC monochrome monitor (yes, the 
card is SVGA, not monochrome). Does that sound like it could be the source of 
the X difficulties I'm having? The monitor has worked just fine under RH 6.2 
- no problems whatever. Could newer versions of XFree86 be somehow incompatible 
with the monitor I'm using and causing such errors?

For now, I'm trying to identify in principle the nature of this problem. 
You see, I have older color (VGA, probably) monitors laying around I could 
use. I'm faced now with determining if hooking up one of those might not 
be the simplest way to resolve the troubles I'm having - simpler, that is, 
than ironing out how to get a working display on the old monochrome 
monitor.

Further input will be appreciated.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
