From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: directory size measurement
Date: Tue, 6 Aug 2002 22:00:02 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208070200.g77202415000@hartford-hwp.com>
References: <5.1.0.14.1.20020806152943.02154a90@celine>
 <200208062211.g76MBYk13820@hartford-hwp.com>
 <5.1.0.14.1.20020806152943.02154a90@celine> <5.1.0.14.1.20020806172917.021954b0@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020806172917.021954b0@celine> (message from Ray
	Olszewski on Tue, 06 Aug 2002 17:38:21 -0700)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

I'm using this string to return a list of directories listed by the
size of their content, with the largest at the top. It's slow, but
works fine. The application Krusader has a menu option to measure the
space occupied by a directory's contents, but it does not seem
altogether stable. In any case, here's the string that was recommended:

du -s /<top directory>/* | sort -nr | head

Thanks for the help. The man du did not make -s clear enough for me to 
grasp its potential.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
