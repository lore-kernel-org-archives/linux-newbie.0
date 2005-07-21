From: "Peter H." <heisspf@skyinet.net>
Subject: Fixing /etc/resolv.conf
Date: Thu, 21 Jul 2005 13:52:22 +0800
Message-ID: <200507210552.j6L5qNoH000634@meridian.ph>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

In slackware the file /etc/resolv.conf is updated on every reboot.

How can I stop that? I tried chattr +i and chmod -w w/o success.

The reason is that the nameserver address which is put into the file on every 
reboot is not the the one I am supposed to use according to the advise from my 
broadband ISP.

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
