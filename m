From: Micha <micha@topsurf.com>
Subject: Re: Debian libc6 upgrade
Date: Wed, 28 Jan 2004 16:52:38 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401281652.39190.micha@topsurf.com>
References: <200401272140.53742.michael.scondo@arcor.de> <5.1.0.14.1.20040127140555.01fe9d38@celine>
Reply-To: micha@topsurf.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040127140555.01fe9d38@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> > > Hi to all,
> > > I'm running a mixed Debian Woody, with a few backports and libc6
> > > 2.3.1-16. Now I would like to upgrade to libc6 2.3.2.ds1-10.
> > > Anything runs fine - until I try to compile a program :
>
> Sorry I missed this the first time through. Let me ask the basic question:
> when you upgraded libc6, did you also upgrade libc6-dev (the .deb with the
> header files) to match?
>
> I run Sid here, so offhand I do not know what libc6 is "current" for Woody
> ... so I can't deduce from what you posted if you did your libc6 upgrade
> through Debian package management or if it is part of what makes this what
> you call a "mixed" system.

The current version of libc6 for woody is 2.2.5-11.5, mixed system, because I 
already upgraded libc6 and a few other packages.
However, I had first an woody testing system. Then I upgraded the libc6 from 
2.2.4-7 to 2.3.1-16 via aptitude, this was the testing release this time. But 
everything run fine, beside the fact, using the praeprocessor for compiling a 
program didn't succeed.. :-)
But the compiler did his job.
Now I did again this upgrade of libc6, also of libc6-dev and 
linux-kernel-headers using aptitude.
Maybe, I've got the wrong version of gcc (2.95.4-9 now ) ?


Micha

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
