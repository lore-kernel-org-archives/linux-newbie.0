From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: ncurses
Date: Thu, 18 Apr 2002 20:43:12 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02041820431209.04062@unix.pa3gcu>
References: <20020418164744.67532.qmail@web12202.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020418164744.67532.qmail@web12202.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: glen <inavaganza@yahoo.com>, linux-newbie@vger.kernel.org

On Thursday 18 April 2002 16:47, glen wrote:
> I am trying to use the menuconfig command to upgrade
> my kernel.  It returns the error that I need Ncurses
> installed.  I installed Ncurses and ran ldconfig.  I
> still get the error:

You failed to say how you installed ncurses and what the archive was called.
Just what did you install, most folks mistakes are that they dont read the 
INSTALL file before issuing ./configure --options where options are what you 
choose from the README file also included in the ncurses archive(s).

>
> rm -f include/asm
> ( cd include ; ln -sf asm-i386 asm)
> make -C scripts/lxdialog all
> make[1]: Entering directory
> `/usr/src/linux/scripts/lxdialog'
> /usr/bin/ld: cannot find -lncurses
> collect2: ld returned 1 exit status
>
> >> Unable to find the Ncurses libraries.

This is saying i cant find the following which should be in /lib
/lib/libncurses.so.5 -> libncurses.so.5.2*
 /lib/libncurses.so.5.2*

> >>
> >> You must have Ncurses installed in order
> >> to use 'make menuconfig'
>
> make[1]: *** [ncurses] Error 1
> make[1]: Leaving directory
> `/usr/src/linux/scripts/lxdialog'
> make: *** [menuconfig] Error 2

If all else fails simply use 'make config' no ncurses needed then.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
