From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: USB DSL modem
Date: Wed, 10 Dec 2003 11:33:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1071056027.19327.35.camel@Zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset=;
	e.com0=; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hello.

Can anyone point me at some useful information about setting up a DSL
modem connected to a linux box via USB?

What happened here is that I recently got a DSL connection set up at
home. Part of the sign up package included an Alcatel 'Speedtouch' USB
connected modem and some filters. I plugged it all in and set it up
under windows without a hitch, and it's working beautifully. However, I
want to connect when I'm booted into linux (currently RedHat 9 although
probably Fedora soon).

I spent an age hunting around for HOWTOs and so on, and while there are
a few things written about how to configure the networking so it will
connect to a DHCP/DSL router and such like, I can't find anything at al=
l
about how to make a USB modem wake up and connect.

I know that the kernel supports USB fine, and when I do 'lsusb' the
modem appears in the list, so that's working. But I don't know what to
do next.

I know that I could buy a router with a modem built in, and I may end u=
p
doing that if I have to. But it needs to include a wireless connection
to my PC, so would cost =C2=A370 plus and I'd like to try and avoid spe=
nding
any money on it if I possibly can; I already own the modem I have, sinc=
e
it was 'free'.

Oh, when it's connected in Windows, the modem shows up as using PPPoA,
which I think means that roaring penguin won't help.

Can anyone give me any leads?

Paul.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
