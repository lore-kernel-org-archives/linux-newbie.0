From: "Peter H." <heisspf@skyinet.net>
Subject: dma turned off
Date: Thu, 11 Nov 2004 11:13:27 +0800
Message-ID: <20041111031327.278F03F57C@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10

When I switch to kernel 2.6.7 I get the following error message on boot:

 * Warning: The dma on your hard drive is turned off. *
 * This may really slow down the fsck process. *

Apparently with the command "hdparm -d /dev/hda" dma is turned on.

Where in /etc/rc.d if that is the place do I put this command?

However, giving the command from the console as root after booting I get:

setting using_dma to 1 (on)
 HDIO_SET_DMA failed: Operation not permitted
 using_dma    =  0 (off)

How to resolve?

Thanks & regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
