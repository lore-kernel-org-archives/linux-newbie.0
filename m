From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: HowTo: Fortifying a internet connected Linux server?
Date: Mon, 27 May 2002 15:30:46 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02052715304605.01212@unix.pa3gcu>
References: <FC79D1F4C922D511983400104BC303880195A1@DELL1>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <FC79D1F4C922D511983400104BC303880195A1@DELL1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ola Theander <ola.theander@connective.se>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

On Monday 27 May 2002 14:57, Ola Theander wrote:
> Dear subscribers.
>
> I'm currently setting up a home network which will have a Linux box acting
> as a gateway/firewall, connected to the Internet, for my internal network.
> The gateway computer will also have servers for the following services:
> HTTP, SMTP and DNS.
>
> My question is, is there any good documentation, books or on-line, about
> how to setup and secure an Internet exposed Linux server? The server will
> run SuSE Linux 8.0, kernel 2.4.18.

My thought's, i expect Ray and Lawson will chip in as well.

Documentation on a secure server, i would be suprised if there was not an URL 
somewhere, however i know not of one.

If i was doing what you want to do i would make sure "all" services such as 
finger, telnet, ftp, talk, ntalk, rlogin, actually any server "other" that 
you mentioned above should be closed down.

With IPtables/ipchains depending on which you choose, you can exclude 
forwarding, many uneeded UDP ports etc etc.

>
> I'm aware that it's not the best solution from a security point of view to
> expose e.g. a WWW-server directly to the internet, but this is a home
> network and currently I can't afford a more sophisticated solution.

Yes and no, opinions vary here, i know of a few providers who have www 
servers directly accessable but they are unix machines only serving www and 
nothing else.

In your case i would keep the www-page(s) simple, by that i mean as little as 
possable extern scripts, links and the likes.

>
> Kind regards, Ola Theander

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
