From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: unable to make dep; limit.h
Date: Mon, 3 Feb 2003 19:58:10 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020319581005.19519@unix.pa3gcu>
References: <20030202211210.A2446@jetty>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030202211210.A2446@jetty>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Richard Spencer <rspr@sunflower.com>, linux-newbie@vger.kernel.org

On Monday 03 February 2003 02:12, Richard Spencer wrote:
> I hope someone can point me in the right direction. I tried to compile a
> new kernel (version 2.4.20) and I ended up with the following error
> message:
>
> [root@jetty linux-2.4.20]# make dep
> gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -o scripts/mkdep
> scripts/mkdep.c In file included from /usr/include/bits/posix1_lim.h:126,
>                  from /usr/include/limits.h:30,
>                  from
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:117, from
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/syslimits.h:7, from
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:11, from
> scripts/mkdep.c:35:
> /usr/include/bits/local_lim.h:27: linux/limits.h: No such file or directory
> make: *** [scripts/mkdep] Error 1
>
> I currently run Linux kernel 2.2.22 on a pentium laptop and RedHat 6.2 and
> I would appreciate any help or suggestions as to where to look. Thank you!

To add to Ray's advice, try running make mrproper before anthing else, it 
only needs to be run once after installing the source.
Before you do that now, copy .config into /usr/src otherwise it will get 
deleted.
mrproper creates the needed symlinks.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
