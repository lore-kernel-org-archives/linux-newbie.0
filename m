From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Keyboard Freeze
Date: Thu, 6 Feb 2003 16:44:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020616441800.22365@unix.pa3gcu>
References: <200302060656.h166tqq05806@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302060656.h166tqq05806@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux <linux-newbie@vger.kernel.org>

On Thursday 06 February 2003 06:55, Peter wrote:
> Several months ago when I changed from RH7.2 to RH7.3 the keyboard would
> freeze when trying to open certain games like tuxracer or invoking some
> screensavers or doing 'blank screen now' in screensaver window.
>
> A lot of suggestion I got from this list, none of which could solve the
> problem. I then changed the built-in video chip SiS630 to my old video card
> savage 4 and the spook was gone.
>
> Now I read in Linux Gazette the suggestion to somebody with a similar
> problem, no type of video cards mentioned, to disable the line Load "dri"
> in XF86Config-4. I did it, changed back to SiS630 and it seems to work.
> Tuxracer comes up nicely and I can't produce any keyboard freeze with
> screensaver.

Yes, that is one of the biggest problems when using the drivers from nvidia 
as well, i had a friend with the same problem as you had, he had the sis630 
as well after disabling dri all was well.

Too be honest i did not see or may have ignored your messages when you had 
that problem. I do however remember seeing something about dri in the sis 
doc's, in which doc, or where i saw it i cant remember so it is |possably" 
documented, altho' please dont quote me on that.

>
> Regards

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
