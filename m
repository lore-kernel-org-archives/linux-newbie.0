From: Peter <heisspf@skyinet.net>
Subject: Moving Hard Drive
Date: Fri, 16 Jan 2004 18:56:30 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040116105630.D896B1C900@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I got myself a new larger hard drive which is presently a secondary master 
hdc. On it I have RH9 and SW9.1 the latter doing the booting with lilo.

I want to make now this drive the master drive by which I assume it will 
become hda.

Is it correct then that before doing the switch I will have to change in 
/etc/fstab and lilo.conf all what is labeled hdc to hda? Boot initially from a 
floppy into SW run lilo and I should be set with the new drive as master.

Thanks & regards
-- 
Peter





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
