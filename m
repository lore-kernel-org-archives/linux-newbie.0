From: caszonyi@rdslink.ro
Subject: Re: undefined reference
Date: Tue, 17 Jan 2006 22:23:00 +0200 (EET)
Message-ID: <Pine.LNX.4.62.0601172221490.2812@grinch.ro>
References: <43CD4E31.3010001@arrakis.es>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43CD4E31.3010001@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

On Tue, 17 Jan 2006, Andrew wrote:

> Good evening,
>
> Trying to compile gqcam-0.8 or 0.9 on a Slackware-10.1 I get a lot of 
> 'undefined reference' messages about libpng.so. I have version 1.2.8 of 
> libpng (the latest).
>
> Does anyone know what is wrong?
>

you forgot (or the configure script forgot) to add libz when lining with 
libpng ?

try to run
LDFLAGS=-lz ./configure


--

"frate, trezeste-te, aici nu-i razboiul stelelor"
 				Radu R. pe offtopic at lug.ro

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
