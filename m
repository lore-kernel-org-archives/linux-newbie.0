From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Mon, 13 Sep 2004 17:27:24 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040914002724.29752.qmail@web53609.mail.yahoo.com>
References: <200409131406.13503.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200409131406.13503.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>, Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!

thank you very much for your information.
and i'm so sorry for not stating everything that i was
doing.

anyway, i was trying to compile the snull sample that
i got from
http://www.oreilly.com.tw/editor_column/a138_read.html
on linux-sh-2.4.18. since i found some problem, i
modified the Rules.make (not exactly the Makefile as
previously mentioned). 

the original errors were:
[aphrodite@aphrodite2 snull2]$ make clean;make
rm -f *.o *~ core .depend
gcc -Wall -D__KERNEL__ -DMODULE
-I/usr/src/linux/include -O -g -DSNULL_DEBUG  -I.. -M
snull.c > .depend
In file included from
/usr/src/linux/include/linux/config.h:4,
                 from snull.c:25:
/usr/include/linux/autoconf.h:1:2: #error Invalid
kernel header included in userspace
In file included from snull.c:51:
/usr/src/linux/include/asm/checksum.h:72:30: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:105:17: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:121:13: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:161:17: warning:
multi-line string literals are deprecated
make: *** [.depend] Error 1

linux wass already linked as
linux -> linux-sh-2.4.18


and now, seeing on the
/usr/include/linux/autoconf.h:1:2: #error Invalid
kernel header included in userspace

in the /usr/src/linux-sh-2.4.18/include/linux
i just put an empty autoconf.c
(i read this in one of the m-lists)
but got these errors:
[aprhodite@aprhodite2 snull2]$ make clean;make
rm -f *.o *~ core .depend
gcc -Wall -D__KERNEL__ -DMODULE
-I/usr/src/linux/include -O -g -DSNULL_DEBUG  -I.. -M
snull.c > .depend
In file included from snull.c:51:
/usr/src/linux/include/asm/checksum.h:72:30: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:105:17: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:121:13: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:161:17: warning:
multi-line string literals are deprecated
gcc -Wall -D__KERNEL__ -DMODULE
-I/usr/src/linux/include -O -g -DSNULL_DEBUG  -I..  
-c -o snull.o snull.c
In file included from
/usr/src/linux/include/linux/prefetch.h:13,
                 from
/usr/src/linux/include/linux/list.h:6,
                 from
/usr/src/linux/include/linux/module.h:12,
                 from snull.c:26:
/usr/src/linux/include/asm/processor.h:56:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/asm/processor.h:56: requested
alignment is not a constant
In file included from
/usr/src/linux/include/asm/hardirq.h:6,
                 from
/usr/src/linux/include/linux/interrupt.h:45,
                 from snull.c:34:
/usr/src/linux/include/linux/irq.h:65:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/linux/irq.h:65: requested
alignment is not a constant
In file included from
/usr/src/linux/include/linux/interrupt.h:45,
                 from snull.c:34:
/usr/src/linux/include/asm/hardirq.h:16:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/asm/hardirq.h:16: requested
alignment is not a constant
In file included from snull.c:34:
/usr/src/linux/include/linux/interrupt.h:128:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/linux/interrupt.h:128:
requested alignment is not a constant
In file included from snull.c:37:
/usr/src/linux/include/linux/netdevice.h:164:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/linux/netdevice.h:164:
requested alignment is not a constant
In file included from snull.c:37:
/usr/src/linux/include/linux/netdevice.h:481:
`CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a
function)
/usr/src/linux/include/linux/netdevice.h:481:
requested alignment is not a constant
In file included from snull.c:51:
/usr/src/linux/include/asm/checksum.h:72:30: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:105:17: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:121:13: warning:
multi-line string literals are deprecated
/usr/src/linux/include/asm/checksum.h:161:17: warning:
multi-line string literals are deprecated
make: *** [snull.o] Error 1




i am quite confused now since i think that i am just
going in circles with this compilation . . .



any kind of information are greatly appreciated.
(anyway, i will still also need to read the links that
were given)



--- Richard Adams <pa3gcu@zeelandnet.nl> wrote:

> On Monday 13 September 2004 08:52, Donald Duckie
> wrote:
> > hi!
> >
> > can somebody please tell me what's going on with
> this.
> > i have been changing my makefiles, in which i have
> > been going in circles now.
> 
> You should have told us just what you are tying to
> do and how you are trying 
> to achive it, yes one can see you are compiling, but
> what commands did you do 
> beforehand, no way should you need to change
> Makefiles period, you may want 
> to edit the Top dir Makefile and add an EXTRAVERSION
> number tho'. which may 
> well save you a lot of problems if you succed in
> compiling and then the 
> kernel wont boot.
> Anyway, your directory sructure is broken, as i see
> it you have a directory or 
> a symlink called /usr/src/inux-sh-2.4.18 you can
> have your source in any 
> directory you want, _however_ you are well advised
> to create a symlink called 
> linux pointing to where ever your source is, here is
> an example.
> 
> cd /usr/src
> ls -al 
> linux -> linux-sh-2.4.18
> linux-sh-2.4.18
> 
> >
> > gcc -Wall -D__KERNEL__ -DMODULE
> > -I/usr/src/linux-sh-2.4.18//include -O -g
> > -DSNULL_DEBUG  -I.. -M snull.c > .depend
> > In file included from
> > /usr/src/linux-sh-2.4.18/include/linux/config.h:4,
> >                  from snull.c:25:
> > /usr/include/linux/autoconf.h:1:2: #error Invalid
> > kernel header included in userspace
> > In file included from snull.c:51:
> >
>
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:72:30:
> > warning: multi-line string literals are deprecated
> >
>
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:105:17:
> > warning: multi-line string literals are deprecated
> >
>
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:121:13:
> > warning: multi-line string literals are deprecated
> >
>
/usr/src/linux-sh-2.4.18/include/asm/checksum.h:161:17:
> > warning: multi-line string literals are deprecated
> > make: *** [.depend] Error 1
> 
> All the errors are from 'depend' that means you
> possably have NOT configured 
> your kernel to start with.
> 
> For a quick HOWTO on making kernels goto;
> http://people.zeelandnet.nl/pa3gcu/kernel.htm
> Its old but is still valid for 2.4.x kernels.
> 
> Or read the README in the kernel source or read the
> Kernel-HOWTO found mostly 
> in /usr/share/doc/*
> Or
> http://www.linuxdocs.org/HOWTOs/Kernel-HOWTO.html
> 
> > thanks.
> 
> -- 
> If the Linux community is a bunch of theives because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
__________________________________
Do you Yahoo!?
Yahoo! Mail is new and improved - Check it out!
http://promotions.yahoo.com/new_mail
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
