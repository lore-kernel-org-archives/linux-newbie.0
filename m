From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 13:47:10 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004a01c3e03e$368fe520$680410ac@pcinstru1>
References: <5F84A09ECDD5D411973000508BE32470266024E7@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie list <linux-newbie@vger.kernel.org>

 mmm, the ask is, how are you trying to conect your lan to internet ? u=
sing
iptables ?, using squid?

 What the system says if you execute "ifconfig" ?, are both up ?

 You are goingo to need more than a dhcp server to share internet to yo=
ur
lan. I guess you are goingo to use iptables at least.

 Sorry if i am saying to you, things you just know. May be i don't
understand you. :s

--
=46acundo Su=E1rez
Neuqu=E9n - Argentina
=46DSoft
mail y jabber: faco@fdsoft.com.ar
facundo.suarez@ensi.com.ar

----- Original Message -----
=46rom: "Chadha, Devesh" <devesh.chadha@lehman.com>
To: "'Juan Facundo Su=E1rez'" <facundo.suarez@ensi.com.ar>; "linux-newb=
ie
list" <linux-newbie@vger.kernel.org>
Sent: Wednesday, January 21, 2004 12:23 PM
Subject: RE: 2 NIC cards not talking


| Juan,
|
| Eth0 has the external assigned IP by my ISP. Eth1 has a 192.168.x.x i=
p
| address. Eth1 acts as the DHCP server for my LAN. My LAN is working f=
ine.
I
| can connect machines to the LAN and even connect one machine to anoth=
er.
|
| But I cannot get eth1 to talk to eth0. I cannot connect the LAN to th=
e
| internet nor connect to any internal machine from outside!!
|
| Do I need to bridge the 2 NICs ???
|
| Regards,
| Devesh
|
|
| -----Original Message-----
| From: Juan Facundo Su=E1rez [mailto:facundo.suarez@ensi.com.ar]
| Sent: Wednesday, January 21, 2004 10:13 AM
| To: linux-newbie list
| Subject: Re: 2 NIC cards not talking
|
|
| Sorry, i don't understand at all. You say that you have two cards, in=
 the
| same machine, are them in the same subnet ? why don't you put one, wi=
ch
| connects to "outside" in one, and the other in another subnet?. I hav=
e
| working a firewall/router with iptables, and the card is connected to=
 de
| adsl-modem has 192.168.1.10, and the card to brins internet to the la=
n has
| 192.168.0.1.
|
|  If you cannot ping from a machine in one subnet, to another in other
| subnet, maybe you need to load the kernel-module wich does that job.
|
| --
| Facundo Su=E1rez
| Neuqu=E9n - Argentina
| FDSoft
| mail y jabber: faco@fdsoft.com.ar
| facundo.suarez@ensi.com.ar
|
| ----- Original Message -----
| From: "Chadha, Devesh" <devesh.chadha@lehman.com>
| To: <linux-newbie@vger.kernel.org>
| Sent: Wednesday, January 21, 2004 11:25 AM
| Subject: 2 NIC cards not talking
|
|
| | Hi,
| |
| | I have a linux box with 2 NIC cards, both are properly configured.
| | Both
| are
| | on the same subnet, but still don't ping to one another!!
| |
| | I need to setup the box as the firewall/router that has eth0 set as
| external
| | and eth1 as internal serving as DHCP server to other computers on t=
he
| | network. Both have static IPs assigned to them.
| |
| | Regards,
| | Devesh
| | 6-6859
| |
| |
| | -------------------------------------------------------------------=
---
| | ----
| ----
| | This message is intended only for the personal and confidential use=
 of
| | the designated recipient(s) named above.  If you are not the intend=
ed
| recipient of
| | this message you are hereby notified that any review, dissemination=
,
| | distribution or copying of this message is strictly prohibited.  Th=
is
| | communication is for information purposes only and should not be
| | regarded
| as
| | an offer to sell or as a solicitation of an offer to buy any financ=
ial
| | product, an official confirmation of any transaction, or as an
| | official statement of Lehman Brothers.  Email transmission cannot b=
e
| | guaranteed to
| be
| | secure or error-free.  Therefore, we do not represent that this
| information is
| | complete or accurate and it should not be relied upon as such.  All
| | information is subject to change without notice.
| |
| | -
| | To unsubscribe from this list: send the line "unsubscribe
| | linux-newbie" in the body of a message to majordomo@vger.kernel.org
| | More majordomo info at  http://vger.kernel.org/majordomo-info.html
| | Please read the FAQ at http://www.linux-learn.org/faqs
|
| -
| To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
| the body of a message to majordomo@vger.kernel.org More majordomo inf=
o at
| http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs
|
| ---------------------------------------------------------------------=
-----
----
| This message is intended only for the personal and confidential use o=
f the
designated recipient(s) named above.  If you are not the intended recip=
ient
of this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regard=
ed as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed =
to be
secure or error-free.  Therefore, we do not represent that this informa=
tion
is complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.
|
| -
| To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
| the body of a message to majordomo@vger.kernel.org
| More majordomo info at  http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs
|

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
