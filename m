From: Peter <pfheiss@philonline.com>
Subject: Re: Minicom fails
Date: Fri, 20 Dec 2002 15:00:04 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212200700.gBK704603967@philonline.com>
References: <200212190804.04757.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 19 Dec 2002 08:04:04 EST."
             <200212190804.04757.sotl155360@earthlink.net> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


 Peter said:
> After I run a RH7.3 upgrade I can't access anymore minicom as a user.
> I get the following message: ]$ minicom Device /dev/ttyS0 lock failed:
> Operation not permitted.


Thanks Frank!

The first thing I did was reading the man pages after the opening failure. I 
got nothing out of it.

What I did now was setting the group of /var/lock to user and I can open 
minicom again.

Was this the right way to do it?

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
