From: =?iso-8859-1?q?Jose=20Colmenares?= <jbcolmena2003@yahoo.com>
Subject: IO
Date: Fri, 2 Jan 2004 13:52:55 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040102195255.83648.qmail@web61108.mail.yahoo.com>
References: <200312272046.10811.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312272046.10811.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

 I posted a message about 5 days ago about troubles
setting a LAN. Well, i still having figured it out,
but have detected that i installed the wrong driver
for my card. I have a isa RTL8019, wich i found out
works with ne2000 support. But to set it i need to
know the io and irq adress... =BFhow could i find them?
and also, after this =BFhow do i made the proper changes
to my system?=20
I'm runing slack 9.1. the command lsmod says there is
a isa-pnp (wich could be my card), ifconfig only
detects a loopback (wich i don't really know what is,
but is not of any help) and i have no eth0 (wich seems
fine, since i have not been able to install any, but i
figure i need to do so, or not?)
Thanks.=20
By the way, the answers i got on the last post help
quite a lot, if not for solving the problem (wich was
imposible since i did not ask for the correct
information) for learning a few interesting things. Thanks!

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
