From: Peter <heisspf@skyinet.net>
Subject: Separate Boot Partition
Date: Tue, 27 Jan 2004 11:15:54 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040127031554.6CE141C920@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

Presently my boot folder resides under root as /boot. If I decide to make a 
separate boot partition on my hard drive are then the following steps the 
right way?

-- Make a partition on the hard drive of 50 MB and format it.

-- in fstab put "/dev/hda3  /boot  ext3  defaults  0 0

-- move /boot to /tmp/boot

-- mount /boot

-- move files of /tmp/boot to /boot

If so do i have to make a new mkbootdisk?

Thanks & regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
