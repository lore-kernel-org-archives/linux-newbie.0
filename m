From: Peter <pfheiss@philonline.com>
Subject: Keyboard Freeze
Date: Thu, 06 Feb 2003 14:55:52 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302060656.h166tqq05806@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Several months ago when I changed from RH7.2 to RH7.3 the keyboard would 
freeze when trying to open certain games like tuxracer or invoking some 
screensavers or doing 'blank screen now' in screensaver window.

A lot of suggestion I got from this list, none of which could solve the 
problem. I then changed the built-in video chip SiS630 to my old video card 
savage 4 and the spook was gone.

Now I read in Linux Gazette the suggestion to somebody with a similar problem, 
no type of video cards mentioned, to disable the line Load "dri" in 
XF86Config-4. I did it, changed back to SiS630 and it seems to work. Tuxracer 
comes up nicely and I can't produce any keyboard freeze with screensaver.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
