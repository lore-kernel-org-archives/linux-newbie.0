From: Haines Brown <brownh@hartford-hwp.com>
Subject: partial installation problem?
Date: Thu, 8 Aug 2002 13:37:04 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208081737.g78Hb4K27164@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I needed to reinstall RedHat 7.2, but when up, I lost some
functionality (Mozilla would't start, some applets couldn't be added
to panel simply, etc.). 

Then I discovered that I had the following 49 Mb file in /:

     rhinstall-stage2.img

This almost sounds like material from the 2nd CD was dumped as an
image file into this location (perhaps truncated because of space
limitations) and never actually installed. 

If so, is it simpler to install the image file, or safer to delete it
and do an update (sic) from the CD disks?

How does the RH installation program work? Does it put such a file on
disk and then move its contents to appropriate locations? In this
case, would leaving it there and doing a simple update possibly
process it appropriately?

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
