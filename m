From: Ray Olszewski <ray@comarre.com>
Subject: Re: unable to make dep; limit.h
Date: Mon, 03 Feb 2003 09:49:02 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030203094342.021343c0@celine>
References: <20030202211210.A2446@jetty>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030202211210.A2446@jetty>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Richard Spencer <rspr@sunflower.com>, linux-newbie@vger.kernel.org

I didn't see any other replies to this. So while I'm sort of guessing here, 
I'm reply in the belief that my suggestion is at least better than nothing.

I notice that you are doing the compile from "linux-2.4.20". Normally, 
scripts expect to find kernel source in /usr/src/linux . If you  do not 
have it in such a directory (typically, you would actually put it in 
/usr/src/linux-2.4.20 and make a symlink), then the script that looks for 
"/usr/src/linux/include/linux/limits.h" would be unable to find it ... as 
the last line of the error report you quote indicates (but without the full 
include path).

I'm not certain that this is the source of your problem, but it is probably 
worth a look.

At 09:12 PM 2/2/03 -0500, Richard Spencer wrote:

>I hope someone can point me in the right direction. I tried to compile a 
>new kernel (version 2.4.20) and I ended up with the following error message:
>
>[root@jetty linux-2.4.20]# make dep
>gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -o scripts/mkdep 
>scripts/mkdep.c
>In file included from /usr/include/bits/posix1_lim.h:126,
>                  from /usr/include/limits.h:30,
>                  from 
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:117,
>                  from 
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/syslimits.h:7,
>                  from 
> /usr/lib/gcc-lib/i386-redhat-linux/egcs-2.91.66/include/limits.h:11,
>                  from scripts/mkdep.c:35:
>/usr/include/bits/local_lim.h:27: linux/limits.h: No such file or directory
>make: *** [scripts/mkdep] Error 1
>
>I currently run Linux kernel 2.2.22 on a pentium laptop and RedHat 6.2 and 
>I would appreciate any help or suggestions as to where to look. Thank you!


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
