From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: Script as root
Date: Tue, 1 Oct 2002 16:24:50 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021001142450.81954.qmail@web40601.mail.yahoo.com>
References: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

 --- Paul Kraus <pkraus@pelsupply.com> a =E9crit=A0: > I
have a backup script that mounts a drive on my xp
> workstations. Is
> there a way I can set this script to run as root so
> that I do not have
> to su every time I want to run it?
>=20

sudo is used for running commands as a different user.
man sudo

If you want the script to run regullarly you can use
cron.

man crond
man crontab=20
Pay attention to the EDITOR variable in your shell=20
because this editor is used to edit crontab

You can mount your partition as user.
man fstab

Bye
Calin

> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
> > BEGIN:VCARD
> VERSION:2.1
> N:Kraus;Paul
> FN:Paul Kraus (pkraus@pelsupply.com)
> ORG:PEL Supply Company
> TITLE:Network Administrator
> TEL;WORK;VOICE:(216) 267-5775
> TEL;CELL;VOICE:(216) 410-5526
> TEL;WORK;FAX:(216) 267-6176
> ADR;WORK:;;4666 Manufacturing
> Road;Cleveland;Ohio;44135;United States of America
> LABEL;WORK;ENCODING=3DQUOTED-PRINTABLE:4666
> Manufacturing Road=3D0D=3D0ACleveland, Ohio
> 44135=3D0D=3D0AUnited States of Ame=3D
> rica
> ADR;HOME:;;;;;;United States
> LABEL;HOME:United States
> URL;WORK:http://www.pelsupply.com
> EMAIL;PREF;INTERNET:pkraus@pelsupply.com
> REV:20020416T182124Z
> END:VCARD
> =20

___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
