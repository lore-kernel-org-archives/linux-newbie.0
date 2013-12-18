From: Dolan Murvihill <dmurvihill@gmail.com>
Subject: Re: How to only send emails, but do not get any?
Date: Wed, 18 Dec 2013 14:07:33 +0000
Message-ID: <52B1AC25.9030406@gmail.com>
References: <86e83df2a5a34dceb80011d3f7dfbdfc@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="x1UHP8tq960lf4SET92EKcunJDunXJweM"
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:mime-version:to:subject:references:in-reply-to
         :content-type;
        bh=hKtajJlRlFZAp6GH/SY6LuUx204VcKYcki6qiN7Z3h4=;
        b=LhDs7QelB+ZRdrn35bXlN4vRo+j/cQ2e36EAdcuwBsrcUrCkcsIEzhLsO+7MvcSS8K
         cLK6htGJn0pzJ11BtSrIqEKHgJIKZSjO8nuBtiZO/Yiw15zBhF6FgQNbzW9/648e+Nho
         85L3VCwsR/soUFcAvqrr0C7zgTe+LKFWPWpO3KjrCT+nIuyfbdKSXzmEFP3cdU6zBM28
         k6aFnDbEGO5L0rkeprxr2uxJbo0wLSv2Q7H4+AARcgR02vdpYrq0vqMkgcjY8JRy+VJe
         EPnsld/PH2unVRNs0i6bc9KoqUUoL6EyxaR1KJDcDyVBwt9aWerPF6s9PmAKhabFAtlh
         vn7Q==
In-Reply-To: <86e83df2a5a34dceb80011d3f7dfbdfc@DM2PR05MB671.namprd05.prod.outlook.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--x1UHP8tq960lf4SET92EKcunJDunXJweM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That should be easy to do with a local filter. I'd play with your mail
client's filtering options.

Rajat Jain:
> Hi Folks,
>=20
> I have been trying with no success, to determine how can I change my li=
st options such that:
>=20
> I should be able to send emails to the list, but get only the replies t=
hat were explicitly copied to me (Not the general broadcast emails from t=
he group).
>=20
> Could not find anything from majordomo help. And no web link also.
>=20
> Appreciate any help.
>=20
> Thanks,
>=20
> rajat
> N=EF=BF=BD=EF=BF=BD=EF=BF=BD=EF=BF=BD=EF=BF=BDr=EF=BF=BD=EF=BF=BDy=EF=BF=
=BD=EF=BF=BD=EF=BF=BDb=EF=BF=BDX=EF=BF=BD=EF=BF=BD=C7=A7v=EF=BF=BD^=EF=BF=
=BD)=DE=BA{.n=EF=BF=BD+=EF=BF=BD=EF=BF=BD=EF=BF=BD=EF=BF=BD{=EF=BF=BD=EF=BF=
=BD=EF=BF=BD=1B=EF=BF=BD=E8=A7=B6=17=EF=BF=BD=EF=BF=BD=DC=A8}=EF=BF=BD=EF=
=BF=BD=EF=BF=BD=C6=A0z=EF=BF=BD&j:+v=EF=BF=BD=EF=BF=BD=EF=BF=BD=07=EF=BF=BD=
=EF=BF=BD=EF=BF=BD=EF=BF=BDzZ+=EF=BF=BD=EF=BF=BD+zf=EF=BF=BD=EF=BF=BD=EF=BF=
=BDh=EF=BF=BD=EF=BF=BD=EF=BF=BD~=EF=BF=BD=EF=BF=BD=EF=BF=BD=EF=BF=BDi=EF=BF=
=BD=EF=BF=BD=EF=BF=BDz=EF=BF=BD=1E=EF=BF=BDw=EF=BF=BD=EF=BF=BD=EF=BF=BD?=EF=
=BF=BD=EF=BF=BD=EF=BF=BD=EF=BF=BD&=EF=BF=BD)=DF=A2=1Bf=EF=BF=BD=EF=BF=BD^=
j=C7=ABy=EF=BF=BDm=EF=BF=BD=EF=BF=BD@A=EF=BF=BDa=EF=BF=BD=EF=BF=BD=7F=EF=BF=
=BD=0C0=EF=BF=BD)=EF=BF=BD=EF=BF=BDW=EF=BF=BD=EF=BF=BDz+=EF=BF=BD=EF=BF=BD=
=EF=BF=BDqs=3D=3D
>=20


--=20
Not signed with my key? Not from me.


--x1UHP8tq960lf4SET92EKcunJDunXJweM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJSsawlAAoJEJ3vfiOfqhm+1QoH/RG98JApOdhpTmuYLjWXuj/9
WF5qEsT0U3Y04jDPs12CZPgUSlqfK248g9XUUE/pfp/F9TWMb/0U83fqjRMrmL+D
U/CHLNFRGcMr4kLJewMpiSXBNlJmqSuGxXxjv7AaDkXejVamH9SRdShRysQCR0Y0
ee9jDofphfo1CppfngAHuTx1Lt+3hAvBKg0RlboaSqLh5oQta7R165tf5QXQceFT
SsvU4aJfQVqOMXqY1NxJesOqwd/lcLFa94iOefswnDfRbOJLJJDbdVF48SrLxZXH
b0pHih/hPYn3JD8Pi3Vbb6M+Y1tw7ZOLHIx0BpXbDygDVFIStziMWQXfu5pG288=
=aeON
-----END PGP SIGNATURE-----

--x1UHP8tq960lf4SET92EKcunJDunXJweM--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
