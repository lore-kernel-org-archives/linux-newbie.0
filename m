From: Haines Brown <brownh@hartford-hwp.com>
Subject: Tripwire and LogWatch general info
Date: Wed, 30 Oct 2002 14:41:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210301941.g9UJfW502355@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

Root cron every day runs to programs, Tripwire and LogWatch. I'd like
to know more about them.

Tripwire apparently compares certain files against a database to
ensure file integrity. What files are checked? What's the point? Is it
to help protect against viruses? Is it entirely safe for me to enable
Tripwire? (root's cron tries to run it daily, but it says it has not
been initiated).

The LogWatch does report denied packets. I'd like to know what it all
means. Denial is good, but I don't know what's denied. What good is it
to know what IP tried without success to access my system. Usually
there is just one attempt, and I suppose that can be ignored. But at
what point should one become concerned? Or is the fact that LogWatch
is reporting it mean that I don't have to be concerned?

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
