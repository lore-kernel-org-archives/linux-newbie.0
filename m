From: Peter <pfheiss@philonline.com>
Subject: Re: gnome-search-tool database updating
Date: Thu, 13 Feb 2003 10:05:55 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302130205.h1D25tl02307@philonline.com>
References: <200302121401.h1CE1kFQ013620@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 12 Feb 2003 09:01:46 EST." 
 <200302121401.h1CE1kFQ013620@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com, linux <linux-newbie@vger.kernel.org>

Yes it seems the updatedb is not done automatically in RH up to 7.3. 
Therefore, I put in my su (root) crontab (crontab -e) the following lines:

00 13 * * * updatedb -e /mnt/dos,/mnt/window

25 17 * * 1 mount /mnt/window; updatedb -U /mnt/window -e 
/mnt/dos,/,/usr,/usr/local,/home -o /home/peter/windowdb >> /dev/null

30 17 * * 1 updatedb -U /mnt/dos -e /mnt/window,/,/usr,/usr/local,/home -o 
/home/peter/dosdb >> /dev/null

That way every day the data base is updated at 13 hour, except the dos and 
window partition and every Monday dos and window only are updated and put into 
a separate dos/window data base file.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
