From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: inittab
Date: Wed, 31 Mar 2004 12:51:38 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <406AA2BA.7020209@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Good morning,

Following is from /etc/inittab on a client running Slackware-9.0.

# These are the standard console login getties in multiuser mode:
c1:1235:respawn:/sbin/agetty 38400 tty1 linux
c2:1235:respawn:/sbin/agetty 38400 tty2 linux
c3:1235:respawn:/sbin/agetty 38400 tty3 linux
c4:1235:respawn:/sbin/agetty 38400 tty4 linux
c5:1235:respawn:/sbin/agetty 38400 tty5 linux
c6:12345:respawn:/sbin/agetty 38400 tty6 linux
c7:12345:respawn:/usr/X11/bin/XFree86 -query 192.168.0.1 :1 vt08

The last line is added by me. Sure enough, I get a display on vt08 from 
the server, which is running Mandrake-9.2. So far, so good. The two 
things I cannot work out, however many times I re-read man inittab, are
1. How do I stop the local X system from giving me a login screen? (it 
comes up on vt02)
2. Why have I not got any text consoles? (they are all just black with a 
blinking cursor).
Thank-you all very much in advance,
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
