From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Keyboard Freeze
Date: Fri, 7 Feb 2003 11:53:31 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020711533101.22365@unix.pa3gcu>
References: <03020616441800.22365@unix.pa3gcu> <200302060656.h166tqq05806@philonline.com> <200302070954.h179s8o08078@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302070954.h179s8o08078@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, pa3gcu@zeelandnet.nl
Cc: linux <linux-newbie@vger.kernel.org>

On Friday 07 February 2003 09:54, Peter wrote:
> The question still remains unsolved: why only in RH7.3 and not in RH7.2

Possably because widow managers are of difference, its not only Redhat but 
other distro's as well.
Obviously some peice of code changed and upsets X when dri is used.
Its a thing i have personaly have never had an issue with.
But then i dont use dri.

>
> Peter said:
> >> Several months ago when I changed from RH7.2 to RH7.3 the keyboard
> >> would
> >> freeze when trying to open certain games like tuxracer or invoking
> >> some
> >> screensavers or doing 'blank screen now' in screensaver window. >
> >>
> >> Now I read in Linux Gazette the suggestion to somebody with a similar
> >> problem, no type of video cards mentioned, to disable the line Load
> >> "dri" in XF86Config-4. I did it, changed back to SiS630 and it seems to
> >> work. Tuxracer comes up nicely and I can't produce any keyboard freeze
> >> with screensaver.
>
> pa3gcu@zeelandnet.nl said:
> > Yes, that is one of the biggest problems when using the drivers from
> > nvidia  as well, i had a friend with the same problem as you had, he
> > had the sis630  as well after disabling dri all was well.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
