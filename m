From: ramzez <r4mz3z@yahoo.es>
Subject: Re: bash_logout -> KDE
Date: 22 Jul 2003 12:33:22 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058810375.2014.2.camel@localhost.localdomain>
References: <1058650465.1955.3.camel@localhost.localdomain> 
	<200307201344.16825.robin@robind.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-6Rkxaog8tqoY8TMMzBtO"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307201344.16825.robin@robind.de>
List-Id: <linux-newbie.vger.kernel.org>
To: Robin Doer <robin@robind.de>


--=-6Rkxaog8tqoY8TMMzBtO
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi...
   I can't manipulate using xreset ... but I modified
"/usr/bin/startkde" and it works for me


El dom, 20-07-2003 a las 08:44, Robin Doer escribi=F3:
    Hello!
   =20
    Am Samstag, 19. Juli 2003 21:37 schrieb ramzez:
    > Hi friends...
    >
    >   How do I can always execute some script just before logout from any
    > KDE session (just like .bash_logout in text mode)?
    >
    > thanks
   =20
    Well, It depends, like so often, on the display manager you are using.
    For example xdm supports a Xreset-script which runs after terminating a=
n=20
    user-session. Check the xdm-man page for more detailed information (sec=
tion=20
    RESET PROGRAM).
   =20
    So long,
    Robin
--=20
  Linux User Registered #232544
        ICQ : 337889406
  GnuPG-key : www.keyserver.net
 -------------------------------
"Software is like sex,
      it's better when it's free."
                  [Linus Torvalds]

--=-6Rkxaog8tqoY8TMMzBtO
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Esta parte del mensaje esta firmada digitalmente

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQA/HCoGG3Fqyap52TERAs8AAJ9h66QHrI2cTwnnFPapVpItD97TfgCdH95S
ATITl0UFbP7r6Zaq7FYTbPY=
=lbNe
-----END PGP SIGNATURE-----

--=-6Rkxaog8tqoY8TMMzBtO--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
