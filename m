From: Peter <pfheiss@philonline.com>
Subject: Minicom fails
Date: Thu, 19 Dec 2002 16:48:56 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212190848.gBJ8muZ03825@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

After I run a RH7.3 upgrade I can't access anymore minicom as a user.

I get the following message:
]$ minicom
Device /dev/ttyS0 lock failed: Operation not permitted.

No problem accessing it as su and /dev/ttyS0 is set to chmod a+rw.

How will I get my minicom back as a user?

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
