From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: register_exec_domain
Date: Sat, 27 Apr 2002 07:05:05 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204270705050A.04696@unix.pa3gcu>
References: <20020427010243.90880.qmail@web12805.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020427010243.90880.qmail@web12805.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org

On Saturday 27 April 2002 01:02, Staci wrote:
> --- G Anna <drguruolai@eth.net> wrote:
> > (snip)
> > (snip)
> >
> > Did you do a 'make mrproper' before anything else?
>
> Dunno if you know, but mrproper can corrupt things.

Can it, i have never seen or heard of that problem, in any case you have to 
use make mrproper when you install a new kernel source otherwise things like 
symlinks to /usr/include are not created.

> i always use make clean. :)

That will not help when installing a new kernel source.
If you look into the kernel source top dir Makefile you will see that "clean" 
only removes an amount of unwanted configureation *.h files, mrproper removes 
logfiles, files preceeded with a . (as in) .config,  removes old symlinks and 
recreates them + much much more.

And on another note if your statement were true, i am convinced that a 
problem of that magnitute would be fixed long before we the end user even saw 
it.

Linus Torvalds does not tolerate sloppyness in his kernel source.

>
> sl

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
