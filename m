From: Peter <pfheiss@philonline.com>
Subject: Re: 'nobody' is using my system !!!
Date: Sat, 28 Sep 2002 09:57:34 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209280157.g8S1vZh01494@philonline.com>
References: <200209272147.g8RLlLv21054@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "27 Sep 2002 00:00:00."
             <200209272147.g8RLlLv21054@ev6.be.wanadoo.com> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

It's in the /etc/crontab file where you can set the time for running those 
various updates or use anacrontab for which you must enable the daemon. I too 
switch my computer off at night and I ended up with monstrous files in 
/var/log since the log rotates were set at 4 in the morning and therefore 
never happened.
There is a file where you can set what log-rotate will do such as to gzip the 
files I only can't remember now where that file is.

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
