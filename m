From: Parav Pandit <paravpandit@yahoo.com>
Subject: ioctl() hangs in lite5200b FEC driver
Date: Fri, 4 Aug 2006 03:14:23 -0700 (PDT)
Message-ID: <20060804101423.4266.qmail@web36613.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

1. Is drivers/net/fec.c is the correct driver for the
Lite5200B board in 2.6.x?

2. If yes, it doesn't have any implementation for
do_ioctl() call. In my case ifconfig tries to set the
IFF_RUNNING | IFF_UP flag using SIOCGIFFLAGS ioctl
cmd, but my ifconfig utility hangs in the ioctl().
Can some one tell me why does it hang?
Can some one tell me, when do_ioctl() is not
implemented by the driver, than which default function
gets called by the system?

Regards,
Parav Pandit




__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
