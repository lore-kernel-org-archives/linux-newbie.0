From: glen <inavaganza@yahoo.com>
Subject: ncurses
Date: Thu, 18 Apr 2002 09:47:44 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020418164744.67532.qmail@web12202.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I am trying to use the menuconfig command to upgrade
my kernel.  It returns the error that I need Ncurses
installed.  I installed Ncurses and ran ldconfig.  I
still get the error:

rm -f include/asm
( cd include ; ln -sf asm-i386 asm)
make -C scripts/lxdialog all
make[1]: Entering directory
`/usr/src/linux/scripts/lxdialog'
/usr/bin/ld: cannot find -lncurses
collect2: ld returned 1 exit status

>> Unable to find the Ncurses libraries.
>>
>> You must have Ncurses installed in order
>> to use 'make menuconfig'

make[1]: *** [ncurses] Error 1
make[1]: Leaving directory
`/usr/src/linux/scripts/lxdialog'
make: *** [menuconfig] Error 2


__________________________________________________
Do You Yahoo!?
Yahoo! Tax Center - online filing with TurboTax
http://taxes.yahoo.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
