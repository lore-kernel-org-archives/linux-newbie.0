From: "rob.rice" <rob.rice@fuse.net>
Subject: Re: IO
Date: Sat, 03 Jan 2004 00:26:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF652A1.8090506@fuse.net>
References: <20040102233918.54184.qmail@web61103.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040102233918.54184.qmail@web61103.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

IF this card was ever installed by windows you may need to reconfigure=20
the eeproms in the card windows has a habit of rewriting the addresses
so that olny windblows can use the card I had to do this with an asanit=
e=20
frindly net card what program you use demends on what card you have and=
=20
from what I foung on google.com/linux ne2000 is the driver you need so=20
this may be what the problem is


Jose Colmenares wrote:
>  Found isapnptools.=20
> did pnpdump, but don't understand what is says! I
> cannot copy isapnp.conf.sample here because my floppy
> broke down (just to add more fun) and or course don't
> have internet on my slack box.=20
>=20
> It does say something like: minimum IO base adress
> 0x0280, maximun IO base adress 0x03e0. Tried both on
> modprobe, none worked (when I see the syslog no card
> was found with such an adress).
>=20
> =BFhow do i know how to edit isapnp.conf.... ?=20
>=20
> Also, on dmesg, it says:
> isapnp: Card 'Genius LAN GE2000III Series Card'
> isapnp: 1 plug & play card detected total.
>=20
> Also, i wrote down the following before formatting
> windows. It was using this:=20
>=20
> Raltek rtl8019 or compatible
> 	i/o interval 02c0-02df
>         Memory interval 000DC000-000DFFFF
> and was using a NE2000.sys file for the device
>=20
>=20
>=20
> _________________________________________________________
> Do You Yahoo!?
> Informaci=F3n de Estados Unidos y Am=E9rica Latina, en Yahoo! Noticia=
s.
> Vis=EDtanos en http://noticias.espanol.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
