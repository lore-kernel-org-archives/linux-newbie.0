From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Mplayer problem
Date: Tue, 31 May 2005 04:30:31 +0200
Message-ID: <200505310430.31548.pa3gcu@zeelandnet.nl>
References: <429ACFE2.7060109@verizon.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <429ACFE2.7060109@verizon.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jeremy Abbott <jkbullfrog@verizon.net>
Cc: linux-newbie@vger.kernel.org

On Monday 30 May 2005 10:33, Jeremy Abbott wrote:
> I have recied an errore while compiling mplayer recently.  Here is the
>
> message:
> : undefined reference to `XF86DGADirectVideo'
>
> libvo/libvo.a(vo_3dfx.o)(.text+0x50): In function `sighup':
> : undefined reference to `XF86DGADirectVideo'
>
> collect2: ld returned 1 exit status
> make: *** [mplayer] Error 1
>
> Any help regarding this situation would be appreciated.  I am currently
> running Xorg 6.8.2 with kernel 2.6.10.  I will soon be upgrading to 2.6.11.

I could be wrong but:
1) You have an incompatable libary installed (possably libXxf86dga)
2) You are trying to compile mplayer to support something which you may not 
need, run the configure program in the mplayer source as:

./configure --help
You can exclude certain video card support try excluding 3dfx support for one.

As i said i could be wrong.
A better place would be to visit 

http://mplayerhq.hu/homepage/design7/info.html#mailing_lists

Read the archives your answer may well be there somewhere.

> Thanks,
> Jeremy Abbott
> jkbullfrog@verizon.net
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
