From: Peter <heisspf@skyinet.net>
Subject: Re: Reverse DNS
Date: Tue, 24 May 2005 16:05:31 +0800
Message-ID: <200505240805.j4O85VMp002951@skyinet.net>
References: <42897ABC.4030506@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 16 May 2005 22:01:48 MST."
             <42897ABC.4030506@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org


heisspf@skyinet.net said:
> Since I have a broadband Internet connection I cannot send mail any longer to
>  addresses of @aol.com. An account that:

> Reverse DNS lookup for your IP address is failing.


Thanks to your advise Ray, I complained by to the Broadband Provider and they 
did fix it.

Before:
host 203.87.189.146
203.87.189.146 does not exist, try again

Now:

host 203.87.189.146
146.189.87.203.in-addr.arpa domain name pointer consvictoria-projg.meridian.ph.
189.87.203.in-addr.arpa.

and the mail to aol.com does not bounce any more.

ray@comarre.com said:
> At least here in the USA, most communities have more than one broadband
> supplier. Were I to face your problem, I would at least consider  changing
> who I got my broadband service from ... especially if requests  to fix the
> problem were ignored.

No in my world we have no choice. Even w/o reverse DNS I am thankful that 
somebody provides me with a BB.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
