From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Network and Apache Question
Date: Wed, 22 May 2002 18:20:15 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205221820151Q.27213@unix.pa3gcu>
References: <5.1.0.14.1.20020521192809.020f4600@celine> <200205220156.g4M1uKDn028220@smtp-server6.tampabay.rr.com> <5.1.0.14.1.20020522094113.02746ad0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020522094113.02746ad0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, jim@kc4hw.net, linux-newbie@vger.kernel.org

On Wednesday 22 May 2002 16:44, Ray Olszewski wrote:
> At 06:21 AM 5/22/02 -0400, Jim Johnson wrote:
> [...]
>
> > > If the problem is with rr.com, try running the service on a high port
> > > (8080 is a common choice) and port-forwarding that port to apache
> > > (either port 80 or port 8080 internally, depending on how flexible the
> > > Linksys router is about port forwarding).
> >
> >The Linksys allows port forwarding.  But this machine is enable as a DMZ
> >Host in the router.
> >
> >So if I enabled port 8080 (or another port) in httpd.conf, then it would
> >serve pages upon request to http://www.kc4hw.homelinux.net:8080?

Jim, i tryed the above URL, its working i got the standard apache "Its 
working page"..

>
> It should, if the Linksys is not set to block port 8080 and if all the
> other Apache settings are correct. At least the requests should *reach* the
> Apache server, and if they fail, you can consult the Apache logs (and this
> list) to figure out any remaining problems.
>
>
>
>
> --
> -----------------------------------------------"Never tell me the
> odds!"--------------
> Ray Olszewski					     -- Han Solo
> Palo Alto, California, USA				ray@comarre.com
> ---------------------------------------------------------------------------
>----------------
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
