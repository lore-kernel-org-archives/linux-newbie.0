From: Ray Olszewski <ray@comarre.com>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Sun, 12 Jan 2003 11:51:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030112114020.02281c10@celine>
References: <014601c2ba72$28d85720$6400a8c0@00arc>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <014601c2ba72$28d85720$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:38 PM 1/12/03 -0500, Jonathan Kallay wrote:
>I have been able to start X Windows in the past, but after plugging in a
>different monitor (and changing the configuration file), startx will cause
>the screen to go blank and never come back.  CTRL-ALT-BKSP won't work.  The
>only way that I can see what is going on is by telnetting in from a
>different computer and running startx.  No errors appear in the log file,
>other than "Failed to load GLCore (module does not exist, 0)".  The very
>bottom of the output reads:
>  (II) [GLX]: Initializing GLX extension
>XIO:  fatal IO error 104 (Connection reset by peer) on X server ":0.0"
>       after 0 requests (0 known processed) with 0 events remaining.
>
>Any suggestions?

When I experience similar problems, the usual cause is a vsync or hsync 
value that the monitor does not support. Sensible monitors (pretty much all 
of them, these days) tuen themselves off under when they get settings that 
are inconsistent with their hardware capabilities. Since you say you 
plugged in a difeent monitor, this seems like the first thing to check ... 
that is, when you changed the configuration file, did you do so in a way 
consistent with the new hardware? I can't be more specific because you 
haven't provided any details (like what version of XFree86, what video 
driver, and what monitor ... and what config-file changes).

Aside from that, you say that "CTRL-ALT-BKSP won't work". So ...

Does CTRL-ALT-F1 (or the F* value for whatever vt you ran startx from) work 
to restore a console?

Does killing the startx process from the telnet session restore a console?

Does flipping through your specified modes (with CTRL-ALT-+) ever produce a 
mode that works?

Does powering the monitor off, then back on, have any effect?

BTW, you characterize this problem as " X won't start". My response assumes 
this characterization is wrong ... that is, that if you do a "ps ax" from 
yout telnet session, you will see X processes (startx, X, maybe a font 
manager or a wm, and maybe others) listed as running. If I am mistaken in 
this ... if instead you mean that startx actually exits and still leaves 
the display blank, without a vt showing, please be specific about that.


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
