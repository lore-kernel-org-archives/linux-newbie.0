From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gnomecard Program lost
Date: Fri, 05 Dec 2003 21:42:23 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031205213650.0200a128@celine>
References: <Your message of "Fri, 05 Dec 2003 08:11:41 PST."  <5.1.0.14.1.20031205080910.02014e18@celine> <200312060408.hB647kx01452@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312060408.hB647kx01452@skyinet.net>
References: <Your message of "Fri, 05 Dec 2003 08:11:41 PST."  <5.1.0.14.1.20031205080910.02014e18@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:07 PM 12/6/2003 +0800, Peter wrote:
>Thanks Ray, I found gnomecard  as you suggested in gnome-pim in RH7.1 and not
>anymnore in RH7.3 of Krud Linux. Why would they leave-out such a nice program?
>
>I still wonder how my "/" partition could suddenly fill to 100% and not
>showing any unusual large or duplicate files. Is there a virus around?


Not that I've heard about. How much space are we actually talking about 
(100% of what capacity)? And how quick was "suddenly" (seconds? minutes? 
hours?)? These days, I never see this problem, but way back when, I saw it 
happen if logging got out of hand, so /var/log got full (assuming /var 
isn't a separate filesystem).

Since the system is reinstalled, suggesting diagnostics is a bit late. If 
it should happen again, use "du" to hone in on where the space is being 
gobbled up.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
