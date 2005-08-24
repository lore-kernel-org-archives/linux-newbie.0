From: Sergio Paracuellos <sparacuellos@lock-linux.com>
Subject: Re: Exporting symbols between modules
Date: Wed, 24 Aug 2005 17:15:13 +0200
Message-ID: <1124896513.3260.1.camel@localhost.localdomain>
References: <1124868488.3073.10.camel@localhost.localdomain>
	 <20050824165922.6f0d8c08.simon.guinot@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050824165922.6f0d8c08.simon.guinot@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: simon guinot <simon.guinot@laposte.net>
Cc: linux-newbie@vger.kernel.org

El mi=C3=A9, 24-08-2005 a las 16:59 +0200, simon guinot escribi=C3=B3:
> hello
>=20
> On Wed, 24 Aug 2005 09:28:08 +0200
> Sergio Paracuellos <sparacuellos@lock-linux.com> wrote:
>=20
> > Hi all,
> >=20
> > I'm new in this list and I have some problems exporting symbols in =
a
> > module to see them in other module.
> >=20
> > In the module I want to export the symbol I do:
> >=20
> > tList list;
> > EXPORT_SYMBOL(list);
>=20
> ok... you've better to use the EXPORT_SYMBOL_NOVERS macro to export t=
he symbol whiteout the versioning information...
> don't forget to define EXPORT_SYMTAB before include module.h...
> you can add a -DEXPORT_SYMTAB in your Makefile or a #define EXPORT_SY=
MTAB before=20
> #include <linux/module.h> in your source file...

Thanks, I solve it because it was a Makefile problem.

I was trying to compile two modules with different Makefiles. When I do
only one Makefile with

obj-m +=3D module1
obj-m +=3D module2

the problem dissapears.

Thanks to all.

Regards,

	Sergio
>=20
> >=20
> > I compile it and install without any problem.
> >=20
> > And in the module I want to use them I declare list with "extern"
> > prototype:
> >=20
> > extern tList list;
> >=20
> > When I compile the module It says me that list is undefined, and I =
don't
> > know what I am doing wrong.
>=20
> a compilation error or a loading error ?
> are you sure to have well defined the type tList in your "client" mod=
ule ?
> may be a shareed header between your modules is missing :)=20
>=20
> regards
>=20
> simon
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
