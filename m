From: Haines Brown <brownh@hartford-hwp.com>
Subject: Self-inflating mystery file
Date: Sun, 30 Jun 2002 07:22:53 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206301122.g5UBMrK23946@langhans.hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@langhans.hartford-hwp.com

I began to experience some difficulties, which led to some snooping in
my system and the discover that my / partition had entirely filled.

The reason for this was the presence of two unknown files in /root:

  --label=.
  --label=test

The latter was empty, but the former was 395 Mb! I had to delete both,
and so far everything seems to be OK.

Anyone know what these files might be and why the first grew to a
gigantic size in perhaps a week's time? I'm running RH 7.2, and began
to experience the problem at about the time I installed a commercial
driver (OSS) for my Audigy sound card.

Haines

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
