From: Mathias Peters <empy@onlinehome.de>
Subject: X problems after kernel build
Date: Wed, 14 Apr 2004 12:10:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407D0E07.50700@onlinehome.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

hi,

I am using debina sid on a thinkpad r40 with an ati radeon mobility 
5600. I was using kernel version 2.6.4 and I experiencend no errors. 
After recompiling the kernel linux is not booting into X anymore. kdm is 
still starting but log in fails with dmesg showing me "[drm 
radein_cp_init] *ERROR* radeon_cp_init calles without lock held". When I 
log in at console and startx, it works but with different fonts.
I compiled agp, ati, dri ant ati-dri directly into the kernel.
thanks to anyone
Mathias
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
