From: Michael Scondo <michael.scondo@arcor.de>
Subject: Re: Debian libc6 upgrade
Date: Wed, 28 Jan 2004 22:27:38 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401282227.38737.michael.scondo@arcor.de>
References: <200401272140.53742.michael.scondo@arcor.de> <5.1.0.14.1.20040127140555.01fe9d38@celine> <200401281652.39190.micha@topsurf.com>
Reply-To: michael.scondo@arcor.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401281652.39190.micha@topsurf.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> > > > Hi to all,
> > > > I'm running a mixed Debian Woody, with a few backports and libc6
> > > > 2.3.1-16. Now I would like to upgrade to libc6 2.3.2.ds1-10.
> > > > Anything runs fine - until I try to compile a program :

> The current version of libc6 for woody is 2.2.5-11.5, mixed system, because
> I already upgraded libc6 and a few other packages.
> However, I had first an woody testing system. Then I upgraded the libc6
> from 2.2.4-7 to 2.3.1-16 via aptitude, this was the testing release this
> time. But everything run fine, beside the fact, using the praeprocessor for
> compiling a program didn't succeed.. :-)
> But the compiler did his job.
> Now I did again this upgrade of libc6, also of libc6-dev and
> linux-kernel-headers using aptitude.
> Maybe, I've got the wrong version of gcc (2.95.4-9 now ) ?
>

It drives me crazy - I upgraded now gcc and g++ and the depending librarys - 
gcc compiles fine, but the praeprocessor still doesn't make his job at least 
it seems to me to be the praeprocessor.

micha@betageuze:~/prog/test/t2$ gcc -o hallo hallo.c
micha@betageuze:~/prog/test/t2$ ./hallo
Hallo !
micha@betageuze:~/prog/test/t2$ gcc -o hallo hallo.cpp
/tmp/ccUmthd6.o(.eh_frame+0x11): undefined reference to `__gxx_personality_v0'
collect2: ld returned 1 exit status
micha@betageuze:~/prog/test/t2$ 

Anyone has a tip ?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
