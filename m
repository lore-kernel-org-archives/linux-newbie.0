From: Onur Kucuk <onur@delipenguen.net>
Subject: Re: LAN
Date: Fri, 26 Dec 2003 20:39:14 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031226203914.45a2c597.onur@delipenguen.net>
References: <200312260932.56772.pa3gcu@zeelandnet.nl>
	<20031226165533.46185.qmail@web21407.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031226165533.46185.qmail@web21407.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org


On Fri, 26 Dec 2003 10:55:33 -0600 (CST)
Jose Colmenares <jbcolmena2003@yahoo.com> wrote:

JC> I'm using slackware 9.1

 Then you can make your configuration by editing the file /etc/rc.d/rc.=
inet1.conf

 Have your /etc/rc.d/rc.inet1  have execute permission ( chmod +x file =
)


JC> the LAN card is an old GENIUS LAN

 This info most probably is not enough to tell you what module supports=
 your card.

 Do a "lspci -v" and get more detail about your card.=20

 If you have /etc/rc.d/rc.hotplug as executable, it probably will detec=
t your card and install the necessary kernel module when you boot.=20


JC> ifconfig -a:
JC>=20
JC> link encap:Local Loopback
JC> inet addr:127.0.0.1 Mask:255.0.0.0
JC> UP LOOPBACK RUNNING  MTU:164436  Metric:1
JC> Rx packets:218 erros:0 dropped:0 overruns:0 frame:0
JC> TX packets:218 erros:0 dropped:0 overruns:0 carrier:0
JC> collisions:0 txqueuelen:0
JC> RX bytes:17370 (16.9Kb)  TX bytes:17370 (16.9Kb)
JC>=20
JC> uname -a:
JC> Linux Cic3 2.4.22 #6 Tue Sp 2 17:43:01 PDT 2003 i686
JC> unknown unknow GNU/Linux
JC>=20
JC> And yes, the lan uses a dhcp server for configuration
JC> (or so I understand). I have three machines conected
JC> to a hub on a PIII runing XP. The IP is giving
JC> everytime it restarts.
JC>=20
JC> I runned netconfig, but never I have been asked about
JC> what device I'm using. /etc/rc.d/rc.netdevice does not
JC> exists!=20

 Doesn't have to.


JC> so I don't know how to tell the cpu wich
JC> driver to use, neither to conect to the internet
JC> through the LAN.

 Just check what rc.hotplug does. It might have already done (check wit=
h the command lsmod)


JC>=20
JC> By the way, when I try to put a CD to play music, it
JC> does not mount it. Says "wrong fs type, bad option,
JC> bad superblock on /dev/cdrom, or too many mounted file
JC> systems", but I mount the iso cd through wich I
JC> installed Slackware goes smooth. =BFis the the file
JC> system? if so, =BFwich one should i use?

 Music CD's don't have "filesystems" that you can browse. An applicatio=
n may emulate as if they have, but they don't. Just put the cd and star=
t a cd player program.



--=20
 Onur Kucuk
 <onur@delipenguen.net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
