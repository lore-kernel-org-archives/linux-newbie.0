From: whitnl73@juno.com
Subject: Re: GNU make: Where is the default database?
Date: Fri, 21 Feb 2003 19:20:51 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030221.224324.8.0.whitnl73@juno.com>
References: <b35st6$mbs$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b35st6$mbs$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jamie_risk@yahoo.ca
Cc: linux-newbie@vger.kernel.org

On Fri, 21 Feb 2003, Jamie Risk wrote:

> Where's the source database for gnu make? I can view it with
> "make -p -f/dev/null" which is, useful, but I wish to edit it.
> - Jamie
>
If you will look at the output so produced, you will see all values
are default, from the environment, automatic, or builtin.

Edit the environment values by editing your shell's startup files.
Anything else you want to edit you have to put into a makefile

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
