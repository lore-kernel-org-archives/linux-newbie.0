From: =?koi8-r?B?6sE=?= <tirsatay@yandex.ru>
Subject: klibc compilation problem
Date: Sun, 22 Nov 2009 18:36:41 +0400
Message-ID: <AD7B35962E4144D38EC67DED720D4D52@someorga5aa935>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"; reply-type="original"
To: linux-newbie@vger.kernel.org

I have a problem with klibc-1.5.15 compilation on Linux Slackwre64 13.0. 
Before compilation I had patched klibc with this patch:
diff -Nur klibc-1.5.14.orig/scripts/Kbuild.klibc 
klibc-1.5.14/scripts/Kbuild.klibc
--- klibc-1.5.14.orig/scripts/Kbuild.klibc	2008-07-30 23:06:03.000000000 
+0200
+++ klibc-1.5.14/scripts/Kbuild.klibc	2008-12-29 23:59:14.000000000 +0100
@@ -103,7 +103,7 @@
                     -I$(KLIBCINC)
 # kernel include paths
 KLIBCKERNELSRC	 ?= $(srctree)/
-KLIBCCPPFLAGS    += -I$(KLIBCKERNELSRC)include		\
+KLIBCCPPFLAGS 
   += -I$(KLIBCKERNELSRC)include -I$(KLIBCKERNELSRC)arch/x86/include		\
                      $(if 
$(KBUILD_SRC),-I$(KLIBCKERNELOBJ)include2 -I$(KLIBCKERNELOBJ)include -I$(srctree)/include) 
\
 		     $(KLIBCARCHINCFLAGS)

It's necessary because without this patch make script of klibc can't find 
include directory in Linux sources. I also created link to linux source 
tree, called "make" and received this error message:
...
  YACC    usr/dash/arith.h
make[2]: *** [usr/dash/arith.h] Error 141
make[1]: *** [all] Error 2
make: *** [klibc] Error 2

With V=1 parameter (for more detailed output of make) make returns this:
...
make -rR -f scripts/Kbuild.klibc obj=usr/dash
  bison -d -o usr/dash/arith.c usr/dash/arith.y
make[2]: *** [usr/dash/arith.h] Error 141
make[1]: *** [all] Error 2
make: *** [klibc] Error 2

What's wrong? 

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
