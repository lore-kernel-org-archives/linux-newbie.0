From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: two questions
Date: Sat, 10 Aug 2002 16:03:36 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020810140336.73934.qmail@web13106.mail.yahoo.com>
References: <200208101521.54579.adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208101521.54579.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

 --- Adam Luchjenbroers <adam@luchjenbroers.com> a
=E9crit : > 1) How do I manually fsck my root
filesystem?
>=20

su -
init 1
<mount every *nix filesystem you have on your=20
hard drive read-only>
mount -o ro,remount /
fsck /dev/hdax=20
x - your root partition=20

> 2) Where can I find a program to convert windows
> .ICO files into a more open=20
> file format (ie. PNG).
>=20

try acdsee on windoze
There was an old program called pv.exe (pve.exe)
for dos which did that.

Calin

___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
