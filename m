From: "William Stanard" <wstanard@palmertrinity.org>
Subject: PHP5 won't make on Linux 2.4.18-14
Date: Tue, 15 Mar 2005 16:06:11 -0500
Message-ID: <fc.004c4e000076134a004c4e000076134a.761401@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

In our Linux class, we are about to study coding in PHP and Mysql. We're
running  Linux 2.4.18-14  (Red Hat) and have loaded Apache 2.0.52 (which
serves just fine, thank you...) and Mysql 4.0.21 (runs ok on the command
line...). We want to be able to run PHP 5.0.2, but we can't get it to
make. The error reads:

ext/ctype/ctype.lo: file not recognized: file truncated
collect2: ld returned 1 exit status
make: *** [libphp5.la] Error 1

We have been at this for a while, having upgraded from Apache 1.33 and
PHP4.22 and Mysql 3.x. Is there a known PHP5 incompatibility with our
(ancient but serviceable) Linux kernel?

Bill Stanard
Academic Computing
Palmer Trinity School
305.969.4239



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
