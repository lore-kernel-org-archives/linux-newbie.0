From: lawson_whitney@juno.com
Subject: Re: ncurses
Date: Sat, 20 Apr 2002 12:03:17 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020420.123226.134669216.0.lawson_whitney@juno.com>
References: <20020418164744.67532.qmail@web12202.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020418164744.67532.qmail@web12202.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: inavaganza@yahoo.com, lawson_whitney@juno.com
Cc: linux-newbie@vger.kernel.org

On Thu, 18 Apr 2002, glen wrote:

> I am trying to use the menuconfig command to upgrade
> my kernel.  It returns the error that I need Ncurses
> installed.  I installed Ncurses and ran ldconfig.  I
> still get the error:
>
> rm -f include/asm
> ( cd include ; ln -sf asm-i386 asm)
> make -C scripts/lxdialog all
> make[1]: Entering directory
> `/usr/src/linux/scripts/lxdialog'
> /usr/bin/ld: cannot find -lncurses
> collect2: ld returned 1 exit status
>
make menuconfig compiles a program that uses ncurses.  To do that on an
rpm-based system, you need to install both ncurses and ncurses-devel.
You need ncurses to run a program that uses ncurses, and ncurses-devel
to compile such a program on your system.

Lawson

Only guessing, of course.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
