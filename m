From: whitnl73@juno.com
Subject: Re: slightly off topic: remotely displaying Mac OS X applications (fwd)
Date: Sun, 12 Jan 2003 22:18:28 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030112.223118.134688608.0.whitnl73@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: yoni@kallay.net


On Sun, 12 Jan 2003, Jonathan Kallay wrote:

> I changed the display variable with the command "setenv DISPLAY
> xxx.xxx.xxx.xxx:0.0" (OS X's tcsh doesn't use set/export commands).  I added
> the host to the list of allowed hosts by running xhost.  I've successfully
> launched remote applications on another computer that have appeared on my
> screen, so the steps should be the right ones...

Hmmm, that should be right.  Does xxx.xxx.xxx.xxx resolve to your own
machine?  Can you FI telnet back to it?  Does the client display any
error messages?  (capture them with:  "app  >& filename", I guess).
Does it maybe have a config file where the DISPLAY is set that overrides
the environment, as Wine does, FI?

Lawson
--
---oops---





________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
