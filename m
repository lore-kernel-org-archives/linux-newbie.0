From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 2.5.59: Kernel: No module found in object
Date: Fri, 28 Feb 2003 16:49:48 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03022816494803.00903@unix.pa3gcu>
References: <720FB032F37C0D45A11085D881B03368A2B351@MBXSRV24.stu.nus.edu.sg>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B351@MBXSRV24.stu.nus.edu.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>, linux-kernel@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

On Friday 28 February 2003 07:44, Eng Se-Hsieng wrote:
> Dear all,
>
> I have to get the Nokia D211 working in the 2.5.59 kernel. I tweaked the
> driver files (which are meant for 2.4.x kernels) and it compiles and
> installs fine but when I insert the PCMCIA device, I get:

I saw at least 4 decent answers to your origanal question on google.com
thats the URL i told you to look in the last time you wrote here about 2.5 
kernels.
Using development kernels is called "Living on the edge", things work in one 
kernel are are quite possably broken on another.

AFAIK no one can help you here on this list, we are NOT developers.
If you really need the nokia stuff and cant do as other seem to have done, 
then go back to kernel 2.4.xx.

> cardmgr[1302]: get dev info on socket 0 failed: Resource temporarily
> unavailable.

AFAIK all module code has changed in 2.5 kernels, so what you are trying to 
do is certainly not going to work even with a lot of tweeking.

>
> I would really appreciate any help on this.

Ok then write a mail to;
linux-kernel@vger.kernel.org
Ask your question there, if one still can do that that is, i have a small 
idea that you have to be subscribed to that list to be able to mail to it.
So you may need to subscribe first, but be warned, that list has a VERY high 
volume and answers you get may NOT suit your taste.

>
> Thank you.
>
> Regards,
> Se-Hsieng
> (linux-newbie)


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
