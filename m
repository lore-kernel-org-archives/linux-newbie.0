From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: ISO Image
Date: Fri, 12 Jul 2002 14:37:24 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020712123724.19978.qmail@web13104.mail.yahoo.com>
References: <3D2E76E2.A74A2D@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D2E76E2.A74A2D@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Oliver Ob <ob_ok@gmx.net>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

 --- Oliver Ob <ob_ok@gmx.net> a =E9crit=A0: > szonyi
calin schrieb:
> >=20
> >  --- Oliver Ob <ob_ok@gmx.net> a =E9crit : > This is
> > what I would like to do: Updating a backup
> > > then burn new.
> > >
> > >
> > > Now it is mounted rw (according to mount)
> > > I want to copy one file INTO it.
> > >
> > > But I get "READ ONLY FS"
> > >
> > > So what do I do wrong here? It IS mounted rw
> > >
> >=20
> > 1. You should RTFM before experimenting.
> > 2. ISO9660 is _not_ a writable filesystem.
> > It was developed for read only media.
>=20
> Even though it is mounted RW (!) according to mount
> ?=20

Well it's pretty strange that mount says it's rw
because AFAIK you the ISO 9660 filesystem wasn't
 designed as a normal filesystem

Mount does pretty strange things. :-)

Calin

=3D=3D=3D=3D=3D
--
The UNIX Hierarchy - Beginner
- insecure with the concept of a terminal=20
- has yet to learn the basics of "vi"=20
- has not figured out how to get a directory=20
- still has trouble with typing <RETURN> after each line of input

___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
