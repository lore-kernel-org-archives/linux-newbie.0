From: Jim Limmer <jim@heem.org>
Subject: Postfix Transport question
Date: Sun, 15 Jun 2003 18:49:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EECF7EA.2010206@heem.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org



It seems more and more ISP's and companies are beginning to block IP's 
on the MAPS DUL - which I bet blocks more legit mail then it does spam, 
but I suppose each ISP has it's right to choose
what mail to accept and reject. Anyway, I grow tired of manually adding 
these to the transport file, and I don't want to resort to relaying ALL 
my mail through my ISP's mail server.

So, my question, Is it possible to configure postfix to behave in such a 
fashion that if it gets a 550 error, it will try again, this time 
relaying through a predetermined host?

Thanks,


-Jim


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
