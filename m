From: "Peter H." <heisspf@skyinet.net>
Subject: No Locate for User
Date: Mon, 25 Apr 2005 12:27:06 +0800
Message-ID: <200504250427.j3P4R6J5000324@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.1 kernel 2.4.29

I upgraded again Dropline Gnome from 2.8.3 to 2.10 this time with no problems 
regarding certain programs like gxine not opening.

However, I cannot use the command "locate" as a user any longer. I get the 
following error:

@~:$ locate fips
warning: locate: could not open database: /var/lib/slocate/slocate.db: 
Permission denied

As su there is no problem.

I did not do anything to this file in fact it has the same permissions as in 
my Fedora box where a user can do "locate" w/o problem just like before the 
upgrade in slack.  Updateddb is done daily by cron root.

:# ls -l /var/lib/slocate
total 4176
-rw-r-----  1 root slocate 4275159 2005-04-24 18:06 slocate.db

How to resolve?

Thanks & regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
