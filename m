From: Jeremy Reeve <jsr@covetous.plus.com>
Subject: Re: USB DSL modem
Date: Thu, 11 Dec 2003 08:31:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1071131492.5032.5.camel@d9thc>
References: <5.1.0.14.1.20031210074608.01fca2a0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031210074608.01fca2a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org


Hi,

This all very much depends on what chipset your modem was built with.=20
The speedtouch package will only work with the Alcatel based designs,
for others you might have to search around for the hardware driver.  It
could be that there is currently no support for your modem (I too have
had this problem and resorted to buying the Conexant PCI one that Dabs
is doing) but there are a few out there especially if your Spanish is
good!

Jeremy

On Wed, 2003-12-10 at 15:54, Ray Olszewski wrote:
> At 11:33 AM 12/10/2003 +0000, Paul Furness wrote:
> >Hello.
> >
> >Can anyone point me at some useful information about setting up a DS=
L
> >modem connected to a linux box via USB?
> >
> >What happened here is that I recently got a DSL connection set up at
> >home. Part of the sign up package included an Alcatel 'Speedtouch' U=
SB
> >connected modem and some filters. I plugged it all in and set it up
> >under windows without a hitch, and it's working beautifully. However=
, I
> >want to connect when I'm booted into linux (currently RedHat 9 altho=
ugh
> >probably Fedora soon).
> >
> >I spent an age hunting around for HOWTOs and so on, and while there =
are
> >a few things written about how to configure the networking so it wil=
l
> >connect to a DHCP/DSL router and such like, I can't find anything at=
 all
> >about how to make a USB modem wake up and connect.
> >
> >I know that the kernel supports USB fine, and when I do 'lsusb' the
> >modem appears in the list, so that's working. But I don't know what =
to
> >do next.
> >
> >I know that I could buy a router with a modem built in, and I may en=
d up
> >doing that if I have to. But it needs to include a wireless connecti=
on
> >to my PC, so would cost =C3=82=C2=A370 plus and I'd like to try and =
avoid spending
> >any money on it if I possibly can; I already own the modem I have, s=
ince
> >it was 'free'.
> >
> >Oh, when it's connected in Windows, the modem shows up as using PPPo=
A,
> >which I think means that roaring penguin won't help.
> >
> >Can anyone give me any leads?
>=20
>=20
> Paul -- Like Richard, I have no experience with this hardware. (When =
I got=20
> DSL several years ago, my local carrier was trying to push USB-based=20
> hardware, but I successfully demanded Ethernet equipment. So did a lo=
t of=20
> its customers, apparently, since it reverted to Ethernet for all cust=
omers=20
> soon after.) I have seen references to it on the leaf-users mailing l=
ist=20
> (leaf.sourceforge.net), so you might want to take a look at the archi=
ve of=20
> that list for leads.
>=20
> I did want to point out, in case it is not already clear to you, that=
 your=20
> message describes two separate and distinct problems:
>=20
> 1. You need to get the USB modem itself working with the Linux kernel=
=2E
>=20
> 2. You need to get PPPoA working.
>=20
> The second would remain a problem even if you replaced the hardware w=
ith an=20
> Ethernet-based DSL modem.
>=20
> That said, the Debian package "speedtouch" appears to provide both th=
e=20
> needed userspace driver for hardware connectivity and a PPPoA daemon.=
 You=20
> might see if your distro has this package in its packaging system.
>=20
>=20
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20
> --
> This email has been verified as Virus free
> Virus Protection and more available at http://www.plus.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
