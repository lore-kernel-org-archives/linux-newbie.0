From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Wed, 12 Jan 2005 00:00:53 +0000
Message-ID: <41E468B5.30008@comcast.net>
References: <41E439F4.6030404@comcast.net> <20050112085050.39aec35f@sarge>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050112085050.39aec35f@sarge>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: =?ISO-8859-1?Q?Ulrich_F=FCrst?= <heimwill@compuserve.de>

Ulrich F=FCrst wrote:

>Jeremy Abbott <jkbullfrog@comcast.net> wrote:=20
> =20
>
>>This may seem really newbieish, but I have been running Gentoo for
>>quite some time now.=20
>>
>>Is it possible to forego X altogether, and run things like firefox,=20
>>thunderbird, etc through the framebuffer from a bashprompt, rather
>>than starting X and going from there.  The reason I ask, is I hate th=
e
>>bloat of Gnome and KDE, and don't have the time to learn to configure
>>   =20
>>
>
>You can start your programs from the console with X and without
>KDE/Gnome by typing:
>$ xinit /usr/bin/firefox -- :0
>or
>$ xinit /usr/bin/oowriter -- :1
>
>But I don't know exactly what you have to install (of X I mean). I'd
>think if you have fvwm installed to get used to it, there should be
>everything you need.=20
>
>hth
>
>Ulrich
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie=
" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
> =20
>
I will try this, but am curious what the purpose of the -- :0 and the -=
-=20
:1 are.  Is this in the man pages for X?  Could this possibly be for=20
running more than one prog at a time, to switch between for the=20
console?  If so how?  Or should I also read the man page for this?

Thanks,
Jeremy Abbott
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
