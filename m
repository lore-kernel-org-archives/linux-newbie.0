From: Sergio Paracuellos <sparacuellos@lock-linux.com>
Subject: Re: List of kernel symbols in 2.6.5 kernel.
Date: Wed, 28 Sep 2005 10:00:41 +0200
Message-ID: <1127894441.3192.0.camel@localhost.localdomain>
References: <Pine.LNX.4.60.0509281140150.19139@lantana.cs.iitm.ernet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0509281140150.19139@lantana.cs.iitm.ernet.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Cc: linux-newbie@vger.kernel.org

El mi=C3=A9, 28-09-2005 a las 11:43 +0530, P.Manohar escribi=C3=B3:
> hai all,
>=20
>      In 2.4 kernels we have the complete list of kernel symbols with
> "ksyms -a", but in 2.6.5 the list is incomplete , is there any mechan=
ism=20
> for getting the complete list of kernel symbols and their associated =
memoy=20
> locations.
Hi,

You could try with:

	cat /proc/kallsyms

Cheers,

	Sergio
>=20
> Any small help is appreciated.
>=20
> Thanks & Regards,
> P.Manohar.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
