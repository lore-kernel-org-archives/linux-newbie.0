From: Armen Kaleshian <akaleshian@kriation.com>
Subject: Re: IMAP Error
Date: Thu, 12 Feb 2004 10:54:31 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040212155431.GA10727@sevoog.kriation.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm sorry. I completely missed it in your previous e-mail.

Configure is basically complaining that libgdbm can not be found; it has nothing
to do with IMAP. If you were trying to build something else that was looking for
the same library, it would probably have the same problem...

You could do one of two things:

1) Check /etc/ld.so.conf for /usr/lib; if it doesn't exist, add it, remove your
current /etc/ld.so.cache and run /sbin/ldconfig [OS dependent] to rebuild the
library cache on your system. Run configure again, and that should fix it.

2) This solution is highly discouraged but might make it work... add whatever
paths exist in /etc/ld.so.conf to an exported LD_LIBRARY_PATH environment
variable, as well as /usr/lib delimited by a ':'. Run configure after you've
exported the variable.

Good Luck!

--Armen

On Thu, Feb 12, 2004 at 04:58:27PM +0200, Ralica wrote:
: Hi, Armen
: As I writed before:
: 
: > : I have /usr/include/gdbm.h and /usr/lib/libgdbm.a         libgdbm.la
: > : libgdbm.so        libgdbm.so.2      libgdbm.so.2.0.0
: > : 
: 
: 

----- End forwarded message -----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
