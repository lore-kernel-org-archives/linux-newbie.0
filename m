From: "heisspf@skyinet.net" <heisspf@skyinet.net>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Fri, 24 Mar 2006 20:58:58 -0500
Message-ID: <380-22006362515858506@M2W055.mail2web.com>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks Ray,

>>Doesn't 'cat filename.txt > /dev/lp0' work
> 
> 
> no since /dev/lp0 is not an executable file.
> 

Ok my mistake. It does work under su, however, not as sudo which I had
tried only.

> as I have a hazy recollection that some versions of Slackware associated 
> lp1, not lp0, with the first parallel port.

It is lp0.

The reason I can't print not being connected with kernel 2.6.14 is, the way
I see it, that there is no provision for a parallel port on "local printer"
set-up, but only for "network printer".

May be I should try to fumble around the source, /usr/src/linux.

Regards

Peter



--------------------------------------------------------------------
mail2web - Check your email from the web at
http://mail2web.com/ .


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
