From: caszonyi@rdslink.ro
Subject: Re: can't startx X under non-root login
Date: Tue, 13 Jan 2004 23:19:24 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401132318440.997@grinch.ro>
References: <400410BB.9050308@rbcmail.ru> <4004142B.9000809@vip.cybercity.dk>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4004142B.9000809@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Cc: "Andrey V. Romanchev" <negative@rbcmail.ru>, linux-newbie <linux-newbie@vger.kernel.org>

On Tue, 13 Jan 2004, Flemming Greve Skovengaard wrote:

> XFree86 must permissions rws--x--x. XFree86 is found in /usr/X11R6/bin.
>

... or you can use Xdm to start the server (runlevel 4 on Slackware and 5
on others)

> Andrey V. Romanchev wrote:
> > subj
> >
> > log:
> >
> > Fatal server error:
> > xf86OpenConsole: Server must be suid root
> >
> > What's wrong?
> >
> > Thanks.
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> >
> > .
> >
>
> --
> Flemming Greve Skovengaard               Man still has one belief,
> a.k.a Greven                             One decree that stands alone
> <dsl58893@vip.cybercity.dk>              The laying down of arms
> 4168.08 BogoMIPS                         Is like cancer to their bones
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
