From: Richard Spencer <rspr@sunflower.com>
Subject: unable to make dep; limit.h
Date: Sun, 2 Feb 2003 21:12:10 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030202211210.A2446@jetty>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


I hope someone can point me in the right direction. I tried to compile a new kernel (version 2.4.20) and I ended up with the following error message:

[root@jetty linux-2.4.20]# make dep
gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -o scripts/mkdep scripts/mkdep.c
In file included from /usr/include/bits/posix1_lim.h:126,
                 from /usr/include/limits.h:30,
                 from /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:117,
                 from /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/syslimits.h:7,
                 from /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:11,
                 from scripts/mkdep.c:35:
/usr/include/bits/local_lim.h:27: linux/limits.h: No such file or directory
make: *** [scripts/mkdep] Error 1

I currently run Linux kernel 2.2.22 on a pentium laptop and RedHat 6.2 and I would appreciate any help or suggestions as to where to look. Thank you!



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
