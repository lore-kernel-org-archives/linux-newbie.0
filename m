From: jdr@wa5rrh.org
Subject: Re: crontab syntax ?
Date: Sat, 07 Jun 2003 18:09:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE22A69.1198.A50291A@localhost>
References: <3EE265D9.56EA90D0@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3EE265D9.56EA90D0@gelm.net>
Content-description: Mail message body
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On 7 Jun 2003 at 18:23, Chuck Gelm wrote:

> Thanks, Ray:
> 
> Odd, here is a segment of (*my*) 'man crontab' showing
> the example lines. Every example has 'date' as the 6th field. :-|
> (*my* = slackware-8.0, kernel-2.2.19, firewall, ip-masq)
> Maybe the examples show how to run the 'date' program?
> 
> # MIN HOUR DAY MONTH DAYOFWEEK   COMMAND
> # at 6:10 a.m. every day
> 10 6 * * * date
> 

<snip>

Yeah, it's showing you how to run 'date' at various times and
intervals.

Here's a bit of what Red Hat's "man 5 crontab" says (for what it's worth):

The time and date fields are:

       field          allowed values
       -----          --------------
       minute         0-59
       hour           0-23
       day of month   1-31
       month          1-12 (or names, see below)
       day of week    0-7 (0 or 7 is Sun, or use names)


-jdr-
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
