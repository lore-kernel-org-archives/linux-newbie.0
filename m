From: Jude DaShiell <dashielljt@gmpexpress.net>
Subject: apsfilter problem
Date: Sun, 5 Jan 2003 01:10:53 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0301050103470.4936-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The version of apsfilter supplied on slackware 8.0 failed to print a test
page on an hp laser jet iii printer using lp0 the parallel port interface.
The dpi was set at lowest level, and the problem appears to be with the
font stack and times/roman font.  apsfilter throws out lots of strange
errors and I've had to terminate the program with control-c to regain
control.  It doesn't matter whether postscript printer or printer directly
chosen by ghostscript is chosen and I'm using version 7.5.x of
ghostscript.  Slackware had 5.5 of ghostscript and apsfilter wanted people
to upgrade to at least version 6.x though it would have beeen willing to
work with 5.5.  A claim was made that full font support was available in
versions greather than 5.5, but this doesn't appear to be the case.  I
don't know where to go from here, and no I don't need to print postscript
at all, regular text would be fine and I can translate postscript to
regular text no problem for later printing if that's really needed.

-- 
Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
