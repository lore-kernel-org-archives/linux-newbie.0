From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Compiler flags, kernel-complie
Date: Sat, 31 May 2003 22:22:30 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305312222.30443.pa3gcu@zeelandnet.nl>
References: <3ED902D8.2030907@vip.cybercity.dk>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3ED902D8.2030907@vip.cybercity.dk>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>, linux-newbie@vger.kernel.org

On Saturday 31 May 2003 21:30, Flemming Greve Skovengaard wrote:
> I have set the enviroment variables $CFLAGS and $CXXFLAGS to:

Why bother, if one chooses the correct processor type during configuration of 
the kernel with make config / xconfig / menuconfig then changing the Topdir 
Makefile would NOT be nessasary, (afaik) that is.

> -O2 -march=athlon-xp
>
> Now my question is will this effect my kernel-compile?

When you define a processor type during configuration then the variable's get 
changes accordingly.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
