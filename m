From: Ray Olszewski <ray@comarre.com>
Subject: Re: USB DSL modem
Date: Wed, 10 Dec 2003 07:54:13 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031210074608.01fca2a0@celine>
References: <1071056027.19327.35.camel@Zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071056027.19327.35.camel@Zebra.vil.ite.mee.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 11:33 AM 12/10/2003 +0000, Paul Furness wrote:
>Hello.
>
>Can anyone point me at some useful information about setting up a DSL
>modem connected to a linux box via USB?
>
>What happened here is that I recently got a DSL connection set up at
>home. Part of the sign up package included an Alcatel 'Speedtouch' USB
>connected modem and some filters. I plugged it all in and set it up
>under windows without a hitch, and it's working beautifully. However, =
I
>want to connect when I'm booted into linux (currently RedHat 9 althoug=
h
>probably Fedora soon).
>
>I spent an age hunting around for HOWTOs and so on, and while there ar=
e
>a few things written about how to configure the networking so it will
>connect to a DHCP/DSL router and such like, I can't find anything at a=
ll
>about how to make a USB modem wake up and connect.
>
>I know that the kernel supports USB fine, and when I do 'lsusb' the
>modem appears in the list, so that's working. But I don't know what to
>do next.
>
>I know that I could buy a router with a modem built in, and I may end =
up
>doing that if I have to. But it needs to include a wireless connection
>to my PC, so would cost =C2=A370 plus and I'd like to try and avoid sp=
ending
>any money on it if I possibly can; I already own the modem I have, sin=
ce
>it was 'free'.
>
>Oh, when it's connected in Windows, the modem shows up as using PPPoA,
>which I think means that roaring penguin won't help.
>
>Can anyone give me any leads?


Paul -- Like Richard, I have no experience with this hardware. (When I =
got=20
DSL several years ago, my local carrier was trying to push USB-based=20
hardware, but I successfully demanded Ethernet equipment. So did a lot =
of=20
its customers, apparently, since it reverted to Ethernet for all custom=
ers=20
soon after.) I have seen references to it on the leaf-users mailing lis=
t=20
(leaf.sourceforge.net), so you might want to take a look at the archive=
 of=20
that list for leads.

I did want to point out, in case it is not already clear to you, that y=
our=20
message describes two separate and distinct problems:

1. You need to get the USB modem itself working with the Linux kernel.

2. You need to get PPPoA working.

The second would remain a problem even if you replaced the hardware wit=
h an=20
Ethernet-based DSL modem.

That said, the Debian package "speedtouch" appears to provide both the=20
needed userspace driver for hardware connectivity and a PPPoA daemon. Y=
ou=20
might see if your distro has this package in its packaging system.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
