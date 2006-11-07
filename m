From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: connecting to the X-desktop with vnc
Date: Tue, 7 Nov 2006 01:11:50 -0700
Message-ID: <20061107011150.5bff8a45@mandalor.homelinux.net>
References: <Pine.LNX.4.64.0611062108060.28741@localhost>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary=Sig_ZpfqUcEniO0tw8mYjaCqoWv;
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0611062108060.28741@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: karthikv@Alum.Dartmouth.ORG
Cc: Newbie List <linux-newbie@vger.kernel.org>

--Sig_ZpfqUcEniO0tw8mYjaCqoWv
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 6 Nov 2006 21:17:03 -0500 (EST)
Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG> wrote:
> I installed the vnc suite of tools (both on the remote server, as
> well as the local client) where both machines run ubuntu-linux. I
> started the vncserver on the server using vncserver which gives:
>=20
> $ vncserver
>=20
> New 'bombur:1 (karthik)' desktop is bombur:1
>=20
> Starting applications specified in /home/karthik/.vnc/xstartup
> Log file is /home/karthik/.vnc/bombur:1.log
>=20
> I am able to connect from the client side using:
> $ vncviewer bombur:1
>=20
> This however opens up an xterm and is not the desktop that is running
> on bombur. I want to see the X-desktop that is running on the server.
> How do I go about doing this?
>=20
> Both client and server run xorg as the Xserver. Please let me know if
> more information is needed to help (such as kernels/xorg versions/vnc
> versions running on client/server).
>=20
>=20
> Thanks in advance,
>=20
> -K
>=20

The vncserver actually starts its own X server, rather than connecting
to the already running X server (hence the bombur:1, rather than
bombur:0).  To connect to the already running X server, you want to use
x11vnc instead of vncserver.  Most distributions should include it, or
you can get its source from <http://www.karlrunge.com/x11vnc/>.


Good luck,
Conway S. Smith

--Sig_ZpfqUcEniO0tw8mYjaCqoWv
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFFUD/KGL3AU+cCPDERAv4aAJwIiGDAQVlzZ56H7Jf8KmVIMszSRQCfVNVQ
wAY2VK/E14yNBIwNIyK7POw=
=uFFP
-----END PGP SIGNATURE-----

--Sig_ZpfqUcEniO0tw8mYjaCqoWv--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
