From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: QM_MODULES probs
Date: Tue, 14 Sep 2004 10:51:01 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409141051.01695.pa3gcu@zeelandnet.nl>
References: <3ed7d0be04091401087ed281db@mail.gmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3ed7d0be04091401087ed281db@mail.gmail.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: karthi n <linuxkarthi@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Tuesday 14 September 2004 10:08, karthi n wrote:
> hai,
>           i am new to this list, while i boot the box with newly
> complied kernel 2.6.8-1, i lost my network connection, err msg is
>
> "ifup: QM_MODULES: Function not implemented"
>
> in somany places, can you help me to solve this issue,

This is not a kernel issue, its an operator error message, it means or the 
chances are that you did not read the fine documentation before taking the 
plunge to a new kernel or kernel series.

I suggest you read /usr/src/linux/Documentation/Changes, do what is written 
from line +/- 51 to 66, if your system does not comply then obtain the 
nessasary packages, one is almost certainly "modutils", down the Changes file 
a way are all the URL's where you can get the needed versions.


> thanks in advance,
> regards,
> karthikeyan.N

-- 
If the Linux community is a bunch of thieves because they
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
