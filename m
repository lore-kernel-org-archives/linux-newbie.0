From: Eric Bambach <eric@cisu.net>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Tue, 11 Jan 2005 23:19:42 -0600
Message-ID: <200501112319.42894.eric@cisu.net>
References: <41E439F4.6030404@comcast.net>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E439F4.6030404@comcast.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jeremy Abbott <jkbullfrog@comcast.net>
Cc: linux-newbie@vger.kernel.org

Hi,
 I would say no. The X server isnt all too bloated if you use a lightwe=
ight=20
window manager . Firefox, Openoffice, Xmms all use toolkits that need a=
=20
backend X server to talk to. What gives you the impressions that X is t=
hat=20
bloated? I would say just bite the bullet and search out a simple windo=
w=20
manager. Sorry if anything doesn't make sense Im quite tired today, but=
 I=20
hope that answers your question.

On Tuesday 11 January 2005 02:41 pm, you wrote:
> This may seem really newbieish, but I have been running Gentoo for qu=
ite
> some time now.
>
> Is it possible to forego X altogether, and run things like firefox,
> thunderbird, etc through the framebuffer from a bashprompt, rather th=
an
> starting X and going from there.  The reason I ask, is I hate the blo=
at
> of Gnome and KDE, and don't have the time to learn to configure fvwm =
or
> fluxbox, etc.  In addition, the X server has a lot to it that I don't
> really need.  This is just a personal desktop, and aside from setting=
 up
> samba to share mp3's with my fiance's computer (across the room), I
> don't do provide any servers.  I also generally don't use any graphic=
al
> utilities for setting up or maintaing the system.  The only progs I
> really use in X are, Firefox, Thunderbird, XMMS, Openoffice, and
> occasionally KDevelop... mostly for editing my fvwm config.
>
> Thanks in advance for any help.
>
> Jeremy Abbott
> jkbullfrog@comcast.net
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
