From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: Create files with specific sizes?
Date: Tue, 14 Dec 2004 13:54:56 -0500
Message-ID: <41BF3700.9040909@ieee.org>
References: <41BEA9C4.4050700@lol.ba>
 <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
 <cpmcg0$3e1$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <cpmcg0$3e1$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

SVisor a =E9crit :
>>=20
>> dd if=3D/dev/zero of=3Dfile1 bs=3D1k count=3D1024
>=20
> I wanted a file of garbage, not zeroes.
> So I tried: dd if=3D/dev/random of=3Dfile bs=3D1k count=3D1024
>=20

   If you don't need encryption-level random numbers (just noise) you=20
can use urandom.  It will also be much faster because it will continue=20
to send data even when his entropy pool will be exhausted.

dd if=3D/dev/urandom of=3Dfile bs=3D1k count=3D1024

> But to my suprise I got only a ~4k file. I know that dev/random may r=
un=20
> out of values. But should dd not wait until there are enought of data=
?

   That's exactly what it is supposed to do.  Perhaps you tought=20
/dev/random could generate random numbers much faster.  So when it's=20
entropy pool was exhausted after 4KB, you tought it stopped working.

   By default, there is only a reserve of 4k of entropy in /dev/random.=
=20
  Once exhausted, the others bits are *much* slower to get.  I mean, in=
=20
the order of 1,000,000 times slower than urandom unless you have a=20
special device to generate random numbers in hardware.

   You can see how much unused entropy you have with that:

cat /proc/sys/kernel/random/entropy_avail


Simon Valiquette
http://gulus.USherbrooke.ca
http://www.gulus.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
