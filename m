From: Ramzez <r4mz3z@yahoo.es>
Subject: How do I install my own service
Date: 02 Dec 2003 22:43:27 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1070306845.2760.4.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

HI friends...

  please, how can I install my own service (i'm using RH9.0).

  I make my script in /etc/rc.d/init.d ... something like this:
-------------------------- killMyTemp -----------------------
	#!/bin/sh
	rm -rf /home/FamilyGroup/tmp/*
--------------------------
  then I make a soft-link in /etc/rc.d/rc5.d ... 
  again, something like: ln -s ../init.d/killMyTemp K99killMyTemp ...

  But when I turn-off my PC, this script didn't run; why?

thanks

-- 
  Linux User Registered #232544
        ICQ : 337889406
  GnuPG-key : www.keyserver.net
 -------------------------------
"Software is like sex,
      it's better when it's free."
                  [Linus Torvalds]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
