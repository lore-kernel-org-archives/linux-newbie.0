From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: configuring sendmail to cope with AOL
Date: Thu, 22 May 2003 21:43:43 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305230143.h4N1hhRp019819@hartford-hwp.com>
References: <5.1.0.14.1.20030522140328.01fadb38@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030522140328.01fadb38@celine> (message from Ray
	Olszewski on Thu, 22 May 2003 14:26:35 -0700)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> You have a dynamic address? I wouldn't guess it from your whois and
> DNS records.

Yes. Each time I connect, I have a different address. I configure my
address to be 0.0.0.0.

> If you want to use the ISP's relay *only* for AOL and Netscape mail,
> that is harder, because the MTA now has to take different actions
> based on the destination. sendmail can do that too, but it requires
> more intricate configuration. You will need a real sendmail
> reference for this, or a real sendmail expert, since it is not a
> common setup.

That's what I was afraid of. Apparently much easier to do in other
MTAs. I've tangled with sendmail before and am now gun-shy. Since I'm
migrating from the distribution I've been using for many years to
another, it will offer an opportunity to jump from sendmail to another
MTA as well. Meanwhile I'll see if I can scrape up some specific
directions. 

Maybe something will come up in a google search.

> Some rule-of-thumb generalizations: Any ISP that sells service with
> dynamic addresses is likely to provide a forwarder.

Well, at least the thought is comforting.

Thanks.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
