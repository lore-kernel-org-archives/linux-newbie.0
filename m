From: Juan Facundo =?iso-8859-1?q?Su=E1rez?= <faco@fdsoft.com.ar>
Subject: Re: OpenGL
Date: Mon, 5 Apr 2004 00:32:29 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404050032.29769.faco@fdsoft.com.ar>
References: <003701c419d1$c3ed8900$680410ac@pcinstru1> <40701BF8.6060405@ufrima.imag.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40701BF8.6060405@ufrima.imag.fr>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: aurelien.francillon@libertysurf.fr
Cc: Facundo Suarez <facundo.suarez@ensi.com.ar>, linux-newbie@vger.kernel.org

Thanks guy, i made what you said, and it worked just fine. Very nice. T=
he only=20
thing i see, is that the version of nvidia-kernel driver is a bit out o=
f=20
date. But it works better like this.

 I think gentoo people will update it closely.

 Thanks again.

El Sunday 04 April 2004 11:30, Aur=E9lien Francillon escribi=F3:
> Facundo Suarez a =E9crit :
> > Hi all.
> >
> >  I have just bought my new nvidia fx 5200, 128 MB ddr 8x agp video =
card.
> > And i have downloaded the drivers form nvidia home page. I installe=
d it,
> > an configured as the README says i have to do. But, running on gent=
oo
> > 1.4, kde 3.2.1, kernel 2.4.25, i cannot run my opengl screensaver. =
I
> > thougth that with this card, it has to work, but, sometimes even ha=
ngs
> > the system, other, it restarts my XFree86.
> >
> >  Can you help me ?
> >
> >  Thanks.
>
> hi,
> have you use emerge for install it ?
> something like :
> emerge -av nvidia-kernel nvidia-glx
> then
> opengl-update nvidia
>
> can you give the lsmod / XF86Config / glxinfo / /var/log/XFree86.0.lo=
g
> and /etc/XF86Config  and dmesg ?
>
> I think some could help you with this ...
>
> an other thing is that i think you sould use the agpgart from nvidia
> as only 2.6 kernel supports agp 8x (unless a backport have been done)
> or chage to kernel 2.6 (emerge applies the right patches to the nvidi=
a
> drivers for 2.6 kernel)
>
> you can also search on bugs.gentoo.org ...
>
> aurel
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
=46acundo Su=E1rez
=46DSoft SA
icq:121172697
jabber:faco@fdsoft.com.ar
msn:use_jabber@hotmail.com
Neuqu=E9n-Argentina
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
