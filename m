From: "Petras, Martin [Ontario]" <Martin.Petras@ec.gc.ca>
Subject: RE: Question about "find -exec"
Date: Thu, 18 Jul 2002 11:28:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <79D8CC9C0F21D611A0C900805FBBC3AC748236@mgtserver3.tor.ec.gc.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Linux Newbie List (E-mail)" <linux-newbie@vger.kernel.org>

try

find /mnt/c -name "*.snm" -ls

or with exec

find /mnt/c -name "*.snm" -exec ls -l {} \;

-----Original Message-----
=46rom: Oliver Ob [mailto:ob_ok@gmx.net]
Sent: Thursday, July 18, 2002 11:24 AM
To: Lx Newbie List
Subject: Question about "find -exec"


I want to find and list all files with *.snm ending.
find /mnt/c/ -name *.snm -exec ls
does not work, the man page does tell me french fries.

What am I missing?

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
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
