From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Alternate network connections
Date: Sat, 21 Jun 2003 01:40:52 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306210129420.21796@reg_kipling>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Well, looks like I've finally got a kernel in my iBook which is going to
allow all the things I want but haven't had (principally, accessing the
rtc and ppp), so now I need to figure out how to manage the
connectivity.

 At the moment, my only connectivity is through eth0 when I'm at home,
using a fixed IP address.  What I'd like to do is set up a script
allowing initially

(a) no connectivity - (the way it will boot, in runlevel 3, so I guess I
want things like loopback configured all the time)

(b) connection to my home network via eth0

(c) modem connection via /dev/ppp0.

I can live with having to reboot to change from network to ppp or vice
versa, but I'm not at all familiar with any of this.  I'm not even sure
what I should search for on google to get pointers on how to do this.
Anybody got any advice, please ?

Ken
-- 
You'll always find me out to lunch
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
