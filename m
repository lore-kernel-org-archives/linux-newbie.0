From: Peter <heisspf@skyinet.net>
Subject: No Sound with Kernel 2.6.7
Date: Thu, 4 Nov 2004 16:59:34 -0500
Message-ID: <20041104165934.28971dba@Knoppix>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

Slackware10

When I installed the kernel 2.6.7 my sound was lost, the error message claiming it can not find module via82cxxx_audio.c. Checking /lib/modules/2.6.7/kernel/drivers there was no /sound folder.

I then copied ../2.4.26/../sound into ../2.6.7../drivers/ it did not change it still claimed it could not find my sound module after rebooting.

I then switched back to 2.4.26 and sound was back.

Could that be resolved and how?

A side benefit of the whole exercise was that all of a sudden starting kde programs such as kppp takes now only half the time than before I tried to switch kernels. It used to take an annoying 22 seconds, now it takes only 11. ???????????

Thanks & Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
