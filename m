From: "Jonathan Kallay" <yoni@kallay.net>
Subject: X won't start, no errors in XFree86.0.log
Date: Sun, 12 Jan 2003 14:38:18 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <014601c2ba72$28d85720$6400a8c0@00arc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have been able to start X Windows in the past, but after plugging in a
different monitor (and changing the configuration file), startx will cause
the screen to go blank and never come back.  CTRL-ALT-BKSP won't work.  The
only way that I can see what is going on is by telnetting in from a
different computer and running startx.  No errors appear in the log file,
other than "Failed to load GLCore (module does not exist, 0)".  The very
bottom of the output reads:
 (II) [GLX]: Initializing GLX extension
XIO:  fatal IO error 104 (Connection reset by peer) on X server ":0.0"
      after 0 requests (0 known processed) with 0 events remaining.

Any suggestions?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
