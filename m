From: Beolach <beolach@comcast.net>
Subject: Re: 2 ethernet jacks -> single net connection?
Date: Thu, 08 Jan 2004 22:39:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FFE3E8C.4040801@comcast.net>
References: <015801c3d645$b4d2b0a0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <015801c3d645$b4d2b0a0$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: =?ISO-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Cc: linux-newbie list <linux-newbie@vger.kernel.org>

See the file /usr/src/linux-2.6.0/Documentation/networking/bonding.txt=20
for more information on how to use ethernet bonding.  Quick summary is:

1: Compile kernel with bonding, or compile & insert the module.

2: Compile and install the userspace tool ifenslave as follows:
# cd /usr/src/linux-2.6.0/Documentation/networking
# gcc -Wall -Wstrict-prototypes -O -I/usr/src/linux/include \
ifenslave.c -o ifenslave
# cp ifenslave /sbin/ifenslave

3: Setup bonded interface & enslave ethernet interfaces:
# ifconfig bond0 192.168.0.1
# ifenslave bond0 eth0
# ifenslave bond0 eth1

At this point the bonded interface should work.

Have fun,
Conway S. Smith

Juan Facundo Su=E1rez wrote:
> So.., once this modules is compiled, how do i set up two of many eth =
cards
> in one machine to work like this?. May be it's automatically?.
>  If i have a machine acting as router, and it has 4 eth cards, and tw=
o of
> these, are connected to another one machine. How can i tell my router=
, wich
> of those are de two i want to use "bonded" ?
>=20
>  Thanks !
>=20
> ----- Original Message -----
> From: "Beolach" <beolach@comcast.net>
> To: "James Miller" <jamtat@mailsnare.net>
> Cc: <linux-newbie@vger.kernel.org>
> Sent: Thursday, January 08, 2004 1:58 AM
> Subject: Re: 2 ethernet jacks -> single net connection?
>=20
>=20
> | First off, I have no actual experience with this, and I am just goi=
ng
> | off the kernel documentation.  It is possible, and you even remembe=
red
> | the term correctly - ethernet channel bonding.  What will most like=
ly be
> | the deciding factor on whether or not you can actually set this up =
is if
> | the other end of the two ethernet channels (probably your ISP) supp=
orts
> | bonding.  Here's the a direct quote from the relevant kernel docume=
ntation.
> |
> | <BLOCKQUOTE>
> | Bonding driver support BONDING
> |
> | Say 'Y' or 'M' if you wish to be able to 'bond' multiple Ethernet
> | Channels together. This is called 'Etherchannel' by Cisco,
> | 'Trunking' by Sun, and 'Bonding' in Linux.
> |
> | If you have two Ethernet connections to some other computer, you ca=
n
> | make them behave like one double speed connection using this driver=
=2E
> | Naturally, this has to be supported at the other end as well, eithe=
r
> | with a similar Bonding Linux driver, a Cisco 5500 switch or a
> | SunTrunking SunSoft driver.
> |
> | This is similar to the EQL driver, but it merges Ethernet segments
> | instead of serial lines.
> |
> | To compile this driver as a module, choose M here: the module
> | will be called bonding.
> | </BLOCKQUOTE>
> |
> | Good luck & let us know if you get this working,
> | Conway S. Smith
>=20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
