From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Compiler method of finding header.
Date: Wed, 22 Oct 2003 15:17:45 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200310221517.45695.pa3gcu@zeelandnet.nl>
References: <200310220657.50794.Adam@Luchjenbroers.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200310220657.50794.Adam@Luchjenbroers.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adam@Luchjenbroers.com, linux-newbie@vger.kernel.org

On Tuesday 21 October 2003 23:27, Adam Luchjenbroers wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> /usr/include/openssl/kssl.h:72:18: krb5.h: No such file or directory
>
> includes line:
> #include <krb5.h>
>
> So it's expecting the header to be wherever the compiler expects them.
>
> using locate:
> /usr/kerberos/include/krb5.h
>
> How do I tell the compiler where to look for headers? OS is RedHat 9.
>

Without knowing what you are trying to compile or being able to see the 
Makefile it would be hard to say how you could do that in the makefile as 
includes "include" header files that are located in /usr/include so your 
Makefile is not at fault here, or so it seems to me.

If this is a one file error then you could edit kssl.h and change the above 
mentioned include to;

#include </usr/kerberos/include/krb5.h>

I expect you would then find that your compile will go on a little and barf 
again as it will miss another file, you can also create a sym link in /usr/
include (possably a better idea).

cd /usr/include
ln -s /usr/kerberos/include kerberos
Or something to that effect.

The most likly explanation for the problem is that your kerberos includes have 
been installed one directory too high, header files belong in /usr/include 
and not in /usr, that is what i have been taught.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
