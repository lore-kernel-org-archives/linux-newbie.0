From: =?iso-8859-1?q?Jose=20Colmenares?= <jbcolmena2003@yahoo.com>
Subject: IO
Date: Fri, 2 Jan 2004 17:39:18 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040102233918.54184.qmail@web61103.mail.yahoo.com>
References: <Pine.LNX.4.53.0401022344270.656@grinch.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0401022344270.656@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

 Found isapnptools.=20
did pnpdump, but don't understand what is says! I
cannot copy isapnp.conf.sample here because my floppy
broke down (just to add more fun) and or course don't
have internet on my slack box.=20

It does say something like: minimum IO base adress
0x0280, maximun IO base adress 0x03e0. Tried both on
modprobe, none worked (when I see the syslog no card
was found with such an adress).

=BFhow do i know how to edit isapnp.conf.... ?=20

Also, on dmesg, it says:
isapnp: Card 'Genius LAN GE2000III Series Card'
isapnp: 1 plug & play card detected total.

Also, i wrote down the following before formatting
windows. It was using this:=20

Raltek rtl8019 or compatible
	i/o interval 02c0-02df
        Memory interval 000DC000-000DFFFF
and was using a NE2000.sys file for the device



_________________________________________________________
Do You Yahoo!?
Informaci=F3n de Estados Unidos y Am=E9rica Latina, en Yahoo! Noticias.
Vis=EDtanos en http://noticias.espanol.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
