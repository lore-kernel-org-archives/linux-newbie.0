From: Alan Bort <333101@personal.net.py>
Subject: Re: usleep
Date: 11 Jun 2003 21:45:39 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1055357138.5974.30.camel@Gandalf>
References: <5.1.0.14.1.20030611162513.01fc8040@celine>
	 <5.1.0.14.1.20030611173054.01f9d9a0@celine>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030611173054.01f9d9a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

QNX. do some research on that OS. Long time ago I heard that it was a
real time OS and that programming and running programs on it was VERY
much more accurate than the standard INTEL. I don't really know what yo=
u
want... if you wan precission then this might be your solution... if yo=
u
dont... then try the bes aproximation possible and use it...

El jue, 12-06-2003 a las 03:38, Ray Olszewski escribi=F3:
> At 08:17 PM 6/11/2003 -0400, Mark Hahn wrote:
> > > An i386 has a hardware timer that beats about 72 times per second=
, leaving
> >
> >well, it has several hardware counter/timers, but that setting
> >is not special (and isn't it only used by DOS?)
>=20
> Actually, I wrote that from memory (of timer limitations I encountere=
d when=20
> programming in VB on Windows 2000), and I think I got the actual numb=
ers wrong.
>=20
> > > me uncertain as to how accurate timings below 14 msec can be on t=
his
> > > hardware using the kernel's internal timer.
> >
> >timers can be set MUCH faster than that.
>=20
> In principle, yes. usleep() timers can be *set* to 1 usec. That's not=
 the=20
> question. The question is how *accurate* timers based on usleep() can=
 be at=20
> low settings.
>=20
> This experiment says they are not very accurate. I changed Lee's loop=
 to be:
>=20
>    for(i =3D 0; i < 500; i++)
>                  {
>             usleep(10);
>          }
>=20
> Now 500 x 10 =3D 5000 usec, or 1/200 seconds. But the loop actually t=
akes 10=20
> seconds to iterate. This implies that usleep()  has a minimum delay o=
f=20
> 10/500 seconds, or 20 msec, built into it (at least on my test system=
).
>=20
> My best guess is that this limitation derives either from the timer c=
ode in=20
> the Linux kernel or from the system hardware that code relies on.
>=20
>=20
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--=20
Alan Bort
Linux Registered User 298277 -Country Manager- [http://counter.li.org]
[ http://www.linuxquestions.org ] Username: Ciccio
[ http://es.tldp.org ]
Ciccio.-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
