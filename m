From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: ISO Image
Date: Thu, 11 Jul 2002 12:17:11 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020711101711.57010.qmail@web13106.mail.yahoo.com>
References: <3D2B16AC.C7ADA30@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D2B16AC.C7ADA30@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Oliver Ob <ob_ok@gmx.net>
Cc: linux-newbie@vger.kernel.org

 --- Oliver Ob <ob_ok@gmx.net> a =E9crit=A0: > This is
what I would like to do: Updating a backup
> then burn new.
>=20
> I copied the old cd using=20
> dd=3Dif... of=3D/image.iso
>=20
> Now I mounted that iso
> mount -o loop -t iso9660 image.iso /mnt/image
>=20
> It is there, no problems till here.
>=20
> Now it is mounted rw (according to mount)
> I want to copy one file INTO it.
>=20
> But I get "READ ONLY FS"
>=20
> So what do I do wrong here? It IS mounted rw
>=20

1. You should RTFM before experimenting.
2. ISO9660 is _not_ a writable filesystem.
It was developed for read only media.

> Please help, I need to get that done for tomorrow.
>=20

If you want to "write" to a ISO image:
1. mount the iso
2. copy the files you want to keep on that iso
in a directory. COpy the others file which you=20
want on that iso in that directory
3. man mkisofs
4. make the iso from that directory=20

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
