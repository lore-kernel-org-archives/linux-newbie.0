From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: gnome-search-tool database updating
Date: Wed, 12 Feb 2003 12:24:11 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302121724.h1CHOBTA015000@hartford-hwp.com>
References: <5.1.0.14.1.20030211115354.020f95c0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211115354.020f95c0@celine> <5.1.0.14.1.20030212080530.0213a580@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030212080530.0213a580@celine> (message from Ray
	Olszewski on Wed, 12 Feb 2003 08:26:40 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Sorry, Ray, I misunderstood you on two counts.

> First, updatedb *is* the command to update the locate database. I
> already told you this, so asking *me* again what command you are
> looking for is a pointless exercise.

> Not having slocate on my systems, I have no way to check this
> ... but what does *its* man page tell you?)

Nothing about updating the database or how its done
automatically. That was the first thing I checked.

> Third, contrary to what you write below, you DID find a reference
> (either a script or an entry) to updatedb when you checked the cron
> scripts.

My second misunderstanding.

> Fourth, not knowing how you ran updatedb manually (what arguments?),
> or how you determined that you "wiped out the database",

Well, none of the options seemed relevant, and so ran the command bare
bones. I concluded that the database had been damaged because I reran
the same command in gnome find and now it returned nothing (rather
than a long list of hits as before). However, when I redid it again an
hour or two later, it worked, so my test was premature.

In short, the updatedb without option seems to update slocate,
although there's no feedback, and the effect is not immediately seen. 

I no longer get the error message, but my manual update probably just
obscures the original problem of no automatic update. At least I now
have a better idea of where to begin looking if and when the warning
pops up again. 

Thanks for your patience. 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
