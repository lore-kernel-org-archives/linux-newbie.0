From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Tue, 26 Nov 2002 09:38:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211261438.gAQEcFb11979@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <02112408515605.00286@unix.pa3gcu> <200211251840.gAPIee103296@hartford-hwp.com> <02112521502707.00286@unix.pa3gcu>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <02112521502707.00286@unix.pa3gcu> (message from pa3gcu on Mon,
	25 Nov 2002 21:50:27 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Richard,

My header in this reply looks clean, but I apologize if it does not go
out that way. 

> > I concluded from this that the boot process sets a value somewhere that
> > prevents X from starting. Perhaps an authentification problem, but the
> > log above sure offers no clue.
> 
> How's the hostname there,? 

No, hostname was the first thing I checked. It's the same
(hartford-hwp.com) for both root and user.

> and do you have a DNS server active running before 
> X starts up.?

Nope

> I remember once (now i come to think of it) having a simalr problem, it was a 
> bogus hostname, i placed it back to localhost and all was well.

I've suffered a lot from hostnames, but in this case, it was one of
the things I didn't touch.

I just installed Ximian, primarily to assess its functionality, but
also because it might shake something loose with my problem. Not only
didn't it do that, but despite all the signs of a successful install,
I don't seem to have it. The only change I can see is that a Mozilla
icon showed up in my panel. Otherwise there's no change in my desktop
or menuing. I used startx to startx, but was not told to do anything
else.  The whereis points only to /etc/ximian/ that holds a cookie.

Haines 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
