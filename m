From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unresolved symbols
Date: Wed, 9 Apr 2003 21:14:19 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0304092102090.4038-100000@ppg_penguin>
References: <002301c2fece$c315d060$0a01a8c0@sascha.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002301c2fece$c315d060$0a01a8c0@sascha.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sascha Hartmann <sharty@web.de>
Cc: linux-newbie@vger.kernel.org

On Wed, 9 Apr 2003, Sascha Hartmann wrote:

> Hi,
> 
> I have often compiled my kernel 2.4.19 without having problems. Recently I
> upgraded my glibc (2.1 -> 2.2) and it is now my new primary c library. Then
> I compiled the kernel again and as result of "make modules_install" I
> received a list of unresolved Symbols. (Caused by "depmod -ae -F
> System.map") But "depmod -ae -F /proc/ksyms" returns no unresolved symbol.
> Further my system seems to be ok completely. I have had no trouble since I
> use this kernel. Now, 60 compiled and installed programs later, an
> installation instruction wants me to resolve all unresolved symbols in
> kernel and modules. I don't know anything what I have to do at this point
> but somebody of you perhaps.
> 
> depmod -ae -F System.map
> depmod: *** Unresolved symbols in
> /lib/modules/2.4.19/kernel/drivers/block/rd.o
> depmod:  __free_pages_R6c90edb0
> depmod:  refile_buffer_R8347a649
[ and so forth ]

Sascha,

 upgrading glibc is not a minor undertaking, and many people do a fresh
install.  If I understand you correctly, you've got instructions from
somewhere, I wonder if something else has changed ?

 You say you've recompiled the kernel, is it possible you've got a
mixture of old and new modules installed in /lib/modules/2.4.19 ?  I'm
wondering if maybe the .config has been changed between old and new
versions ?

 The kernel and its modules don't link against libc, so I can't see any
reason why you would now get errors.  Alternatively, did you upgrade gcc
at the same time ?

 Ultimately, I'm guessing you need to rebuild the kernel to get full
functionality.  If so, set the EXTRAVERSION in the Makefile, e.g.

SUBLEVEL = 19
EXTRAVERSION = -second

would install the modules into /lib/modules/2.4.19-second/ .

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
