From: Ray Olszewski <ray@comarre.com>
Subject: Re: IO
Date: Fri, 02 Jan 2004 14:15:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040102134850.01f37550@celine>
References: <200312272046.10811.pa3gcu@zeelandnet.nl> <20040102195255.83648.qmail@web61108.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040102195255.83648.qmail@web61108.mail.yahoo.com>
References: <200312272046.10811.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 01:52 PM 1/2/2004 -0600, Jose Colmenares wrote:
>  I posted a message about 5 days ago about troubles
>setting a LAN. Well, i still having figured it out,
>but have detected that i installed the wrong driver
>for my card. I have a isa RTL8019, wich i found out
>works with ne2000 support. But to set it i need to
>know the io and irq adress... =BFhow could i find them?
>and also, after this =BFhow do i made the proper changes
>to my system?

The "easy" way to do this is with the configuration program that came w=
ith=20
(or should have come with) the NIC. Inconveniently for us, these config=
=20
programs are almost always MS-DOS-based utilities (or, more rarely, Win=
dows=20
based). If you can still find a copy of DR-DOS or FreeDOS for download =
(I=20
haven't looked for either in a couple of years, but once they were easy=
 to=20
find), either of them will probably run any DOS-based config program yo=
u have.

A bit harder (perhaps; YMMV) is to use the configuration checker/setter=
 for=20
NE2000 NICa available at http://www.scyld.com/network/ne2k-pci.html .

If you can do neither of these things ... isa NICs usually ship=20
preconfigured for io=3D0x300 and irq=3D0x3 . So you might try disabling=
 (in the=20
BIOS) your second serial port (which will also be on irq=3D0x3), bootin=
g into=20
Linux, then trying

         modprobe ne io=3D0x300 irq=3D0xA

=46inally ... older isa NICs (including some NE2000s) get configured wi=
th=20
jumpers rather than a config program, If you have one of them, you'll b=
e=20
playing blind man's bluff with the jumpers unless you can find=20
documentation for the card.

If you have occasion to ask more questions about your NIC, please inclu=
de=20
in your message as much information about it as you know ... not just t=
hat=20
it uses the RTL8019 chipset.

>I'm runing slack 9.1. the command lsmod says there is
>a isa-pnp (wich could be my card),

Nope. lsmod provides a listing of kernel modules, not of cards. This mo=
dule=20
is supposed to let kernels do PnP configuration of isa-based PnP hardwa=
re=20
=2E.. but I've never actually used it so can't help you with the detail=
s.=20
Since we don't even know if your NIC can be configured through PnP (som=
e=20
isa NICs can, but many cannot), this is probably the wrong place to=20
focus  for now.

>ifconfig only
>detects a loopback (wich i don't really know what is,

The command "ifconfig" will list only configured interfaces ... that is=
,=20
interfaces that have IP addresses. To see all interfaces, use "ifconfig=
=20
-a". But even this will report an eth0 interface only if a kernel modul=
e=20
has found a suitable NIC and created the interface.

>but is not of any help) and i have no eth0 (wich seems
>fine, since i have not been able to install any, but i
>figure i need to do so, or not?)

Yes. You need to insmod or modprobe the kernel module(s) for your NIC .=
=2E.=20
ne is the right one to modprobe (as I recall, modprobe will notice and =
load=20
another module (8190.o,I think) that ne depends on.

Typically with this module, you do need to tell it the ioport and irq o=
f=20
your NIC, so a proper invocation would resemble this (with the values=20
appropriate for your system):

         modprobe ne io=3D0x300 irq=3D0xA

>Thanks.
>By the way, the answers i got on the last post help
>quite a lot, if not for solving the problem (wich was
>imposible since i did not ask for the correct
>information) for learning a few interesting things. Thanks!





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
