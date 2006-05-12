From: Kari Hurtta <hurtta+linux-newbie@leija.mh.fmi.fi>
Subject: Re: New Linux & GPL isuues
Date: Fri, 12 May 2006 16:49:24 +0300 (EEST)
Message-ID: <200605121349.k4CDnObo006312@leija.fmi.fi>
References: <AF63F67E8D577C4390B25443CBE3B9F70927A1@esnmail.esntechnologies.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AF63F67E8D577C4390B25443CBE3B9F70927A1@esnmail.esntechnologies.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

> Dear All,
> 
> I am planning to use a module in my Open Source project GPL claimed
> module.
> I have to buy it from the customer.
> 
> The module is so build that it has 2 object files:
> One object file will be provided with the source code which registers
> itself to the kernel char driver interface and uses them.
> The Second object file contains the proprietary code of the
> manufacturer.
> They build it this way and create a .ko file by linking them.
> Later I can load this module into a running kernel module.
> 
> If this is the case, the second object file is not open source.
> Can you please elaborate on this and let me know if I can use this in my
> GPL based project.

You can not distribute resulting binary.
 
> Regards,
> Mukund Jampala
> 

/ Kari Hurtta

 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
