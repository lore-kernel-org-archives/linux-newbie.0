From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 10:23:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266024E7@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?=27Juan_Facundo_Su=E1rez=27?= <facundo.suarez@ensi.com.ar>, linux-newbie list <linux-newbie@vger.kernel.org>

Juan,

Eth0 has the external assigned IP by my ISP. Eth1 has a 192.168.x.x ip
address. Eth1 acts as the DHCP server for my LAN. My LAN is working fin=
e. I
can connect machines to the LAN and even connect one machine to another=
=2E

But I cannot get eth1 to talk to eth0. I cannot connect the LAN to the
internet nor connect to any internal machine from outside!!

Do I need to bridge the 2 NICs ???

Regards,
Devesh


-----Original Message-----
=46rom: Juan Facundo Su=E1rez [mailto:facundo.suarez@ensi.com.ar]=20
Sent: Wednesday, January 21, 2004 10:13 AM
To: linux-newbie list
Subject: Re: 2 NIC cards not talking


Sorry, i don't understand at all. You say that you have two cards, in t=
he
same machine, are them in the same subnet ? why don't you put one, wich
connects to "outside" in one, and the other in another subnet?. I have
working a firewall/router with iptables, and the card is connected to d=
e
adsl-modem has 192.168.1.10, and the card to brins internet to the lan =
has
192.168.0.1.

 If you cannot ping from a machine in one subnet, to another in other
subnet, maybe you need to load the kernel-module wich does that job.

--
=46acundo Su=E1rez
Neuqu=E9n - Argentina
=46DSoft
mail y jabber: faco@fdsoft.com.ar
facundo.suarez@ensi.com.ar

----- Original Message -----
=46rom: "Chadha, Devesh" <devesh.chadha@lehman.com>
To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, January 21, 2004 11:25 AM
Subject: 2 NIC cards not talking


| Hi,
|
| I have a linux box with 2 NIC cards, both are properly configured.=20
| Both
are
| on the same subnet, but still don't ping to one another!!
|
| I need to setup the box as the firewall/router that has eth0 set as
external
| and eth1 as internal serving as DHCP server to other computers on the=
=20
| network. Both have static IPs assigned to them.
|
| Regards,
| Devesh
| 6-6859
|
|
| ---------------------------------------------------------------------=
-
| ----
----
| This message is intended only for the personal and confidential use o=
f=20
| the designated recipient(s) named above.  If you are not the intended
recipient of
| this message you are hereby notified that any review, dissemination,=20
| distribution or copying of this message is strictly prohibited.  This=
=20
| communication is for information purposes only and should not be=20
| regarded
as
| an offer to sell or as a solicitation of an offer to buy any financia=
l=20
| product, an official confirmation of any transaction, or as an=20
| official statement of Lehman Brothers.  Email transmission cannot be=20
| guaranteed to
be
| secure or error-free.  Therefore, we do not represent that this
information is
| complete or accurate and it should not be relied upon as such.  All=20
| information is subject to change without notice.
|
| -
| To unsubscribe from this list: send the line "unsubscribe=20
| linux-newbie" in the body of a message to majordomo@vger.kernel.org=20
| More majordomo info at  http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org More majordomo info =
at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-----------------------------------------------------------------------=
-------
This message is intended only for the personal and confidential use of =
the designated recipient(s) named above.  If you are not the intended r=
ecipient of this message you are hereby notified that any review, disse=
mination, distribution or copying of this message is strictly prohibite=
d.  This communication is for information purposes only and should not =
be regarded as an offer to sell or as a solicitation of an offer to buy=
 any financial product, an official confirmation of any transaction, or=
 as an official statement of Lehman Brothers.  Email transmission canno=
t be guaranteed to be secure or error-free.  Therefore, we do not repre=
sent that this information is complete or accurate and it should not be=
 relied upon as such.  All information is subject to change without not=
ice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
