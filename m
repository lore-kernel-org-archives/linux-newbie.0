From: =?ISO-8859-1?Q?Aur=E9lien_Francillon?= <francila@ufrima.imag.fr>
Subject: Re: OpenGL
Date: Sun, 04 Apr 2004 16:30:16 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40701BF8.6060405@ufrima.imag.fr>
References: <003701c419d1$c3ed8900$680410ac@pcinstru1>
Reply-To: aurelien.francillon@libertysurf.fr
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003701c419d1$c3ed8900$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Facundo Suarez <facundo.suarez@ensi.com.ar>
Cc: linux-newbie@vger.kernel.org

=46acundo Suarez a =E9crit :
> Hi all.
>=20
>  I have just bought my new nvidia fx 5200, 128 MB ddr 8x agp video ca=
rd. And
> i have downloaded the drivers form nvidia home page. I installed it, =
an
> configured as the README says i have to do. But, running on gentoo 1.=
4, kde
> 3.2.1, kernel 2.4.25, i cannot run my opengl screensaver. I thougth t=
hat
> with this card, it has to work, but, sometimes even hangs the system,=
 other,
> it restarts my XFree86.
>=20
>  Can you help me ?
>=20
>  Thanks.
>=20
hi,
have you use emerge for install it ?
something like :
emerge -av nvidia-kernel nvidia-glx
then
opengl-update nvidia

can you give the lsmod / XF86Config / glxinfo / /var/log/XFree86.0.log
and /etc/XF86Config  and dmesg ?

I think some could help you with this ...

an other thing is that i think you sould use the agpgart from nvidia
as only 2.6 kernel supports agp 8x (unless a backport have been done)=20
or chage to kernel 2.6 (emerge applies the right patches to the nvidia=20
drivers for 2.6 kernel)

you can also search on bugs.gentoo.org ...

aurel

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
