From: Chris Omland <omland@minotaur.colorado.edu>
Subject: Re: Xwindows defaults
Date: Tue, 16 Jul 2002 11:37:22 -0600 (MDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207161134030.23956-100000@minotaur.colorado.edu>
References: <20020716170922.4808.qmail@web13106.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020716170922.4808.qmail@web13106.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Well, its pretty tuff, to understand exactly what is going on here, but=
 I
doubt its a problem with X, since root can log in and everything is
ok. What I would do is first go read documentation, but I doubt you wan=
t
to do that so then I would do:
"ls -a"
and delete all the .gnome directories in your users home directory. The=
n
try and restart gnome, this will give you a fresh start. Another method=
 is
as root add a new user like "testacct"
root@wherever$useradd testacct
then log in as the testacct, again do ls -a, and compare that listing t=
o
your home directory. Then as testacct, start gnome, and see if it
works. You can probally figure it out from here.
Hope that helps.=20
-Chris
On Tue, 16 Jul 2002, [iso-8859-1] szonyi calin wrote:

>  --- Chris Rodliffe <cR@clear.net.nz> a =E9crit=A0: >=20
> > This may not be quite the right list, but I'm
> > getting desperate.
> > My Gnome desktop has gone catatonic.   First I lost
> > the pager, then=20
> > the bar with the applets (can't remember its name).=20
> >  Quitting &=20
> > reloading X wouldn't bring it back.  I tried
> > switching window managers=20
> > (which is always a mistake) and now all I get when I
> > start X is (I think)=20
> > Sawmill, with icons for Nautilus and the Trash can.=20
> >  If I start Nautilus=20
> > the title bar is off the top of the screen and I
> > can't get it down. =20
> > The right mouse button works but the centre button
> > does nothing,=20
> > so I can't get any applications, the only way I can
> > get out of X=20
> > is Alt-Ctrl-F2. =20
> >=20
> > (If I log in as root, which happens to be configured
> > for KDE,=20
> > everything works).
> >=20
>=20
> So the problem seem to be Gnome ... :-)
>=20
> I think removing the gnome directories *in your
> home directory* _might_ make gnome behave until
> you experiment again :-)
>=20
>=20
> Also reading documentation before experimenting=20
> is a good idea :-)
>=20
>=20
>=20
> > OK, what I *want* to do at this stage is delete some
> > config files so=20
> > X will start with the default settings.   But I
> > don't want to delete=20
> > the wrong files and kill X altogether.   I have a
> > heap of emails I
> > don't want to lose, for starters.    Can anyone
> > help?  =20
> >=20
>=20
> I don't think you want to start with the default=20
> setting of X :-). Maybe with the default setting=20
> of Gnome :-)
>=20
> The default setting of X is to start twm. That's=20
> why distributions change it to something more
> "user friendly" :-)
>=20
> > cr
> > -
> > To unsubscribe from this list: send the line
> > "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at=20
> > http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> http://www.linux-learn.org/faqs=20
>=20
> =3D=3D=3D=3D=3D
> --
> The UNIX Hierarchy - Beginner
> - insecure with the concept of a terminal=20
> - has yet to learn the basics of "vi"=20
> - has not figured out how to get a directory=20
> - still has trouble with typing <RETURN> after each line of input
>=20
> ___________________________________________________________
> Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
> Yahoo! Mail : http://fr.mail.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
