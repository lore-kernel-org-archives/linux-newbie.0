From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Squid only on eth1
Date: Wed, 28 Jan 2004 14:29:04 +1100 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <10739.203.222.138.36.1075260544.squirrel@webmail.lovedthanlost.net>
References: <000701c3e524$66616c70$3401a8c0@iih.usyd.edu.au>
    <4011C8740000178F@mail-bcm02.alestra.net.mx>
Reply-To: james@lovedthanlost.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4011C8740000178F@mail-bcm02.alestra.net.mx>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "rgomez@bancomer.com" <RGOMEZ@bancomer.com>
Cc: linux-newbie@vger.kernel.org

> Here is the information you need:
> My machine is Pentium 400Mhz - 128 MB RAM
>
> $ uname -a
> Linux naboo 2.4.20-8 #1 Thu Mar 13 16:42:56 EST 2003 i586 i586 i386
> GNU/Linux
>
> $ rpm -q squid
> squid-2.5.STABLE1-2
>
> My Internet connection is a T1 maybe more...

Hi

When you asked the previous question about limiting squid to one interface
I provided a fairly simple - a RTFM simple - answer.  As to your broader
problems squid is a complex beastie.  Without digging into your config
(especially your squid.conf) and your network setup I can't explain why
you are getting 60 second + delays from squid.  As I recommended I suggest
you try the Squid FAQ and mailing list on http://www.squid-cache.org/

Regards

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
