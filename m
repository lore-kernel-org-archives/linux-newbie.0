From: Jim Reimer <wa5rrh@arrl.net>
Subject: process time limit?
Date: Wed, 26 Jun 2002 18:39:11 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206262336.g5QNacfR020637@franklin.icok.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have a script run by cron once every half hour which
gets a RADAR image, does some manipulation on the file,
and stores it.  It's been running fine for a few weeks
now.

However, when I got home from work today, the computer
was *very* sluggish, and 'ps' showed many many instances
of both the script and 'giftopnm' (one of the programs
used in the script).  I don't know what went wrong, but
giftopnm was hanging and not allowing the script to
complete.

So - is there any way to limit the amount of time a
cronjob (or any other job) can live?

Hints appreciated...

-jdr-
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
