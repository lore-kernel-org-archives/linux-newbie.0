From: Alan Bort <333101@personal.net.py>
Subject: Re: starting and stopping networking
Date: Mon, 05 Jan 2004 00:11:31 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073272291.2909.14.camel@CicciuX>
References: <5.1.0.14.1.20040104152313.01f08b00@celine>
	 <Pine.LNX.4.53.0401010532030.589@grinch.ro>
	 <Pine.LNX.4.58.0312311325080.465@debian-box>
	 <Pine.LNX.4.53.0401010532030.589@grinch.ro>
	 <5.1.0.14.1.20040101154809.02021888@celine>
	 <Pine.LNX.4.58.0401041431470.681@debian-opt>
	 <Pine.LNX.4.53.0401042248010.876@grinch.ro>
	 <Pine.LNX.4.58.0401041503140.3345@localhost>
	 <Pine.LNX.4.53.0401042316540.10120@grinch.ro>
	 <5.1.0.14.1.20040104152313.01f08b00@celine>
	 <5.1.0.14.1.20040104162337.01f088a8@celine>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040104162337.01f088a8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ray Olszewski <ray@comarre.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

There should be a tool to manage system services, for example, when you
run apache as standalone, you can do 'service apache stop'. I'll ask a
few debian gurus over here and post any idea they give me.

Sorry.

El dom, 04-01-2004 a las 21:28, Ray Olszewski escribi=F3:
> At 08:51 PM 1/4/2004 -0300, Alan Bort wrote:
> >/sbin/service, I know it doesn't work in SuSE, I never used Debian, =
I am
> >basing this on redhat-like distributions.
>=20
> Right. Just to be clear, normal Debian installs do not include=20
> /sbin/service . The app name is too generic for a reasonable search o=
f the=20
> Debian package database, but I'd bet it is something peculiar to Red =
Hat=20
> and a few of its close derivatives ... but not SuSE, Debian, or Slack=
ware,=20
> the three main distros, these days, with no roots in Red Hat.
>=20
> Remember that the original question in this thread was specific to=20
> Debian-Sid, posed by someone whose prior experience was with Slackwar=
e.
>=20
>=20
> >El dom, 04-01-2004 a las 20:26, Ray Olszewski escribi=F3:
> > > At 07:32 PM 1/4/2004 -0200, Alan Bort wrote:
> > > >why not just service network stop/start????
> > >
> > > Because it won't work.
> > >
> > > What distribution are you basing this suggestion on? Not Debian-S=
id, I
> > > think ... I've never heard of it, and I just tried it on one of m=
y systems
> > > and found that "serv"+TAB offer me no completion possibilities.
> [...]
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
Personal:       +595 (0)971 333 101
=46ax:            +595 (0)21 606 967
ICQ-UIN:        73799272
Jabber contac:	cicciux@jabber.org
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Linux Registered User 298277 -Country Manager- [http://counter.li.org]
[ http://www.linuxquestions.org ] Username: Ciccio
[ http://es.tldp.org ]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Asuncion - Paraguay
Ciccio.-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
