From: ":.d:.i:.z:." <nacht@widerstand.org>
Subject: RE: ADSL (pptp [ver BCAA]) and PPPD connection problem.
Date: Sun, 12 May 2002 19:42:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GJEFIFJJJFEKABEMHGFCKEGJDEAA.nacht@widerstand.org>
References: <5.1.0.14.2.20020512171613.009f8e00@pop.gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.2.20020512171613.009f8e00@pop.gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eNTi <nt-@gmx.de>, linux-newbie@vger.kernel.org

i'm not sure if you've read this apage or not,

the UK has been using the Alcatel USB modem for awhile now for home users,
and alcatel have proven to be quite helpful and helping the OS community to
provide drivers for Linux.

You can find a comprehensive resource for the Linux installation
http://benoit.papillault.free.fr/speedtouch/index.en.php3

hopet hat helps.

pieces

.d.


> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org
> [mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of eNTi
> Sent: Sunday, May 12, 2002 4:18 PM
> To: linux-newbie@vger.kernel.org
> Subject: Re: ADSL (pptp [ver BCAA]) and PPPD connection problem.
>
>
> i found something. it seems i need to patch my kerneln with the mppe
> protocol (kind of compression, i think). as well as i need a special
> ppp-package, that also contains mppe. i'll try this one out and report my
> findings to you.
>
> At 05:07 PM 5/12/2002 +0200, you wrote:
> >i'm from austria, and got the packages my provider (an many others)
> >recommend. it's called pptp and equals (or better, is newer
> than) pppoe. i
> >have to start the connecton by calling my adsl-modem ->"pptp alcatel"
> >(entry in /etc/hosts -> alcatel 10.0.0.138) and the connection is beeing
> >established (pptp message). but no pppd is running and pppd
> SHOULD be run
> >by pptp.
> >
> >At 07:54 AM 5/12/2002 -0700, you wrote:
> >>How are you *trying* to start pppd? With ADSL, you normally
> need to use a
> >>PPPoE package like the one from Roaring Penguin (in Debian Potato, it's
> >>package pppoe, and I expect the name in Woody is the same).
> >>
> >>At 01:50 PM 5/12/02 +0200, Alexander Jenisch wrote:
> >> >hi all.
> >> >
> >> >i lately changed to adsl and encountered some problems with
> pptp and pppd
> >> >under debian (woody):
> >> >pptp starts and stays in background, calling pptp_mgr (listed
> when typing
> >> >ps -uax) but pppd won't be started by pptp as inteded.
> >> >to install both latest builds of pptp and pppd i got the sources and
> >> >compiled them myself. i configured pppd as written in various
> howtos and
> >> >don't think that i made any mistakes. though i cannot even check them
> >> >because pppd won't start. any guess how to set up pppd with a
> adsl modem
> >> >(alcatel speed touch) by hand? my kernel is 2.4.18 (with
> ppp), and the adsl
> >> >modem has 10.0.0.138 (default) as ip. it's connected to a
> switch and from
> >> >there to my linux machine.
> >> >in windows me it works, though with some problems, when
> setting static dns.
> >> >any guesses?
> >>
> >>
> >>
> >>--
> >>------------------------------------"Never tell me the odds!"---
> >>Ray Olszewski                                        -- Han Solo
> >>Palo Alto, CA                                    ray@comarre.com
> >>----------------------------------------------------------------
> >
> >---------------------------
> >Alexander Jenisch
> >---------------------------
> >
> >-
> >To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >Please read the FAQ at http://www.linux-learn.org/faqs
>
> - eNTi ()
> --------------------
> lisp was found by "@"
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
