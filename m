From: Antonio Tellez Flores <atellezf@yahoo.com.mx>
Subject: Re: booting error
Date: Sat, 06 Nov 2004 21:19:32 -0600
Message-ID: <1099797571.2815.3.camel@localhost>
References: <6e9eecc804110618178f3a3dc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6e9eecc804110618178f3a3dc@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Adam Saeed <adam.saeed@gmail.com>
Cc: linux-newbie@vger.kernel.org

Hello!!!

You have rewrite the null device, Please try:

cd /dev
rm null
mknod /dev/null c 1 3
chmod 666 null

Bye.

> I have RED HAT 9.0 , I am getting problem while booting.
> i have lilo,  i used the following command:
> mv /etc/lilo.conf   /dev/null
> then install grub.
> after rebooting the maching grub was there.. it starts booting my
> machine... but after some time it gives these errors:
>=20
> Mounting Proc File system: dup2: bad file or desriptor name [failed]
> grep: no such file or directory
> Configuring kernel parameter dup2: bad file or desriptor name [failed=
]  =20
>=20
> Setting Clock dup2: bad file or desriptor name [failed]    =20
> load default keymap(us)   /etc/rc.d/rc.sysinit  =20
> line:162: /dev/null Read Only File System
>=20
> Setting hostname localhost dup2: bad file or desriptor name    [Faile=
d]
> /etc/rc.d/rc.sysinit :line 173: /dev/null read only filesystem [faile=
d]
> /etc/rc.d/rc.sysinit :line 173: /dev/null read only filesystem [faile=
d]
>=20
> Initialising usb controller : dup2: bad file or desriptor name  [fail=
ed]
>=20
> /etc/rc.d/rc.sysinit 184 /dev/null read only filesystem
> /etc/rc.d/rc.sysinit 184 /dev/null read only filesystem
> /etc/rc.d/rc.sysinit 200 /dev/null read only filesystem  [failed]
>=20
> awk:cmd:line2:fatal:cannot open /proc/mounts for reading (no such fil=
e)
> checking root file system : dup2: bad file or desriptor name  [failed=
]
--=20
Antonio T=E9llez Flores
Ciencias de la Computaci=F3n
=46acultad de Ciencias - UNAM
Home Page: http://ada.fciencias.unam.mx/~atellez

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
