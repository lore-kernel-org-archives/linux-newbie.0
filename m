From: Abhijit Vijay <abhijit_v@yahoo.com>
Subject: Linux scripting problem
Date: Wed, 26 Feb 2003 09:45:25 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030226174525.48083.qmail@web13406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi Guys,

I had written a program called burnCD to help users
burn CDs on a linux box. I had given it the following
permissions:

-r-s--x--x    1 root     root   656 Feb 26 12:28
burnCD

This has the same permissions as /usr/bin/passwd.

burnCD is essentially a tcsh script.

When I run it as root, it works fine.
However, when I try to run it as a normal user, I get
the message:

/usr/bin/burnCD: Permission denied.

Could anyone give pointers on this?

Thanks in advance,
Abhijit.


__________________________________________________
Do you Yahoo!?
Yahoo! Tax Center - forms, calculators, tips, more
http://taxes.yahoo.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
