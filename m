From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: process time limit?
Date: Thu, 27 Jun 2002 09:22:53 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206270922.53605.linux-newbie@jimmo.com>
References: <200206262336.g5QNacfR020637@franklin.icok.net>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206262336.g5QNacfR020637@franklin.icok.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

This does not specifically address your question, but I think this is actually
the answer you wanted:

http://www.linux-tutorial.info/cgi-bin/display.pl?266&0&0&0&3

regards,

jimmo

On Thursday 27 June 2002 01:39, Jim Reimer wrote:
> I have a script run by cron once every half hour which
> gets a RADAR image, does some manipulation on the file,
> and stores it.  It's been running fine for a few weeks
> now.
>
> However, when I got home from work today, the computer
> was *very* sluggish, and 'ps' showed many many instances
> of both the script and 'giftopnm' (one of the programs
> used in the script).  I don't know what went wrong, but
> giftopnm was hanging and not allowing the script to
> complete.
>
> So - is there any way to limit the amount of time a
> cronjob (or any other job) can live?

-- 

---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
thing you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or forums
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
