From: "Jonathan Kallay" <yoni@kallay.net>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Sun, 12 Jan 2003 15:46:10 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <015401c2ba7b$a3c16720$6400a8c0@00arc>
References: <5.1.0.14.1.20030112114020.02281c10@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray,
  Thanks for the response.  Here are the answers to your questions, in no
particular order.
  I changed the vsync and hsync values according to the specs I looked up on
www.monitorworld.com, which are also consistent with the monitor type: a
mid-to-low-end 15" monitor.

 CTRL-ALT-F* does not work.  There are no X processes running- so X did, in
fact, fail to start.  I tried turning off the monitor, disconnecting it from
the video card, powering it on, turning it off, reconnecting it, and
powering it on again.  The monitor will "click" after a few seconds, as if
it is going into suspend mode, but the power light won't change to orange.

I can switch to a different virtual terminal, blindly login and type
commands, and they will work (e.g. shutdown -r now will reboot the machine)
.  So it looks like the display is being knocked out without coming back up
once X terminates.  I am using an NVidia TNT2 video card with the standard
nv driver.
----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: <linux-newbie@vger.kernel.org>
Sent: Sunday, January 12, 2003 2:51 PM
Subject: Re: X won't start, no errors in XFree86.0.log


> At 02:38 PM 1/12/03 -0500, Jonathan Kallay wrote:
> >I have been able to start X Windows in the past, but after plugging in a
> >different monitor (and changing the configuration file), startx will
cause
> >the screen to go blank and never come back.  CTRL-ALT-BKSP won't work.
The
> >only way that I can see what is going on is by telnetting in from a
> >different computer and running startx.  No errors appear in the log file,
> >other than "Failed to load GLCore (module does not exist, 0)".  The very
> >bottom of the output reads:
> >  (II) [GLX]: Initializing GLX extension
> >XIO:  fatal IO error 104 (Connection reset by peer) on X server ":0.0"
> >       after 0 requests (0 known processed) with 0 events remaining.
> >
> >Any suggestions?
>
> When I experience similar problems, the usual cause is a vsync or hsync
> value that the monitor does not support. Sensible monitors (pretty much
all
> of them, these days) tuen themselves off under when they get settings that
> are inconsistent with their hardware capabilities. Since you say you
> plugged in a difeent monitor, this seems like the first thing to check ...
> that is, when you changed the configuration file, did you do so in a way
> consistent with the new hardware? I can't be more specific because you
> haven't provided any details (like what version of XFree86, what video
> driver, and what monitor ... and what config-file changes).
>
> Aside from that, you say that "CTRL-ALT-BKSP won't work". So ...
>
> Does CTRL-ALT-F1 (or the F* value for whatever vt you ran startx from)
work
> to restore a console?
>
> Does killing the startx process from the telnet session restore a console?
>
> Does flipping through your specified modes (with CTRL-ALT-+) ever produce
a
> mode that works?
>
> Does powering the monitor off, then back on, have any effect?
>
> BTW, you characterize this problem as " X won't start". My response
assumes
> this characterization is wrong ... that is, that if you do a "ps ax" from
> yout telnet session, you will see X processes (startx, X, maybe a font
> manager or a wm, and maybe others) listed as running. If I am mistaken in
> this ... if instead you mean that startx actually exits and still leaves
> the display blank, without a vt showing, please be specific about that.
>
>
> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
>
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
