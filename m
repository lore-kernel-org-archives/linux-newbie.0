From: Amin <raihan@citech-bd.com>
Subject: Re: configuring sendmail to cope with AOL
Date: Fri, 23 May 2003 11:49:00 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <970.1053668940@localhost.localdomain>
References: <brownh@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Haines Brown <brownh@hartford-hwp.com> 
   of "Thu, 22 May 2003 21:43:43 -0400." <200305230143.h4N1hhRp019819@hartford-hwp.com> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In message <200305230143.h4N1hhRp019819@hartford-hwp.com>, Haines Brown writes:
> That's what I was afraid of. Apparently much easier to do in other
> MTAs. I've tangled with sendmail before and am now gun-shy. Since I'm
> migrating from the distribution I've been using for many years to
> another, it will offer an opportunity to jump from sendmail to another
> MTA as well. Meanwhile I'll see if I can scrape up some specific
> directions. 
> 
> Maybe something will come up in a google search.

Maybe Red Hat's Sendmail HOWTO will be of help:
http://www.redhat.com/support/resources/howto/RH-sendmail-HOWTO/book1.html.
I think their section devoted to the home user (Section 4.1)
is pretty good, it worked for me.

And about ISPs providing outgoing mail servers: I think they
do it.  You send your outgoing mail to, say, mail.isp.com,
or smtp.isp.com, and it gets relayed onwards.  Only you have
to make sure the messages appear to be from the address
you're getting from the ISP, hence masquerading (Section
4.1.2).  (Hopefully!) very simple.

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
