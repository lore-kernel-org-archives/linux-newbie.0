From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: starting and stopping networking
Date: Mon, 5 Jan 2004 00:55:24 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00a401c3d33f$bfaa1120$680410ac@pcinstru1>
References: <5.1.0.14.1.20040104152313.01f08b00@celine> <Pine.LNX.4.53.0401010532030.589@grinch.ro> <Pine.LNX.4.58.0312311325080.465@debian-box> <Pine.LNX.4.53.0401010532030.589@grinch.ro> <5.1.0.14.1.20040101154809.02021888@celine> <Pine.LNX.4.58.0401041431470.681@debian-opt> <Pine.LNX.4.53.0401042248010.876@grinch.ro> <Pine.LNX.4.58.0401041503140.3345@localhost> <Pine.LNX.4.53.0401042316540.10120@grinch.ro> <5.1.0.14.1.20040104152313.01f08b00@celine> <5.1.0.14.1.20040104162337.01f088a8@celine> <1073272291.2909.14.camel@CicciuX>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi, i have used debian almost two years, woody and sid. Debian don't us=
es
service xxxx start/stop. It was my first trouble migrating from mandrak=
e.
Instead, debian uses /etc/init.d/xxx start/stop. For example, in
redhat/mandrake, to run apache was: service apache start, in debian:
/etc/init.d/apache start.

And, /etc/init.d/networking start/stop, was what i used to get up and d=
own
my network interfaces. Allways worked for me.

----- Original Message -----
=46rom: "Alan Bort" <333101@personal.net.py>
To: "Ray Olszewski" <ray@comarre.com>
Cc: "Linux Newbie" <linux-newbie@vger.kernel.org>
Sent: Monday, January 05, 2004 12:11 AM
Subject: Re: starting and stopping networking


| There should be a tool to manage system services, for example, when y=
ou
| run apache as standalone, you can do 'service apache stop'. I'll ask =
a
| few debian gurus over here and post any idea they give me.
|
| Sorry.
|
| El dom, 04-01-2004 a las 21:28, Ray Olszewski escribi=F3:
| > At 08:51 PM 1/4/2004 -0300, Alan Bort wrote:
| > >/sbin/service, I know it doesn't work in SuSE, I never used Debian=
, I
am
| > >basing this on redhat-like distributions.
| >
| > Right. Just to be clear, normal Debian installs do not include
| > /sbin/service . The app name is too generic for a reasonable search=
 of
the
| > Debian package database, but I'd bet it is something peculiar to Re=
d Hat
| > and a few of its close derivatives ... but not SuSE, Debian, or
Slackware,
| > the three main distros, these days, with no roots in Red Hat.
| >
| > Remember that the original question in this thread was specific to
| > Debian-Sid, posed by someone whose prior experience was with Slackw=
are.
| >
| >
| > >El dom, 04-01-2004 a las 20:26, Ray Olszewski escribi=F3:
| > > > At 07:32 PM 1/4/2004 -0200, Alan Bort wrote:
| > > > >why not just service network stop/start????
| > > >
| > > > Because it won't work.
| > > >
| > > > What distribution are you basing this suggestion on? Not Debian=
-Sid,
I
| > > > think ... I've never heard of it, and I just tried it on one of=
 my
systems
| > > > and found that "serv"+TAB offer me no completion possibilities.
| > [...]
| >
| >
| >
| > -
| > To unsubscribe from this list: send the line "unsubscribe linux-new=
bie"
in
| > the body of a message to majordomo@vger.kernel.org
| > More majordomo info at  http://vger.kernel.org/majordomo-info.html
| > Please read the FAQ at http://www.linux-learn.org/faqs
| --
| Alan Bort
| Personal:       +595 (0)971 333 101
| Fax:            +595 (0)21 606 967
| ICQ-UIN:        73799272
| Jabber contac: cicciux@jabber.org
| =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
| Linux Registered User 298277 -Country Manager- [http://counter.li.org=
]
| [ http://www.linuxquestions.org ] Username: Ciccio
| [ http://es.tldp.org ]
| =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
| Asuncion - Paraguay
| Ciccio.-
|
| -
| To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
| the body of a message to majordomo@vger.kernel.org
| More majordomo info at  http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs
|

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
