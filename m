From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: Create files with specific sizes?
Date: Fri, 17 Dec 2004 16:15:25 -0500
Message-ID: <41C34C6D.2030306@ieee.org>
References: <41BEA9C4.4050700@lol.ba>
 <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
 <cpmcg0$3e1$1@sea.gmane.org> <41BF3700.9040909@ieee.org>
 <cprlk8$gpo$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <cprlk8$gpo$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

SVisor a =E9crit :
>=20
>>> I wanted a file of garbage, not zeroes.
>>> So I tried: dd if=3D/dev/random of=3Dfile bs=3D1k count=3D1024
>=20
> Nope I did not abort it, I just moved the mouse to generate more rand=
om=20
> numbers (with dd running in X terminal). What dd says is:
>=20
> 0+1024 records in
> 0+1024 records out
>=20

   You have read and written 1024 partial blocks (ie. not complete).=20
Why?  I don't know.

   You did'nt say if the produced file is always the same size, or=20
differents but always bigger (or smaller) than 4K?  Please give the=20
exact value(s) as it can hint at what the problem is.  I have the=20
impression that you get only 4 bytes per block readed.  You can=20
experiment with different values to try to find a patern.

   Also, check if the produced file really is random data.


   Try "cp /dev/urandom /tmp/file.cp" and type CTRL-C after waiting a=20
couple of seconds.  If it works (and get a very big file), then the=20
problem is not related to the random devices.  I suppose here that you=20
had the same problem with random and urandom.


   By curiosity, try this and report the exact file size produced (and=20
check if it is random data).

dd if=3D/dev/urandom of=3D/tmp/file.cp bs=3D1 count=3D1024x1024


> But the file still is just ~4k. Maybe a bug?
>=20

   Maybe, but I would be surprised.  I suspect that if you do a=20
reinstall from scratch (or use a Knoppix disk) you will not see your=20
problem any more.  You did'nt even said which Linux distribution you ar=
e=20
using, so with that little information I can't help much.  By the way, =
I=20
can't reproduce your problem.


Simon Valiquette
http://www.gulus.org
http://gulus.USherbrooke.ca

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
