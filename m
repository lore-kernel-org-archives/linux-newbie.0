From: Chuck Gelm <nc8q@gelm.net>
Subject: 'nobody' is using my system !!!
Date: Thu, 26 Sep 2002 06:05:49 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D92DBFD.5D95F544@gelm.net>
References: <000401c26496$bf7d7f20$64fea8c0@pkrausxp> <3D921A64.7DBA9BC6@gelm.net> <200209251722.26680.wfoo@linuxvoodoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

G'day, Y'all:

 I awoke at 04:40 AM today when the internal speaker of my
Win2k boxen started sounding a tone.  While I was up shutting
it down, I noticed the HD activity lamp on my linux firewall
was indicating activity.  I selected the console window where
I leave 'top' running.  I found that 'find' and 'sort' were
being run by 'nobody'.  I've installed no 'at' or 'cron' jobs.
It is a Slackware v8.0, kernel 2.2.19, custom compile system.

'who' showed my console logins only.

Why was 'find' and 'sort' running at 4:40 AM ?

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
