From: Travis Osterman <travis@wsor.net>
Subject: Re: Multi-kernel in grub
Date: 23 Jul 2003 22:20:12 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1059016812.21561.72.camel@localhost.localdomain>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
	 <5.1.0.14.1.20030722181649.0201cdf0@celine>
	 <1058935906.2992.31.camel@localhost.localdomain>
	 <200307230824.35748.pa3gcu@zeelandnet.nl>
Reply-To: travis@wsor.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307230824.35748.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I thank everyone again for their patience with me.  I have tried to methodically note everything I have done during the kernel compilation below.  Everything seems fine until the make install step.

make distclean // no errors
make clean // (probably redudant) no errors
emacs Makefile & // changed 'EXTRAVERSION = -first-try'
make mrproper // no errors
make xconfig // didn't change anything
make dep // no errors
make bzImage // seems fine, see below

Root device is (8, 7)
Boot sector 512 bytes.
Setup is 2623 bytes.
System is 1156 kB
warning: kernel is too big for standalone boot from floppy
make[1]: Leaving directory `/usr/src/linux-2.4.20-8/arch/i386/boot'


make modules // no errors
make modules_install // no errors
make install // errors, see below

warning: kernel is too big for standalone boot from floppy
sh -x ./install.sh 2.4.20-first-try bzImage
/usr/src/linux-2.4.20-8/System.map ""
+ '[' -x /root/bin/installkernel ']'
+ '[' -x /sbin/installkernel ']'
+ exec /sbin/installkernel 2.4.20-first-try bzImage
/usr/src/linux-2.4.20-8/System.map ''
No module aic7xxx found for kernel 2.4.20-first-try
mkinitrd failed
make[1]: *** [install] Error 1
make[1]: Leaving directory `/usr/src/linux-2.4.20-8/arch/i386/boot'
make: *** [install] Error 2

  Will these errors cause problems if I bypass the 'make install' and
copy files to my /boot dir?  Thanks again for the help.

-- Travis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
