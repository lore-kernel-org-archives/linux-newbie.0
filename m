From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: Compiler method of finding header.
Date: Wed, 22 Oct 2003 19:38:49 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031022183151.OHGN2197.mta05-svc.ntlworld.com@there>
References: <200310220657.50794.Adam@Luchjenbroers.com>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200310220657.50794.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tuesday 21 October 2003 10:27 pm, Adam Luchjenbroers wrote:
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

Hi,
I am not quite sure I understand what you are trying to do here, but  this 
might help.

If you put something like

#include <foobar.h> 

in a source file, then the compiler looks for foobar.h in the default 
location(s) - usually /usr/include. 
If you put something like

#include "/home/me/include/foobar.h"

in the source,  the the compiler looks for that specific file. 
Note that the first example uses angle brackets <> and the second uses double 
quotes. 
So you might try something like:

#include "/usr/kerberos/include/krb5.h"

You second option is to add /usr/kerberos/include/ to the list of places 
checked for include files. You can do this on the command line for gcc with 
to option:

 gcc -I/usr/kerberos/include/ something.c

You are probably using a Makefile, so you would have to hack that to make it 
(the -I option) work.

I hope this helps.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
