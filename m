From: Alan Bort <333101@personal.net.py>
Subject: Re: usleep
Date: 11 Jun 2003 19:08:34 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1055347714.31273.14.camel@Gandalf>
References: <20030611225502.29651.qmail@mail.com>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Lee Chin <leechin@mail.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

for the #include statemen I assume you are using some sort of C
languagbe (even C, C++ or C#) Well... my man of usleep says that it
makes the system wait for any number of microseconds... make the maths.

Anyway... I really don't remebmer the value of a microsecond... I THINK
it was something like "1 x 10 ^ -6" or something alike... (excuse the
quotation aberration).


El jue, 12-06-2003 a las 01:55, Lee Chin escribi=F3:
> I would think the following code would wait for 1 second each itterat=
ion before printing hello, but it waits way too long.  Replacing the fo=
r loop body with a=20
> usleep(1000000) works great... what am I missing here?
>=20
> Thanks
> Lee
>=20
> #include <unistd.h>
>=20
> int main()
> {
>     while (1)
>     {
>         int i;
>=20
>         printf("hello\n");
>         for(i =3D 0; i < 50; i++)
>         {
>             usleep(1000);
>         }
>=20
>     }
>=20
> }
--=20
Alan Bort
Linux Registered User 298277 -Country Manager- [http://counter.li.org]
[ http://www.linuxquestions.org ] Username: Ciccio
[ http://es.tldp.org ]
Ciccio.-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
