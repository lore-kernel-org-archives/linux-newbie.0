From: "Matthias Schweinoch" <matthias.schweinoch@epost.de>
Subject: Re: starting X with different XF86Configs
Date: Tue, 20 Aug 2002 16:30:41 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000d01c24856$2b22e650$0200a8c0@toybox>
References: <5.1.0.14.1.20020819153832.020ec500@celine> <5.1.0.14.1.20020819165442.020fa290@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James & Tatiana Miller <jamtat@aaahawk.com>, Linux <linux-newbie@vger.kernel.org>, Ray Olszewski <ray@comarre.com>

don't know if this is considered a "bad approach", but another way to do
this is to simply name your working XF86Config files appropriately and then
just create a symlink to whichever file it is your using.

matthias

> >What I'm having some trouble with is figuring out how to invoke one or
the
> >other XF86Config file when I start X. Any suggestions on how to go about
> >this?
>
> If that's not quite it, perhaps this is enough of a start that you can use
> the man system to track down the right way to pass this argument yourself.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
