From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: 2 ethernet jacks -> single net connection?
Date: Thu, 8 Jan 2004 21:15:36 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <015801c3d645$b4d2b0a0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie list <linux-newbie@vger.kernel.org>

So.., once this modules is compiled, how do i set up two of many eth ca=
rds
in one machine to work like this?. May be it's automatically?.
 If i have a machine acting as router, and it has 4 eth cards, and two =
of
these, are connected to another one machine. How can i tell my router, =
wich
of those are de two i want to use "bonded" ?

 Thanks !

----- Original Message -----
=46rom: "Beolach" <beolach@comcast.net>
To: "James Miller" <jamtat@mailsnare.net>
Cc: <linux-newbie@vger.kernel.org>
Sent: Thursday, January 08, 2004 1:58 AM
Subject: Re: 2 ethernet jacks -> single net connection?


| First off, I have no actual experience with this, and I am just going
| off the kernel documentation.  It is possible, and you even remembere=
d
| the term correctly - ethernet channel bonding.  What will most likely=
 be
| the deciding factor on whether or not you can actually set this up is=
 if
| the other end of the two ethernet channels (probably your ISP) suppor=
ts
| bonding.  Here's the a direct quote from the relevant kernel
documentation.
|
| <BLOCKQUOTE>
| Bonding driver support BONDING
|
| Say 'Y' or 'M' if you wish to be able to 'bond' multiple Ethernet
| Channels together. This is called 'Etherchannel' by Cisco,
| 'Trunking' by Sun, and 'Bonding' in Linux.
|
| If you have two Ethernet connections to some other computer, you can
| make them behave like one double speed connection using this driver.
| Naturally, this has to be supported at the other end as well, either
| with a similar Bonding Linux driver, a Cisco 5500 switch or a
| SunTrunking SunSoft driver.
|
| This is similar to the EQL driver, but it merges Ethernet segments
| instead of serial lines.
|
| To compile this driver as a module, choose M here: the module
| will be called bonding.
| </BLOCKQUOTE>
|
| Good luck & let us know if you get this working,
| Conway S. Smith

--
=46acundo Su=E1rez
Neuqu=E9n - Argentina
=46DSoft
mail y jabber: faco@fdsoft.com.ar
facundo.suarez@ensi.com.ar

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
