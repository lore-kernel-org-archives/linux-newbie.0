From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Sun, 12 Sep 2004 23:52:43 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040913065243.40457.qmail@web53608.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!

can somebody please tell me what's going on with this.
i have been changing my makefiles, in which i have
been going in circles now.


gcc -Wall -D__KERNEL__ -DMODULE
-I/usr/src/linux-sh-2.4.18//include -O -g
-DSNULL_DEBUG  -I.. -M snull.c > .depend
In file included from
/usr/src/linux-sh-2.4.18/include/linux/config.h:4,
                 from snull.c:25:
/usr/include/linux/autoconf.h:1:2: #error Invalid
kernel header included in userspace
In file included from snull.c:51:
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:72:30:
warning: multi-line string literals are deprecated
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:105:17:
warning: multi-line string literals are deprecated
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:121:13:
warning: multi-line string literals are deprecated
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:161:17:
warning: multi-line string literals are deprecated
make: *** [.depend] Error 1


thanks.


		
__________________________________
Do you Yahoo!?
Yahoo! Mail is new and improved - Check it out!
http://promotions.yahoo.com/new_mail
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
