From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Making APM more accurate
Date: Fri, 6 Sep 2002 19:32:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020906173248.GA24625@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

Is there a way to make apm's or apmd's estimates of the time left on a battery charge more accurate?

I just booted my laptop (a Sony VAIO PCG-C1XS with the stock hardware) after several days of not having used it.  APM reported as I logged in that I had 39% battery charge left and 136 minutes of use remaining.  I wish that were true, but based on experience, with this older battery I can expect about 20 to 25 minutes charge.  Since I am using a wireless card, the usable time is actually significantly lower, and I acknowledge and accept that.  That is not the issue.

The problem is, that as the charge decreases, the time remaining on the charge becomes more and more unrealistic.  For example, I know have 21% charge remaining and that equates out to 89 minutes, according to apm.  I have gone from 136 minutes remaining to 89 minutes remaining in the space of about 7 minutes.  Is there any way to get apm to accurately calculate the rate of discharge?  To what extent does this depend on my laptop's BIOS?

Cheers,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
