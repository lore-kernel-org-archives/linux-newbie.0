From: _z33 <timid.Gentoo@gmail.com>
Subject: trouble maintaining directory structure
Date: Sat, 27 Aug 2005 15:49:10 +0530
Message-ID: <depefo$ekm$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

   I am using autoconf and automake to build a small program. However, I 
don't know how to write Makefile.am and configure.in in such a way that 
the sources are picked up from some directory and compiled and put in 
some other directory.

   What I want to do, is this ...

   sample/src ---> has sources
   sample/bin ---> should contain the compiled binary

   Can anyone help me achieve this?


Ciao,

_z33
-- 
I love TUX; well... that's an understatement :)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
