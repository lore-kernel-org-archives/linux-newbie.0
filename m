From: whitnl73@juno.com
Subject: Re: scripting the "rec" function for a fixed time.
Date: Fri, 7 Mar 2003 19:22:48 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030307.192525.8.1.whitnl73@juno.com>
References: <1046131264.10885.28.camel@smeagle>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046131264.10885.28.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: p.howell74@rcn.com
Cc: linux-newbie@vger.kernel.org

On 24 Feb 2003, Peter Howell wrote:

> I would like to be able to run the rec command unattended.  Right now
> when executed, it will record sound until I hit C-c.  I would really
> like to be able to right a script which will execute "rec ...", then
> wait a specified period of time, then pass the C-c to it.  Or is there a
> simpler way?
>
> Thanks
>
> Peter

I don't have rec or any hardware to do with sound, so I'll use "yes"
to demonstrate a program that runs until interrupted.  Not I use SIGHUP
rather than SIGINT, as bash provides a handler for SIGINT for background
jobs.  stdout and stderr don't have to be null, but they have to be
directed away from the terminal.

#!/bin/sh
yes >/dev/null 2>/dev/null &
sleep 1
kill -HUP $!


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
