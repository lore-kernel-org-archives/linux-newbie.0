From: Peter <pfheiss@philonline.com> (by way of Peter
	<pfheiss@philonline.com>)
Subject: No More Logrotate
Date: Mon, 14 Apr 2003 16:16:08 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304141616.08613.pfheiss@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

after I upgraded to a newer RH7.3 version from KRUD Linux logrotate will not
rotate the log files any longer.

Instead I get the following error message in my mail:

error: syslog:1 duplicate log entry for /var/log/cron

Giving the command logrotate --force /etc/logrotate.conf I get the same error
message.

I have not changed /etc/logrotate.conf or crontab of root.

I checked the pertinent cron.daily/weekly files and can't find anything
 wrong.

How could this be resolved?

Thanks & regards
--
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
