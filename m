From: Alan Bort <333101@personal.net.py>
Subject: Re: su fails
Date: 15 Jul 2003 13:06:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net>
References: <3F133105.7010309@bcgreen.com>
	 <5.1.0.14.1.20030714080202.01ef9e68@celine>
	 <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es>
	 <200307142023.43039.pa3gcu@zeelandnet.nl>
	 <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com>
	 <5.1.0.14.1.20030715074706.01faa538@celine>
	 <oprsc1u8ichmmv6x@smtp.arrakis.es>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsc1u8ichmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Well... I think bash actually has a builtin su... so if you reinstall
bash (not a very big package anyway)... it might help. since you've
already installed shadow again...

Anyway... I agee with the (quote)'I'd just load a new OS and migrate th=
e
user data over to it.'(/quote) idea...

El mar, 15-07-2003 a las 12:38, Andrew Langdon-Davies escribi=F3:
> >>> It sounds to me like you've been rooted, and somebody installed
> >>> a trojan.  I'd do a full hunt for signs of a rootkit. When in
> >>> doubt (especially if there are ony a few people on your system),
> >>> I'd just load a new OS and migrate the user data over to it.
> >
> > I don't want to sound like Pollyanna, but interpreting your initial=
=20
> > trouble report as evidence of a breakin seems to me like an enormou=
s=20
> > leap.
> >> I thought reinstalling shadow had put everything right, but there =
are=20
> >> still hiccups. For example, although I can now su again --that is,=
 it=20
> >> now recognises the password-- if I give the wrong password I still=
 get=20
> >> just 'sorry'.
> >
> > I presume you mean "Sorry."
>=20
> I do indeed.
>=20
> > Do you recall if you used to get a response more like the one Richa=
rd and=20
> > I posted here?
>=20
> I can't remember. In a similar situation Slackware 7.1 does give a lo=
nger=20
> response.
>=20
> >> Lilo failed to load again and I have had to reinstall it.
> >
> > Without details of your setup, this one is impossible to diagnose. =
But=20
> > why would a rootkit mess with the bootloader?
>=20
> I'll leave that one till I've had a chance to try it again.
> >
> >> And I get a very strange message in my user .xsession-errors file.=
 It=20
> >> says:
> >> 'stderr is not a tty - where are you?'
> >
> > Context, please. Is that the full line? How do you normally run X? =
What=20
> > userid?
> This one bugs me a bit. That's the complete message. It turns up twic=
e=20
> (repeated) in the .xsession-errors file in my home directory. X is st=
arted=20
> by xdm from rc.4. It starts with a login screen and I log in as norma=
l=20
> user. I use the Window Maker window manager.
>=20
> >
> >> GRC reports most ports as stealthed and 113 IDENT and 5000 UPnP as=
=20
> >> closed.
> >
> > Does it report ANY ports as open?
> No
>=20
> What does "netstat -ln" report?
> Nothing that looks suspicious to me, but I'll study the manual first =
of=20
> all.
> One more thing: as normal user I also found I couldn't mount floppies=
 or=20
> cds (in spite of the 'user' option in fstab) Reinstalling the util-li=
nux=20
> packet has put that right. I think I put one very large foot in the w=
orks,=20
> nothing more sinister. No-one else has physical access to the system
> Thanks for your help,
> Andrew=20
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
