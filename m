From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Recovery help (Maybe OT)
Date: Thu, 27 Jun 2002 09:06:31 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020627070631.96452.qmail@web13103.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi
I'm new to the list.
If this is OT please tell me and i won't bother=20
you again.

I'm not a newbie but I need help.
I managed to do a rm -rf /
It erased my /bin /boot /dev=20
and something from /mnt

I recovered from backup but can't=20
boot.

I boot the default kernel, it boots fine.
=2E.. boot messages here
Mounting root ext2 fs read-only
=46reeing unused kernel memory=20
Mounted devices in /dev
Init version 2.83 booting
INIT: cannot execute /etc/rc.d/rc.S
INIT: cannot execute /etc/rc.d/rc.M
INIT: cannot execute /sbin/agetty
INIT: respawning too fast, disabled for five minutes

Those files _are_ there and _are_ executable.
(I verified by booting from the slackware 8.0
install-cd and mounting the partitioin and ls -l)

If I try to boot with init=3D/bin/sh

No init found -- kerne panic :-)

=46rom my experience this seems to be a /dev/ problem

Any ideas what should i do ?

Thanls=20
Calin


___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
