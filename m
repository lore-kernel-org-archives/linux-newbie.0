From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Redhat 9 Can't Compile a Kernel??
Date: Wed, 23 Apr 2003 12:58:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03042312584700.02747@unix.pa3gcu>
References: <200304222243.19905.1stflight@ameritech.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304222243.19905.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 1stFlight <1stflight@ameritech.net>
Cc: linux-newbie@vger.kernel.org

On Wednesday 23 April 2003 02:43, 1stFlight wrote:
>  I get this error message when trying to compile kernel 2.4.20 patched to
> .21-rc1. What's gone wrong here? Thanks


I did not CC to linux-admin as i think they dont have much to do with this 
sort of thing (AFAIK).

I get the same results so i dug into the source, it seems there are more than 
just this problem, its not you its a software problem, as far as i can see 
that is.

You could check out the linux-kernel mailing list archives and/or 
google.com/linux for a answer of howto get around it.
This often happens with pre releases.
http://www.geocrawler.com/lists/3/Linux/35/0/ is a good place to start as 
well.

> (please get rid of the tabs here) Darryl
>
> [root@localhost linux-2.4.20]# make xconfig
> rm -f include/asm
> ( cd include ; ln -sf asm-i386 asm)
> make -C scripts kconfig.tk
> make[1]: Entering directory `/usr/src/linux-2.4.20/scripts'
> gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o tkparse.o
> tkparse.c
> gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o tkcond.o
> tkcond.c gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -c -o
> tkgen.o tkgen.c gcc -o tkparse tkparse.o tkcond.o tkgen.o
> cat header.tk >> ./kconfig.tk
> ./tkparse < ../arch/i386/config.in >> kconfig.tk
> drivers/ide/Config.in: 46: can't handle dep_bool/dep_mbool/dep_tristate
> condition
> make[1]: *** [kconfig.tk] Error 1
> make[1]: Leaving directory `/usr/src/linux-2.4.20/scripts'
> make: *** [xconfig] Error 2
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
