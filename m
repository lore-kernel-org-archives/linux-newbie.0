From: =?iso-8859-1?q?Jose=20Colmenares?= <jbcolmena2003@yahoo.com>
Subject: Re: LAN
Date: Fri, 26 Dec 2003 10:55:33 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031226165533.46185.qmail@web21407.mail.yahoo.com>
References: <200312260932.56772.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312260932.56772.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

I'm using slackware 9.1
the LAN card is an old GENIUS LAN
ifconfig -a:

link encap:Local Loopback
inet addr:127.0.0.1 Mask:255.0.0.0
UP LOOPBACK RUNNING  MTU:164436  Metric:1
Rx packets:218 erros:0 dropped:0 overruns:0 frame:0
TX packets:218 erros:0 dropped:0 overruns:0 carrier:0
collisions:0 txqueuelen:0
RX bytes:17370 (16.9Kb)  TX bytes:17370 (16.9Kb)

uname -a:
Linux Cic3 2.4.22 #6 Tue Sp 2 17:43:01 PDT 2003 i686
unknown unknow GNU/Linux

And yes, the lan uses a dhcp server for configuration
(or so I understand). I have three machines conected
to a hub on a PIII runing XP. The IP is giving
everytime it restarts.

I runned netconfig, but never I have been asked about
what device I'm using. /etc/rc.d/rc.netdevice does not
exists! so I don't know how to tell the cpu wich
driver to use, neither to conect to the internet
through the LAN.

By the way, when I try to put a CD to play music, it
does not mount it. Says "wrong fs type, bad option,
bad superblock on /dev/cdrom, or too many mounted file
systems", but I mount the iso cd through wich I
installed Slackware goes smooth. =BFis the the file
system? if so, =BFwich one should i use?

Thanks a lot for answering so soon on holydays. Merry
Christmas!



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
