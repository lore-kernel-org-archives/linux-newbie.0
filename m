From: SVisor <svisor@lycos.com>
Subject: Re: how to print a 64  bit variable in Linux
Date: Thu, 21 Jul 2005 15:42:51 +0200
Message-ID: <dbo8or$332$1@sea.gmane.org>
References: <4EE0CBA31942E547B99B3D4BFAB3481161138A@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB3481161138A@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Dear all,
> I have a truly miniature doubt here. sorry for asking this but I struggled enough before coming here.
>  
> How do I print 8 byte (long long type) value in Linux?

long long in dw;
printf( "%lld",dw );

"man 3 printf"
Or did I not understand your question.

>  
> Regards,
> Mukund Jampala
>  
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
