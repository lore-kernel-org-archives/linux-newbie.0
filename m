From: Oliver Ob <ob_ok@gmx.net>
Subject: ISO Image
Date: Tue, 09 Jul 2002 19:00:28 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D2B16AC.C7ADA30@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Lx Newbie List <linux-newbie@vger.kernel.org>

This is what I would like to do: Updating a backup then burn new.

I copied the old cd using=20
dd=3Dif... of=3D/image.iso

Now I mounted that iso
mount -o loop -t iso9660 image.iso /mnt/image

It is there, no problems till here.

Now it is mounted rw (according to mount)
I want to copy one file INTO it.

But I get "READ ONLY FS"

So what do I do wrong here? It IS mounted rw

Please help, I need to get that done for tomorrow.

--=20
*=BA=A4., =B8=B8,.=A4=BA*=A8=A8=A8*=A4        =3DOliver@home=3D        =
 *=BA=A4., =B8=B8,.=A4=BA*=A8=A8*=A4
I       http://www.bmw-roadster.de/Friends/Olli/olli.html       I
I       http://www.bmw-roadster.de/Friends/friends.html         I
I       http://groups.yahoo.com/group/VGAP-93                   I
I       mailto:VGAP-93-subscribe@yahoogroups.com                I
I       http://home.t-online.de/home/spacecraft.portal          I
>>>  Telek0ma iBBMS - now back online +49.4504.TRSi1/TRSi2   <<<
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
