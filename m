From: Andrew <ald2@arrakis.es>
Subject: scsi hdparm
Date: Thu, 18 May 2006 06:06:16 +0200
Message-ID: <446BF2B8.4090201@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

My SCSI hd (DDRS 34560) is described by Hitachi as

7200 RPM
'read seek time' 7.5ms

My IDE hd (ST320410A, ATA) is described by Seagate as

5400 RPM
'average read time' 9.9ms

But hdparm -tT reports slower speeds for the scsi. Does this make sense? 
Are my dreams of improved video performance shattered?

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
