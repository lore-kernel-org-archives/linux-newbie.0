From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: process priority
Date: Mon, 18 Oct 2004 05:07:02 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <417387B6.3050806@ieee.org>
References: <20041018082910.56565.qmail@web61001.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20041018082910.56565.qmail@web61001.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: Girish A Joshi <gaj@fluent.co.in>

sumit kalra a =E9crit :
> Hi,
>=20
> You can use the 'nice' utility (man nice). To change
> the priority of a process programatically, you can use
> the nice() function (man 2 nice).
>=20
> Regards,
> Sumit
>=20

   You can also use renice, to change the process priority of an alread=
y=20
running process.  Unfortunatelly, you can only lower the priority of th=
e=20
process.  With renice, You need to be root to put higher the priority o=
f=20
a running process.  Still, it is usefull if you want to lower the=20
priority of a group of process that take lots of ressources on a system=
=20
(ex. lowering the priority of a big "find" request all over your hardis=
k=20
while you are doing something else more important).

   As far as I know, both nice and renice are available for every moder=
n=20
Unix systems.

Simon Valiquette

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
