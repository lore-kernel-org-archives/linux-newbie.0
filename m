From: Oliver Ob <ob_ok@gmx.net>
Subject: Lilo and NT - repost because many did not READ!!!!
Date: Tue, 06 Aug 2002 21:01:45 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D501D19.456D382E@gmx.net>
References: <3D4E4917.FA23C178@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Lx Newbie List <linux-newbie@vger.kernel.org>

Oliver Ob schrieb:

There is some problem here. I had been using my machine dualbooting
with Lilo for NT and Linux. Worked like a charme. Lilo resided in the
mbr and it worked.

But now the NT uses SAFEGUARD and that thing sits in the mbr for the
pre-boot-password-authentication. So for all of you who do not know
SG yet: It starts booting ONLY if you entered the correct pw.

I have not done this before and ask for your advice:

*** AGAIN, STOP WASTING MY AND YOU TIME WITH IDEAS TO MODIFY THE
NT LOADER! I SAID A MILLION TIMES WHY I CANNOT CHANGE THAT !!! ****
Thanks.

How can I continue using LILO for NT/Linux dualboot
*when I need to make NT believe the orignal ("safeguarded")=20
NT-Bootsector i the mbr, but want to use lilo in the mbr ACTUALLY
=20
What to do?

I put it like this: I NEED lilo in the mbr, but can only boot=20
with SAFEGUARD. So how can I tell lilo to run the SAFEGUARD sector,
which I have here in a file (512 bytes) ?

> The other way round to get this clear: The Multiboot HOWTOs that I
> found as well as googling with
> http://www.google.de/search?q=3Dlilo+mbr+NT&btnG=3DGoogle-Suche&hl=3D=
de&ie=3DISO-8859-1
>=20
> all brought only solutions like "Configure NT-Loader to boot your
> Linux system" - which NOT what I want nor can!

THIS is it!=20
So how can I install Lilo in the mbr and tell Lilo to boot NT,
but emulate that BOOT using the SAFEGUARD-MBR
=20
The lilo.conf section about chain loading is not clear to me.

Can anybody help? I re-read the man lilo all the time, but cannot
get on how to chain-boot a single sector (the SAFEG one) which then
starts to actually boot the NT.

Hope you now understand me. I have not had enough sleep because of
this problem :-)

Cheers mates!


--=20
   *=BA=A4.,___,.=A4=BA*=A8=A8=A8*=A4         =3DOliver@home=3D        =
 *=BA=A4.,=B8=B8=B8,.=A4=BA*=A8=A8*=A4
   I   / __|__   http://www.bmw-roadster.de/Friends/Olli/olli.html  I
   I  / /  |_/   http://www.bmw-roadster.de/Friends/friends.html    I
   I  \ \__|_\   http://groups.yahoo.com/group/VGAP-93              I
   I   \___|     mailto:VGAP-93-subscribe@yahoogroups.com           I
   >>>  Telek0ma iBBMS - moving house, but online! +49....TRSi1   <<<
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
