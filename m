From: whitnl73@juno.com
Subject: Re: slightly off topic: remotely displaying Mac OS X applications
Date: Sun, 12 Jan 2003 22:20:20 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030112.223118.134688608.1.whitnl73@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: hammer@revobild.net


On 13 Jan 2003, Heimo Claasen wrote:

> How _do_ you "change the DISPLAY variable?"
>
> Searching through my wise Debian book I cannot even find it mentioned
> at all.
>
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-01-13
>
Depends on your shell.

bash:
export DISPLAY=machine.you.want_to_display.on:0.0
tcsh:
setenv DISPLAY machine.you.want_to_display.on:0.0

If you use some other shell, see the man page for it, or at least tell
us what it is.

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
