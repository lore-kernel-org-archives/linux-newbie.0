From: Eric Bambach <eric@cisu.net>
Subject: Re: Create files with specific sizes?
Date: Wed, 15 Dec 2004 19:14:07 -0600
Message-ID: <200412151914.07337.eric@cisu.net>
References: <41BEA9C4.4050700@lol.ba>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41BEA9C4.4050700@lol.ba>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Khan <nbv.sa@lol.ba>
Cc: linux-newbie@vger.kernel.org

On Tuesday 14 December 2004 02:52 am, Khan wrote:
> Hello,
>
> is there any way (some command) that will allow me to create blank fi=
les
> with specific sizes, eg 1MB, 5MB, 10MB etc.
>
> TNX

Just for the sake of chipping in...dd supports the K,M,GB suffixes so y=
ou=20
don't have to remember  odd numbers (1024,2048,3096). You can just writ=
e=20
dd if=3D/dev/urandom of=3D/myfile bs=3D1M count=3D1
dd if=3D/dev/urandom of=3D/myfile bs=3D10M count=3D1
dd if=3D/dev/urandom of=3D/myfile bs=3D5M count=3D1
dd if=3D/dev/urandom of=3D/myfile bs=3D5G count=3D1 ;)

Manpage for DD:

The GNU fileutils-4.0 version also allows  the
       following  multiplicative  suffixes  in the specification of blo=
cksizes
       (in bs=3D, cbs=3D, ibs=3D, obs=3D): M=3D1048576, G=3D1073741824,=
 and so on  for  T,
       P,  E,  Z,  Y.   A  `D' suffix makes them decimal: kD=3D1000, MD=
=3D1000000,
       GD=3D1000000000, etc.  (Note that for ls, df, du the size of  M =
 etc.  is
       determined by environment variables, but for dd it is fixed.)

HTH!

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0--Alan Cox LKML-December 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
