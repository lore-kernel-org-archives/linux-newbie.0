From: "Eckhardt, Rodolpho H. O." <reckhardt@mandic.com.br>
Subject: Re: Oversized kernel
Date: Wed, 12 Mar 2003 07:02:41 -0300 (BRT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <64938.200.136.52.249.1047463361.squirrel@www.mandic.com.br>
References: <720FB032F37C0D45A11085D881B03368A2B496@MBXSRV24.stu.nus.edu.sg>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B496@MBXSRV24.stu.nus.edu.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: g0202512@nus.edu.sg
Cc: linux-newbie@vger.kernel.org

Hi,

Check for things that you added and you don't need, like smp, math-emu,=
 scsi, old
drivers, net routing, net drivers etc...

I don't know you machine very well so I can't tell you what you need or=
 don't.

Best regards,

Rodolpho

-------- mensagem original --------
assunto: Oversized kernel
de: "Eng Se-Hsieng" <g0202512@nus.edu.sg>
data: Qua, Mar=E7o 12, 2003 6:59
para: <linux-newbie@vger.kernel.org>

> Dear all,
>
> I've just compiled a new kernel and the vmlinuz is over 2Mb in size. =
Since mkbootdisk
> returns : Not enough space and I don't have a CD writer on my system,=
 I'm unable to
> create a boot disk and am a little wary about not having one.
>
> How does one know what are the minimum options to choose in order to =
reduce the size
> of the vmlinuz? My system is a Toshiba Satellite 4030CDT (Celeron 266=
 Mhz)
>
> Thank you.
>
> Regards,
> Se-Hsieng
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in the body of
> a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html Pl=
ease read the FAQ
> at http://www.linux-learn.org/faqs


--=20
Rodolpho H. O. Eckhardt
reckhardt@mandic.com.br
Cel: 11 9126-9107


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
