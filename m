From: Alexei Babich <a.babich@rez.ru>
Subject: crosscompiling error with CFLAGS+=-O0
Date: Sun, 18 May 2008 15:42:15 +0600
Message-ID: <200805181542.15445.a.babich@rez.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello all.
When I crosscompile linux-2.6.25 (make ARCH=arm CROSS_COMPILE=arm-unknown-linux-gnu- spitz_defconfig; make ARCH=arm CROSS_COMPILE=arm-unknown-linux-gnu- zImage) with changed Makefile (by hand) from:
----
ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
KBUILD_CFLAGS   += -Os
else
KBUILD_CFLAGS   += -O2
endif
---

to:
----
ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
KBUILD_CFLAGS   += -Os
else
KBUILD_CFLAGS   += -O0
endif
---
.....for debugging, compilation crashes with error:

---
net/ipv4/xfrm4_state.c:70: error: initializer element is not constant
net/ipv4/xfrm4_state.c:70: error: (near initialization for 'xfrm4_state_afinfo.eth_proto')
make[2]: *** [net/ipv4/xfrm4_state.o] Error 1
make[1]: *** [net/ipv4] Error 2
make: *** [net] Error 2
---

How I can correct crosscompile for debugging ?

Thank you.

-- 
Regards,
Alexei Babich, chematic engineer, OOO NPP "Rezonans", Chelyabinsk, Russia
http://www.rez.ru
Jabber ID: impatt@jabber.ru
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
