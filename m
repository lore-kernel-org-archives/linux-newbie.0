From: "Lee Chin" <leechin@mail.com>
Subject: Re: usleep
Date: Wed, 11 Jun 2003 19:42:28 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030612004228.40595.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: 333101@personal.net.py
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

I'm not sure what you are saying, but yes there are 1 million microseconds =
in a second.... 1000000 micro seconds that is.  So my loop seems correct.  =
Also, I am running this on a 2 GhZ processor, so I doubt the 1000 calls to =
usleep can add that much overhead.  I think something is wrong with the lib=
rary or the kernel.
----- Original Message -----
From: Alan Bort <333101@personal.net.py>
Date: 11 Jun 2003 19:08:34 +0300
To: Lee Chin <leechin@mail.com>
Subject: Re: usleep

> for the #include statemen I assume you are using some sort of C
> languagbe (even C, C++ or C#) Well... my man of usleep says that it
> makes the system wait for any number of microseconds... make the maths.
>=20
> Anyway... I really don't remebmer the value of a microsecond... I THINK
> it was something like "1 x 10 ^ -6" or something alike... (excuse the
> quotation aberration).
>=20
>=20
> El jue, 12-06-2003 a las 01:55, Lee Chin escribi=F3:
> > I would think the following code would wait for 1 second each itteratio=
n before printing hello, but it waits way too long.  Replacing the for loop=
 body with a=20
> > usleep(1000000) works great... what am I missing here?
> >=20
> > Thanks
> > Lee
> >=20
> > #include <unistd.h>
> >=20
> > int main()
> > {
> >     while (1)
> >     {
> >         int i;
> >=20
> >         printf("hello\n");
> >         for(i =3D 0; i < 50; i++)
> >         {
> >             usleep(1000);
> >         }
> >=20
> >     }
> >=20
> > }
> --=20
> Alan Bort
> Linux Registered User 298277 -Country Manager- [http://counter.li.org]
> [ http://www.linuxquestions.org ] Username: Ciccio
> [ http://es.tldp.org ]
> Ciccio.-
>=20

--=20
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=3Dsignup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
