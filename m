From: 1stFlight <1stflight@ameritech.net>
Subject: Redhat 9 Can't Compile a Kernel??
Date: Tue, 22 Apr 2003 22:43:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304222243.19905.1stflight@ameritech.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-admin@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

 I get this error message when trying to compile kernel 2.4.20 patched to 
.21-rc1. What's gone wrong here? Thanks	

												Darryl

[root@localhost linux-2.4.20]# make xconfig
rm -f include/asm
( cd include ; ln -sf asm-i386 asm)
make -C scripts kconfig.tk
make[1]: Entering directory `/usr/src/linux-2.4.20/scripts'
gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o tkparse.o 
tkparse.c
gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o tkcond.o tkcond.c
gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o tkgen.o tkgen.c
gcc -o tkparse tkparse.o tkcond.o tkgen.o
cat header.tk >> ./kconfig.tk
./tkparse < ../arch/i386/config.in >> kconfig.tk
drivers/ide/Config.in: 46: can't handle dep_bool/dep_mbool/dep_tristate 
condition
make[1]: *** [kconfig.tk] Error 1
make[1]: Leaving directory `/usr/src/linux-2.4.20/scripts'
make: *** [xconfig] Error 2

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
