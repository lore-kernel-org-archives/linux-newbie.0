From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 12:13:03 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003a01c3e031$111df0a0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie list <linux-newbie@vger.kernel.org>

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
| I have a linux box with 2 NIC cards, both are properly configured. Bo=
th
are
| on the same subnet, but still don't ping to one another!!
|
| I need to setup the box as the firewall/router that has eth0 set as
external
| and eth1 as internal serving as DHCP server to other computers on the
| network. Both have static IPs assigned to them.
|
| Regards,
| Devesh
| 6-6859
|
|
| ---------------------------------------------------------------------=
-----
----
| This message is intended only for the personal and confidential use o=
f the
| designated recipient(s) named above.  If you are not the intended
recipient of
| this message you are hereby notified that any review, dissemination,
| distribution or copying of this message is strictly prohibited.  This
| communication is for information purposes only and should not be rega=
rded
as
| an offer to sell or as a solicitation of an offer to buy any financia=
l
| product, an official confirmation of any transaction, or as an offici=
al
| statement of Lehman Brothers.  Email transmission cannot be guarantee=
d to
be
| secure or error-free.  Therefore, we do not represent that this
information is
| complete or accurate and it should not be relied upon as such.  All
| information is subject to change without notice.
|
| -
| To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
| the body of a message to majordomo@vger.kernel.org
| More majordomo info at  http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
