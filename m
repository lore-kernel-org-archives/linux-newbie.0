From: whitnl73@juno.com
Subject: Re: Network card and kernel module problems
Date: Tue, 4 Feb 2003 16:52:57 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030204.180710.8.0.whitnl73@juno.com>
References: <000301c2cb7d$184dd620$eb6510ac@citechbd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000301c2cb7d$184dd620$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: raihan@citech-bd.com
Cc: linux-newbie@vger.kernel.org

On Mon, 3 Feb 2003, Amin wrote:

> I'm beginning to think I've mixed up different kernel module dependencies.
> The short story is I need help sorting out the modules for use with my two
> kernels: 2.4.18-14 and 2.4.18-14custom.  The long story is: when I
> originally installed RH8.0 and found it didn't already support my NIC, I
> recompiled the kernel with
>
> make xconfig; make dep; make modules; make modules_install; make bzImage
>
> and tried to boot the new kernel.  Eventually I got it to boot, but it
> failed to detect/insert a lot of modules, which seems strange in
> retrospect because I think I actually specified only one loadable module;
> all the others were built-in.  I recompiled again, with the same results.

If you didn't change EXTRAVERSION in the Makefile, you will have the
leftover modules from the modular kernel in /lib/modules/`uname -r`
but they will not be able to load with the kernel that has them builtin.
I'd use a unique EXTRAVERSION for each new custom configuration.
When you get it right you can remove all the false starts.

> A lot of error messages courtesy of depmod as it tries to find module
> dependencies --- things like input.o, soundcore.o, etc.  I've recompiled
> twice after that, with a slightly different command order:
>
> make xconfig; make dep; make bzImage; make modules; make modules_install
>
> But still I get the same module dependency problems during boot.  Help!
>
> Yawar Amin
>
Lawson
--
---oops---




________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
