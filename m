From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Mon, 25 Nov 2002 18:02:03 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211252302.gAPN23M05035@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: brownh@hartford-hwp.com


   > XFree86 Version 4.2.1 / X Window System
   > (protocol Version 11, revision 0, vendor release 6600)
   > Release Date: 3 September 2002
   > 	If the server is older than 6-12 months, or if your card is
   > 	newer than the above date, look for a newer version before
   > 	reporting problems.  (See http://www.XFree86.Org/)
   > Build Operating System: Linux 2.4.7-10custom i686 [ELF]
   > Module Loader present
   > Markers: (--) probed, (**) from config file, (==) default setting,
   >          (++) from command line, (!!) notice, (II) informational,
   >          (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
   > (==) Log file: "/var/log/XFree86.0.log", Time: Sat Nov 23 10:52:05 2002
   > (==) Using config file: "/etc/X11/XF86Config-4"

   All that says to me is that the config file used has a bad error in the 
   "first line" as it configured nothing period.

   > waiting for X server to shut down

So it might seem except that both /etc/X11/XF86Config and XF86Config-4
are backup copies. Further, they fully support root's starting X.

Further, I can readily create new account that start x just fine. It's
only when I reboot that they can no longer start X.

I concluded from this that the boot process sets a value somewhere that
prevents X from starting. Perhaps an authentification problem, but the
log above sure offers no clue.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
