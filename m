From: "Little, Chris" <Chris.Little@okdhs.org>
Subject: RE: Remote X
Date: Tue, 13 Apr 2004 12:29:56 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

perhaps even better is http://www.realvnc.com

depending on your distribution, you probably already have the server
installed.  at your linux box just type "vncserver"  it'll ask you for =
a
password for the session.

then from your webbrowser, http://your.linux.ip.address:580x where "x" =
is
the display number.

> -----Original Message-----
> From: Beolach [mailto:beolach@comcast.net]
> Sent: Tuesday, April 13, 2004 12:00 PM
> To: Juan Facundo Su=E1rez
> Cc: linux-newbie@vger.kernel.org
> Subject: Re: Remote X
>=20
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
> I've never done this, so I don't have much info for you.  But the one
> thing I can think of, is you might want to make sure you are using
> cygwin/X, not just cygwin.  cygwin is just a port of the standard *ni=
x
> console commands (ls, cp, cat, dd, etc.), whereas cygwin/X adds a por=
t
> of the X Window System, including an X Server.  For more info see
> <http://x.cygwin.com/>.
>=20
> Also note there a probably several other M$ Windows X Servers=20
> out there,
> but I personally have never used any, so I can't recommend=20
> one over any
> other.
>=20
> Good luck,
> Conway S. Smith
>=20
> Juan Facundo Su=E1rez wrote:
> > Hi, i could do it. I am really happy about that.
> >
> >  Now, what i need is to connect a window$ machine, as an X=20
> server, to a
> > session / window manager on a remote linux machine. I have=20
> heared about
> > cygwin / winx32. I am trying cygwin, but i dont understand=20
> how to set
> it up,
> > to use it, as an X server. Running the cygwin application, it opens
> > something too much like an "xterm". I can run many linux commands i=
n
> there.
> > I tried to "XFree86" or "startx" commands, but nothing.=20
> Have i install
> an x
> > server on cygwin to make it work?. Any help?.
> >
> >  Besides, i will try xwin32 too. If anyone can tell me=20
> something to "take
> > care" for using it, or any help, i will be very thaks.
> >
> >  See you !
> >
> <snip>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.2.3 (GNU/Linux)
>=20
> iD8DBQFAfBx3GL3AU+cCPDERAtYuAKDdTUsYHPx6anncsBCEuLIXxWgfPgCaA2qy
> C8DzqvJ88i/QWyUiORWkU98=3D
> =3DRi9v
> -----END PGP SIGNATURE-----
> -
> To unsubscribe from this list: send the line "unsubscribe=20
> linux-newbie" in
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
