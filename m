From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: Question about "find -exec"
Date: Fri, 19 Jul 2002 11:16:30 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020719091630.91416.qmail@web13103.mail.yahoo.com>
References: <3D36DDA3.FA0F073C@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D36DDA3.FA0F073C@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Oliver Ob <ob_ok@gmx.net>, Lx Newbie List <linux-newbie@vger.kernel.org>

 --- Oliver Ob <ob_ok@gmx.net> a =E9crit=A0: > I want to
find and list all files with *.snm ending.
> find /mnt/c/ -name *.snm -exec ls
> does not work, the man page does tell me french
> fries.
>=20
> What am I missing?
>=20

try
find /mnt/c/ -name *.snm -exec ls \; -print

(No warranty that it will work :-)) )

> --=20
> *=BA=A4., =B8=B8,.=A4=BA*=A8=A8=A8*=A4        =3DOliver@home=3D      =
 =20
> *=BA=A4., =B8=B8,.=A4=BA*=A8=A8*=A4
> I     =20
> http://www.bmw-roadster.de/Friends/Olli/olli.html  =20
>    I
> I     =20
> http://www.bmw-roadster.de/Friends/friends.html    =20
>    I
> I       http://groups.yahoo.com/group/VGAP-93      =20
>            I
> I       mailto:VGAP-93-subscribe@yahoogroups.com   =20
>            I
> I     =20
> http://home.t-online.de/home/spacecraft.portal     =20
>    I
> >>>  Telek0ma iBBMS - now back online
> +49.4504.TRSi1/TRSi2   <<<
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at=20
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs=20

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
