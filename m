From: whitnl73@juno.com
Subject: Re: linux and tag lines
Date: Mon, 13 Jan 2003 23:45:38 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030114.000124.134688608.0.whitnl73@juno.com>
References: <Pine.LNX.4.33.0301131959240.6946-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.33.0301131959240.6946-100000@athame.gmpexpress.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: dashielljt@gmpexpress.net
Cc: linux-newbie@vger.kernel.org

On Mon, 13 Jan 2003, Jude DaShiell wrote:

> st:	linux-newbie@vger.kernel.org
>
> Can any of the character-based email programs run a script and write
> output from that script onto the ends of outgoing messages?  There's
> something some users are doing using perl and astrolog and outlook in
> windows I'd like to be able to get linux doing too.
>
>

Err, yes.  Pine has the options:

sending-filters=/usr/local/bin/trail
compose-send-offers-first-filter="yes"

Which I will use to put a `uname -a` on the end of this if it works.
Mutt has a send-hook, which looks similar.

If this works, here is the filter (I had the sed command to begin with,
I just added the uname.  Note this is a filter, the outgoing message is
piped through it, so your script must copy stdin to stdout and append
the sig.

#!/bin/sh
/bin/sed 's/ *$//g' $@
uname -a 1>&1



Lawson
--
---oops---
Linux giftie 2.4.13 #1 Tue Oct 30 22:04:20 EST 2001 i586 unknown



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
