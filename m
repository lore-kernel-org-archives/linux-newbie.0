From: Donald Duckie <schipperke2000@yahoo.com>
Subject: unresolved symbol __udivsi3_i4
Date: Wed, 22 Sep 2004 03:23:18 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040922102318.49223.qmail@web53601.mail.yahoo.com>
References: <20040922025139.84087.qmail@web53610.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040922025139.84087.qmail@web53610.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!


Thank you very much for your help on
Subject: Invalid kernel header included in userspace;
multi-line string literals are deprecated :-)
I finally understood where I should be doing depmod
and what I need to do with its generated files.


There is one thing that is currently bugging me
though. Upon running modprobe, this is what I
currently got:
Using /lib/modules/2.4.18-sh/kernel/drivers/net/snull.
  <cut>
modprobe: unresolved symbol __udivsi3_i4
  <cut>


The gcc version that is used is:
[aprhodite@aphrodite2 bin]$ sh-linux-gcc -v
Reading specs from
/usr/lib/gcc-lib/sh-linux/3.0.3/specs
Configured with: ../configure --prefix=/usr
--mandir=/usr/share/man --target=sh-linux
--host=i686-pc-linux-gnu --build=i
686-pc-linux-gnu --disable-c99 --disable-nls
--enable-languages=c,c++ --with-system-zlib
--with-gxx-include-dir=/usr/sh-
linux/include/g++-v3
--includedir=/usr/sh-linux/include
--enable-threads=posix --enable-long-long
Thread model: posix
gcc version 3.0.3


Running nm -l-s snull.o
00000000 a *ABS*
  <cut>
         U __udivsi3_i4
/home/aphrodite/snull/snull3/snull/snull.c:355
  <cut>


the block in snull.c that contains ine 355 is:
    352     if (lockup && ((priv->stats.tx_packets +
1) % lockup) == 0) {
    353         /* Simulate a dropped transmit
interrupt */
    354         netif_stop_queue(dev);
    355         PDEBUG("Simulate lockup at %ld, txp
%ld\n", jiffies,
    356                         (unsigned long)
priv->stats.tx_packets);
    357     }
(which seems to  be okey)


The only modification to the downloaded snull files is
on snull.c:
     30 //#include <linux/malloc.h> /* kmalloc() */
     31 #include <linux/slab.h> /* kmalloc()
deprecated use slab.h instead*/


can anyone please tell me how to deal with this
unresolved symbol __udivsi3_i4?


thank you very much.
-donald

__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
