From: Peter <pfheiss@philonline.com>
Subject: Vbox
Date: Fri, 25 Oct 2002 16:30:00 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210250830.g9P8U0c01961@philonline.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

on trying to set-up vbox I get the following messages:

on booting:
INIT: Id "I5" respawning too fast: disabled for 5 minutes

My entry in inittab is:
I5:2345:respawn:/usr/sbin/vboxgetty -d /dev/ttyI5

with command 
telnet localhost vboxd
I get:
Trying 127.0.0.1...
telnet: connect to address 127.0.0.1: Connection refused

and command vbox gives:
Connecting to 'localhost:20012'...
vbox: can't connect to 'localhost:20012

that number 20012 comes from the file /etc/services
vboxd           20012/tcp                       # voice box system
vboxd           20012/udp

What could be wrong?

Thanks & regards




-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
