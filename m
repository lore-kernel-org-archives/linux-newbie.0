From: Ray Olszewski <ray@comarre.com>
Subject: Re: crontab syntax ?
Date: Sat, 07 Jun 2003 16:09:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030607160253.01ed16a8@celine>
References: <20030529165407.A446@lnx2.w8mch.ampr.org>
 <200306042101.56986.pa3gcu@zeelandnet.nl>
 <20030605093027.A233@lnx2.w8mch.ampr.org>
 <200306052108.36121.pa3gcu@zeelandnet.nl>
 <20030607104727.A355@lnx2.w8mch.ampr.org>
 <5.1.0.14.1.20030607131805.01fe8a60@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE265D9.56EA90D0@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:23 PM 6/7/2003 -0400, Chuck Gelm wrote:
>Thanks, Ray:
>
>Odd, here is a segment of (*my*) 'man crontab' showing
>the example lines. Every example has 'date' as the 6th field. :-|

Yes. But the proposed entry you asked us about originally --

         5 6 7 * date /usr/local/src/ez/dyndns.conf

-- had "date" as the fifth field, NOT the sixth field. That is wrong. You 
can't just skip a field; you need (in this case) the * entry for it.

"date" is a standard Unix/Linux command, and the samples you referred to, 
which have it in the sixth field, simply use it as the name of the program 
to run ... just as you suspected.

>(*my* = slackware-8.0, kernel-2.2.19, firewall, ip-masq)
>Maybe the examples show how to run the 'date' program?
>
># MIN HOUR DAY MONTH DAYOFWEEK   COMMAND
># at 6:10 a.m. every day
>10 6 * * * date
[rest deleted]




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
