From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: 2 ethernet jacks -> single net connection?
Date: Mon, 19 Jan 2004 06:45:34 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002c01c3de70$fc58fe60$680410ac@pcinstru1>
References: <015801c3d645$b4d2b0a0$680410ac@pcinstru1> <3FFE3E8C.4040801@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie list <linux-newbie@vger.kernel.org>

Never said anything, but thanks a lot, shortly i will be trying to do i=
t,
with two linux machines.

--
=46acundo Su=E1rez
Neuqu=E9n - Argentina
=46DSoft
mail y jabber: faco@fdsoft.com.ar
facundo.suarez@ensi.com.ar

----- Original Message -----
=46rom: "Beolach" <beolach@comcast.net>
To: "Juan Facundo Su=E1rez" <facundo.suarez@ensi.com.ar>
Cc: "linux-newbie list" <linux-newbie@vger.kernel.org>
Sent: Friday, January 09, 2004 2:39 AM
Subject: Re: 2 ethernet jacks -> single net connection?


| See the file /usr/src/linux-2.6.0/Documentation/networking/bonding.tx=
t
| for more information on how to use ethernet bonding.  Quick summary i=
s:
|
| 1: Compile kernel with bonding, or compile & insert the module.
|
| 2: Compile and install the userspace tool ifenslave as follows:
| # cd /usr/src/linux-2.6.0/Documentation/networking
| # gcc -Wall -Wstrict-prototypes -O -I/usr/src/linux/include \
| ifenslave.c -o ifenslave
| # cp ifenslave /sbin/ifenslave
|
| 3: Setup bonded interface & enslave ethernet interfaces:
| # ifconfig bond0 192.168.0.1
| # ifenslave bond0 eth0
| # ifenslave bond0 eth1
|
| At this point the bonded interface should work.
|
| Have fun,
| Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
