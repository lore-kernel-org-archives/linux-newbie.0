From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: PPP in Slackware
Date: Tue, 1 Apr 2003 19:37:17 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03040119371701.04891@unix.pa3gcu>
References: <200304010847.h318lvW02484@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304010847.h318lvW02484@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

On Tuesday 01 April 2003 08:47, Peter wrote:
> Thanks Ray,
               ^^^ Ray,? I belive i was the one who said i use multiple 
sessions with KPPP and i did mention there is also a work alike program under 
GNOME.

> I am aware of kppp as well as of gnome-ppp with both I can connect only to
> one ISP in SW8.0. If I try to connect to the second ISP I get

As Ray has explained quite well i have no futher comments more as to say use 
KPPP, it will do what you want.

>
> tail messages:
>
> Apr  1 10:33:19 philonline pppd[476]: pppd 2.4.1 started by pfheiss, uid
> 500 Apr  1 10:33:19 philonline pppd[476]: Using interface ppp0
> Apr  1 10:33:19 philonline pppd[476]: Connect: ppp0 <--> /dev/ttyS0
> Apr  1 10:33:31 philonline pppd[476]: Remote message: Request Denied
> Apr  1 10:33:32 philonline pppd[476]: Connection terminated.
> Apr  1 10:33:32 philonline pppd[476]: Exit
>
> tail syslog:
>
> 1 10:33:31 philonline pppd[476]: PAP authentication failed
>
> If I do a pppsetup for the second ISP I then can connect to this one,
> however, not anymore to the first one and get the same messages.
>
> I deleted all the files created with pppsetup in /etc/ppp edited pap- and
> chap-secrets, the same, no conncetion to either the first or the second
> ISP, same above messages using either kppp or gnome-ppp
>
> Where is the dog buried?
>
> Regards
>
> Peter
>
>
>
>
>
>
>
>
>
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
