From: Ray Olszewski <ray@comarre.com>
Subject: Re: directory size measurement
Date: Tue, 06 Aug 2002 15:34:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020806152943.02154a90@celine>
References: <200208062211.g76MBYk13820@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208062211.g76MBYk13820@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>, linux-newbie@vger.kernel.org

At 06:11 PM 8/6/02 -0400, Haines Brown wrote:
>I need to address a situation in which somewhere, among thousands of
>directories and subdirectories, there's something taking up a lot of
>space.
>
>What I need is a utility something like this: it reports the size of
>the ten largest subdirectories of a specified directory. Seems to me I
>did that with a pie chart utility under OS/2.
>
>Is there such a thing for Linux? I'm running RH7.2.


I don't know of one. But will a list sorted by size serve your purposes? If 
so, you can use the "du" command for that. The relevant command is 
approximately this --

         du -s /somedirectory/*  | sort -nr

Leave off the "r" and the largest ones will be at the end instead of the 
beginning, which I find more convenient.

(BTW, I usually find "du -sh" easier to read, but done that way, the list 
doesn't sort right.)


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
