From: Walter Logeman <walter@psybernet.co.nz>
Subject: USB device installation
Date: Thu, 18 Apr 2002 10:16:21 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020417221621.7E4A052728@psybernet.co.nz>
Reply-To: walter@psybernet.co.nz
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi,

I have 2 usb ports. =A0The Intelleye mouse is working well off one=20
port. =A0I am trying to get a Smartmedia card reader to work off the=20
other port.

I have made some steps in what I think is the right direction=20
/etc/modules has:

scsi_hostadapter
usb-storage

I have a program called usbview which shows me that the reader can=20
be hotplugged, which means usbutils and hotplug are working (I=20
think)

I have made a /mnt/smedia directory=20

I know I will need to add something to my fstab such as:

=A0/dev/sda1 /mnt/smedia vfat noauto,user

but have not done that yet... perhaps i should do that now?

I have held off because

=A0mount -t vfat /dev/sda1 /mnt/smedia

tells me there is no sda1 ( ls -al in dev/ reveals that there is no=20
device sd* at all =A0- see clip below.)

How does the dev directory get the device names? =A0Should they just=20
appear? =A0Does usb-storage do that?

Any comments or clues would be appreciated. =A0I am new to Linux so=20
may well be missing something very basic.

Some details below



Walter

~~~
=3D My Machine =3D
Dell i8100 laptop
ATI Radeon 7500 Mobility
Mandrake 8.1
Linux 2.4.9-13smp i686 [ELF]
Upgraded to Xfree86 4.2.0

~~~

1000 root@psybernet:/home/walter (08:58:12)
# lsmod
Module =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Size =A0Used by
sg =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 28624 =A0 0 =A0(autoclean)
sr_mod =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 14912 =A0 0 =A0(autoclean)
lt_serial =A0 =A0 =A0 =A0 =A0 =A0 =A020336 =A0 0 =A0(unused)
lt_modem =A0 =A0 =A0 =A0 =A0 =A0 =A0314720 =A0 0 =A0[lt_serial]
maestro3 =A0 =A0 =A0 =A0 =A0 =A0 =A0 25280 =A0 2
soundcore =A0 =A0 =A0 =A0 =A0 =A0 =A0 4208 =A0 2 =A0[maestro3]
ac97_codec =A0 =A0 =A0 =A0 =A0 =A0 =A09312 =A0 0 =A0[maestro3]
lp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A05808 =A0 0
parport_pc =A0 =A0 =A0 =A0 =A0 =A0 20240 =A0 1
parport =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A024768 =A0 1 =A0[lp parport_pc]
irtty =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 6000 =A0 2 =A0(autoclean)
irda =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 93568 =A0 1 =A0(autoclean) [ir=
tty]
ds =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A06992 =A0 2
i82365 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 23728 =A0 2
pcmcia_core =A0 =A0 =A0 =A0 =A0 =A043936 =A0 0 =A0[ds i82365]
ip_vs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A062000 =A0 0 =A0(autoclean)
keybdev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 1920 =A0 0 =A0(unused)
mousedev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A04192 =A0 1
hid =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A018480 =A0 0 =A0(unused)
usbmouse =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02048 =A0 0 =A0(unused)
input =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 3648 =A0 0 =A0[keybdev moused=
ev hid usbmouse]
iptable_nat =A0 =A0 =A0 =A0 =A0 =A016560 =A0 0 =A0(autoclean) (unused)
ip_conntrack =A0 =A0 =A0 =A0 =A0 15600 =A0 1 =A0(autoclean) [iptable_na=
t]
iptable_mangle =A0 =A0 =A0 =A0 =A02048 =A0 0 =A0(autoclean) (unused)
iptable_filter =A0 =A0 =A0 =A0 =A02048 =A0 0 =A0(autoclean) (unused)
ip_tables =A0 =A0 =A0 =A0 =A0 =A0 =A011488 =A0 5 =A0[iptable_nat iptabl=
e_mangle=20
iptable_filter]
usb-uhci =A0 =A0 =A0 =A0 =A0 =A0 =A0 21232 =A0 0 =A0(unused)
eepro100 =A0 =A0 =A0 =A0 =A0 =A0 =A0 17120 =A0 0 =A0(autoclean) (unused=
)
nls_iso8859-1 =A0 =A0 =A0 =A0 =A0 2880 =A0 1 =A0(autoclean)
ntfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 49776 =A0 1 =A0(autoclean)
usb-storage =A0 =A0 =A0 =A0 =A0 =A052528 =A0 0 =A0(unused)
usbcore =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A050752 =A0 1 =A0[hid usbmouse usb=
-uhci=20
usb-storage]
ide-scsi =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08096 =A0 0
scsi_mod =A0 =A0 =A0 =A0 =A0 =A0 =A0 91072 =A0 3 =A0[sg sr_mod usb-stor=
age ide-scsi]
rtc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5600 =A0 0 =A0(autoclean)
ext3 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 63084 =A0 2
jbd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A039168 =A0 2 =A0[ext3]

~~~

1005 root@psybernet:/dev (08:59:47)
# ls -al | grep sd
crw------- =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 8, =A0 0 Jan =A01 =A0=
1970 .devfsd
lr-xr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A07 Apr 18 0=
8:49 ptysd ->=20
pty/m61
crw-rw-rw- =A0 =A01 root =A0 =A0 tty =A0 =A0 =A0 =A03, =A061 Jan 25 14:=
56 ttysd


--=20
Walter Logeman
Psychotherapist
http://www.psybernet.co.nz
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
