From: Peter <pfheiss@philonline.com>
Subject: Strange Messages
Date: Tue, 27 Aug 2002 10:21:08 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208270221.g7R2L8N02148@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

As of late I am receiving every 10 minutes in my exmh-mail-program-inbox the 
following message:

$ cat ./ExMail/inbox/msg.ygB

From root  Tue Aug 27 10:00:00 2002
Return-Path: <root@philonline.com>
Received: (from root@localhost)
        by philonline.com (8.11.6/8.11.6) id g7R200m01274
        for root; Tue, 27 Aug 2002 10:00:00 +0800
Date: Tue, 27 Aug 2002 10:00:00 +0800
Message-Id: <200208270200.g7R200m01274@philonline.com>
From: root@philonline.com (Cron Daemon)
To: root@philonline.com
Subject: Cron <root@Peter> /usr/lib/sa/sa1 1 1
X-Cron-Env: <SHELL=/bin/sh>
X-Cron-Env: <HOME=/root>
X-Cron-Env: <PATH=/usr/bin:/bin>
X-Cron-Env: <LOGNAME=root>

/bin/sh: /usr/lib/sa/sa1: No such file or directory

What's the meaning of it and how can it be stopped?

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
