From: RimeGate@rime.org (SPAM.B.GONEftn@digdilem.org )
Subject: Exim borked
Date: Fri, 30 Aug 2002 23:09:02 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BAG2SMTP.1480023854.030749181@digdilem.org>
Reply-To: RimeGate@rime.org (SPAM.B.GONEftn@digdilem.org )
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org


Hello All

I've managed to break exim. :(

(Debian 3, Kernal 2.4.18)

/var/log/exim/paniclog reads thus:

Unable to get root to set uid 1000 and gid 8 for local delivery to=20
flash: uid=3D8 euid=3D8


Searched the web for help and it appears my uid is somehow screwed up=20
- but I don't know how to set the uid for exim so it runs as root, so=20
what I'm after is:

1. How to setuid exim as root (it's running as daemon) so it'll work.
2. Double-check the file permissions for /usr/sbin/exim against=20
somebody with a working copy.=20

Thanks!


--
Simon Avery, Dartmoor, UK   =DD   http://www.digdilem.org/
---
=FE RIMEGate(tm)/RGXPost V1.14 at BBSWORLD * Info@bbsworld.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
