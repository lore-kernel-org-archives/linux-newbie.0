From: "Ralica" <larry@podovinastilki.com>
Subject: Re: IMAP Error
Date: Fri, 13 Feb 2004 10:01:40 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001f01c3f207$9ca9ea60$0500a8c0@sea>
References: <20040212155431.GA10727@sevoog.kriation.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Armen Kaleshian <akaleshian@kriation.com>, linux-newbie@vger.kernel.org

Hi, Armen
> You could do one of two things:
>
> 1) Check /etc/ld.so.conf for /usr/lib; if it doesn't exist, add it, remove
your
> current /etc/ld.so.cache and run /sbin/ldconfig [OS dependent] to rebuild
the
> library cache on your system. Run configure again, and that should fix it.

I try it, but it didn't help. You were right /usr/lib was not in the path.
there is
something wrong with the installation may be. And I don't know the right
questions now

Thanks for the help


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
