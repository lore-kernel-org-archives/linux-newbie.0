From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: __KERNEL__ and __MODULE__
Date: Thu, 01 Feb 2007 13:04:01 -0500
Message-ID: <45C22B91.20102@ieee.org>
References: <292693080701312234r206bbc8cxa93ee171b7e25ecb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <292693080701312234r206bbc8cxa93ee171b7e25ecb@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Daniel Rodrick un jour =E9crivit:
> Hi,
>=20
> I find a lot of code buried within #ifdefs for the following variable=
s:
>=20
> MODULE / __MODULE__
> KERNEL / __KERNEL__
>=20
> 1) AFAIK, the MODULE / __MODULE__ is defined when my drievr is
> selected to be compiled as a module, and the KERNEL / __KERNEL__ is
> defined when is is selected to be built in the kernel image. Is this
> right?

   No.  The __KERNEL__ macro is defined because there is programs (like=
=20
libraries) than include kernel code and there is many things that you=20
don't want them to include.  So most modules will want the __KERNEL__=20
macro to be enabled.  It is usually done by passing -D__KERNEL__ to gcc=
=2E

> 2) Why two variants ? KERNEL V/s __KERNEL__ and MODULE v/s __MODULE__=
?

   AFAIK, there is only MODULE and __KERNEL__.  I don't think that=20
__MODULE__ or KERNEL exist.  I greped the 2.6.17 kernel just to be sure=
,=20
and didn't found any instance of them.

> 3) Do I need to define these symbols in my Makefile myself or the
> Kernel Makefiles / Kbuild does it for me?

   Use the source, Luke!  There is plenty of examples there and on the =
web.

   I would suggest that for now, you only make dynamicaly loadable modu=
les=20
and compile it from outside the kernel tree.  So you will be sure not t=
o=20
introduce problems in your kernel (and loose time finding out what).

   So for starting, you will probably want to add -D__KERNEL__ directly=
 to=20
gcc and define MODULE inside of your module for simplicity.  When you w=
ill=20
know a bit more about kernel programming, you may try to include your c=
ode=20
directly in the kernel tree.

   I never used kbuild, so I cannot fairly comment on it.  Still, I=20
strongly recommand you to buy a copy of Linux Device Drivers from O'Rei=
lly=20
and maybe some others books like Robert Love's Linux Kernel Development=
=2E=20
That will answer many of your questions and then you will be able to ge=
t=20
much more from this mailing list.

Simon Valiquette
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
