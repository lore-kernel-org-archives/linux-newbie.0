From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: lilo boot problems with SATA and mandrake 10.1
Date: Thu, 16 Dec 2004 17:08:08 -0500
Message-ID: <41C20748.9080605@ieee.org>
References: <1103190044.7183.12.camel@itanium>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1103190044.7183.12.camel@itanium>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: vrodriguez@municipiodeloja.gov.ec
Cc: linux-newbie@vger.kernel.org

Vladimir E. Rodriguez a =E9crit :
> Hello!
>=20
> Please, someone could help me with the following problem:
>=20
> I have  a system with the following specifications:
>     Intel 865G Chipset
>     SATA Maxtor 120GB
>     P4 2.8 Ghz
>=20
> When I trying to install Mandrake 10.1 on it, it intalls it normally,
> but when I boot I have only "L" letter instead Lilo Boot Menu, I trie=
d
> GRUB Bootloader, and get "G" letter instead GRUB Boot Menu
>=20

   I would have expected to see a number just after the "L", likes L 01=
=20
01 01 01 01

   Maybe lilo installed itself at the starting of the partition instead=
=20
of at the starting of the disk, and you see the Lilo from the old Redha=
t=20
installation, or something related.  In such case you have to ajust the=
=20
lilo file (/etc/lilo.conf) to be sure it install itself directly in the=
=20
boot sector and check the files at the good place, and then type=20
/usr/sbin/lilo -v

   Without seeing your lilo file, it is difficult to help more.  Perhap=
s=20
you can find your problem by reading this document:

http://user.fundy.net/cyclist/linux/troubleshoot-LILO.html

Simon Valiquette
http://www.gulus.org

> Also I have windows XP on this system to dual boot.
> After I have installed Fedora Core 3, It works normally, but with
> mandrake 10.1 official I have problems to boot.
>=20
> Please anybody have experience with this thing?
>=20
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
