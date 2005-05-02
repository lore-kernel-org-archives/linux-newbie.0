From: Andrew <ald2@arrakis.es>
Subject: Re: boot problem
Date: Mon, 02 May 2005 17:21:28 +0200
Message-ID: <42764578.7090305@arrakis.es>
References: <427617F5.1030307@arrakis.es> <4b0d6e0d05050206107fae523@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d05050206107fae523@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbies <linux-newbie@vger.kernel.org>

joy merwin monteiro wrote:

>Hi,
>
>Somewhere, your kernel parameters have been messed up.....
>it is using bash as init. at the lilo prmpt,
>
>init=/sbin/init
>
> as a parameter
>should do the trick, though it should have been the other way round,
>when you want to bypass the passwd, you do
>
>init=/bin/bash
>
>see if anything is added to lilo.conf..... can't think of any other place
>unless init has been replaced by bash :-(
>
>Joy
>  
>
It didn't work, but it seems to be on the right track as in fact 
/sbin/init doesn't exist.
Any idea how it can be created? Or why it wasn't?

TIA,

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
