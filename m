From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian libc6 upgrade
Date: Wed, 28 Jan 2004 14:30:44 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040128142349.020075d0@celine>
References: <200401281652.39190.micha@topsurf.com>
 <200401272140.53742.michael.scondo@arcor.de>
 <5.1.0.14.1.20040127140555.01fe9d38@celine>
 <200401281652.39190.micha@topsurf.com> <200401282227.38737.michael.scondo@arcor.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401282227.38737.michael.scondo@arcor.de>
References: <200401281652.39190.micha@topsurf.com>
 <200401272140.53742.michael.scondo@arcor.de>
 <5.1.0.14.1.20040127140555.01fe9d38@celine>
 <200401281652.39190.micha@topsurf.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: michael.scondo@arcor.de, linux-newbie@vger.kernel.org

At 10:27 PM 1/28/2004 +0100, Michael Scondo wrote:
> > > > > Hi to all,
> > > > > I'm running a mixed Debian Woody, with a few backports and libc6
> > > > > 2.3.1-16. Now I would like to upgrade to libc6 2.3.2.ds1-10.
> > > > > Anything runs fine - until I try to compile a program :
>
> > The current version of libc6 for woody is 2.2.5-11.5, mixed system, because
> > I already upgraded libc6 and a few other packages.
> > However, I had first an woody testing system. Then I upgraded the libc6
> > from 2.2.4-7 to 2.3.1-16 via aptitude, this was the testing release this
> > time. But everything run fine, beside the fact, using the praeprocessor for
> > compiling a program didn't succeed.. :-)
> > But the compiler did his job.
> > Now I did again this upgrade of libc6, also of libc6-dev and
> > linux-kernel-headers using aptitude.
> > Maybe, I've got the wrong version of gcc (2.95.4-9 now ) ?
> >
>
>It drives me crazy - I upgraded now gcc and g++ and the depending librarys -
>gcc compiles fine, but the praeprocessor still doesn't make his job at least
>it seems to me to be the praeprocessor.
>
>micha@betageuze:~/prog/test/t2$ gcc -o hallo hallo.c
>micha@betageuze:~/prog/test/t2$ ./hallo
>Hallo !
>micha@betageuze:~/prog/test/t2$ gcc -o hallo hallo.cpp
>/tmp/ccUmthd6.o(.eh_frame+0x11): undefined reference to `__gxx_personality_v0'
>collect2: ld returned 1 exit status
>micha@betageuze:~/prog/test/t2$
>
>Anyone has a tip ?

I can only find references to this label in newer C++ libraries, the ones 
intended for use with gcc 3.2.x and 3.3.x . So I'd suspect a version 
mismatch involving libstdc++ ... certainly a risk when you do fragmentary 
upgrading of the sort you do ... especially with gcc and related stuff, 
where the move from 2.9.5 to the various 3.*.* versions involved major 
changes, particularly to the C++ components of the compiler suite.

Hard to say for certai, though, since Iyou do not say what versions of any 
of the rest of this stuff (cpp, libstdc++, the associated -dev package, and 
a few other odds and ends) you are using. Your best bet, I suspect, is to 
do a proper apt-get undate/upgrade and let the package-management system 
wort everything out for you ... if that is a possible solution for you.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
