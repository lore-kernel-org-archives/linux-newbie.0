From: Raider <raider@home.ro>
Subject: Galeon problems
Date: 20 May 2002 13:56:41 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1021890347.2120.19.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello!

I run MDK8.2 and Galeon just refuses to show anything.  It loads the
page okay, but there's nothing to show.  The error it prints is like
this:

**************************************************
nsNativeComponentLoader:
GetFactory(/usr/lib/mozilla/components/libtimer_gtk.so) Load FAILED with
error: /usr/lib/mozilla/components/libtimer_gtk.so: cannot open shared
object file: No such file or directory
**************************************************

This seems to be a problem with Mozilla... but this is really strange as
that lib never existed (it isn't packed with Galeon or Mozilla).  Does
anybody know what is this libtimer_gtk.so do?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
