From: "Adam Luchjenbroers" <adam@luchjenbroers.com>
Subject: Kernel 2.6 Compiling problems
Date: Thu, 27 May 2004 21:40:31 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405280140.VAA77641@m1.name2host.com>
Reply-To: "Adam Luchjenbroers" <adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

CC      scripts/empty.o
cc1: Invalid option `32'
make[1]: *** [scripts/empty.o] Error 1
make: *** [scripts] Error 2

This is the only error I get, it appears that empty.c is an empty file used
to detect some system information (endianness and wordsize). Apart from the
file itself, there is no reference to it in the scripts folder.

elfconfig.h uses it as a build requirement. Any idea what might be causing
this problem? I am attempting to build a kernel RPM with a custom config
(using Arjans kernel source rpm as a base).
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
