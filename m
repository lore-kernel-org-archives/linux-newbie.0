From: ik5bcu@tin.it
Subject: PPPD SETUID??
Date: Wed, 21 May 2003 10:12:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC19ADF0000C470@ims3c.cp.tin.it>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello all,
I activated my Motorola T260 gprs mobile phone to work with my linux-box
acting
as the default Modem.

By the way I cannot use RH Dialer since (may be) something is different
on the
internal commands of the mobile telephone's modem,for this reason I realized
a
script that I can use *only* by setting /usr/sbin/pppd with the following
permissions:

[root linux run]# ls -la /usr/sbin/pppd
-rwsr-xr-x    1 root     root       213202 lug 22  2002 /usr/sbin/pppd

permissions= 104755

I now have two problems/questions:

1) Is there another way to activate /dev/ttyS0 with ppp without using SETUID
?

2) Whenever I activate the interface,which command should I run to shut-down
it?

Note that I WANT use this interface as user and not as ROOT!

Many Thanks,See U

---
http://www.qsl.net/ik5bcu
Red Hat Linux release 7.3 (Valhalla) kernel 2.4.18-27.7.x
This message was sent by XFMail




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
