From: Eric Bambach <eric@cisu.net>
Subject: Re: Mouse grab and multiple desktops
Date: Tue, 15 Feb 2005 18:34:23 -0600
Message-ID: <200502151834.23936.eric@cisu.net>
References: <200502142121.54716.eric@cisu.net> <42120E84.4040000@comcast.net>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <42120E84.4040000@comcast.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jeremy Abbott <jkbullfrog@comcast.net>
Cc: linux-newbie@vger.kernel.org

On Tuesday 15 February 2005 09:00 am, you wrote:
> Eric Bambach wrote:
> >Hello,
> > I am not a newbie but its sort of a newbie question so here goes. N=
ote,
> > these are PHYSICAL X desktops, not the kde virtual ones.
> >
> >I run multiple desktops (seperate kde 3.3 desktops, not xinerama). I=
s
> > there either
> >
> >Some key combonation that will switch desktops?
> >ex. Working in desktop 1, push ctrl-foo -> mouse and context jumps t=
o #2
> >
> >Or
> >
> >Some key combonation that universally releases a mouse from SDL apps=
?
> >ex. Some games grab the mouse and I want to be able to release it to
> > naviagate to desktop 2, and then back to #1 where I would click and=
 the
> > app would re-grab the mouse. Think VMWare if any of you have used i=
t,
> > except with native fullscreen SDL apps.
> >
> >Thanks
>
> I'm pretty sure you can switch between instances of X running KDE (or
> any WM for that matter) by pressing:
>
> Ctl + Alt + F7-F10
>
> As far as the mouse goes, it should be free to do whatever on the oth=
er
> instances of X.

Thanks for the reply, perhaps my situation wasn't clear. It is two scre=
ens on=20
ONE X server with two video cards. CTRL-ALT- F(n) will obviously cause =
both=20
my desktop to go away ;)=20
=20
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
