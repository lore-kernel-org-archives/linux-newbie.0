From: Peter Gantner <peter.gantner@stud.uni-graz.at>
Subject: Re: user/e-mail name
Date: Wed, 3 Mar 2004 18:06:25 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403031759320.7124@scourge.crownest.net>
References: <5.1.0.14.1.20040303075430.01ff0478@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040303075430.01ff0478@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Wednesday, the 3rd of March, Ray Olszewski thusly spake:

> At 03:48 PM 3/3/2004 +0800, Peter wrote:
> >Hi,
> >
> >In Slackware9.1 my user name is peter and my e-mail address is heisspf@isp.net
> >
> >Apparently mail I send arrives From: peter@isp.net. Therefore, when the
> >recipient makes a "reply" the mail bounces since naturally peter@isp.net is
> >not found.
> >
> >My mail program is exmh.
> >
> >Can that be corrected w/o changing my user name?
> 
> Richard and Hal gave you good technical replies, but they missed one 
> possibility. This is a classic case for the use of a Reply-to: header in 
> your messages. You might want to see either if exmh supports that option, 
> or if you can substirute a different MUA that does.

Isn't that what the -f option to sendmail does? IIRC this sets the 
From: field to the specified name.

I know you can set the command the client uses to send mail in 
pinerc like this: sendmail-path=/usr/bin/sendmail -t -f my.realemail@isp.net
I'm sure similar is possible with mutt too.

It's still possible that the MTA munges or rejects this afterwards, 
but it should be a good start. 

hth,
	Peter G.

PS: note that I'm a different Peter! :)


-- 
"I do not think the way you think I think." 
    -- Kai, last of the Brunnen G
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
