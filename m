From: Fabiano Ramos <fabiano.ramos@gmail.com>
Subject: Re: kernel stack problem
Date: Tue, 03 Apr 2007 21:57:35 -0300
Message-ID: <1175648255.4689.3.camel@core2duo.localdomain>
References: <b115cb5f0704031750g52b68cc6ncdecd6f3f94afbdf@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:subject:to:cc:in-reply-to:references:content-type:date:message-id:mime-version:x-mailer:content-transfer-encoding:from;
        b=TbTG2xJBuxsVRMnKxMbQk/9K1dA0BC2qbd+NJ5h/TRP1TTmf0uwNGhKDcscVhPaXbaK5QSQjfN2NUuOYNc0n52IPDY8FwPF8gQxVX/VozQhkJPStv2FrOT6qnyDAUGK9D4plQQlhCJETOuFLk2kDFDg+VzQWOgzQ2q6M+edt32o=
In-Reply-To: <b115cb5f0704031750g52b68cc6ncdecd6f3f94afbdf@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>



> Hi List,
> 
> Recently I got into the problem that I think relates to the small size
> of kernel stack. I had a function of the following form:
> 
> void func()
> {
>      ...
>      //Block1
>     {
>          struct huge_var x;
>          ....
>          ....
>      }
>      ....
>      //Block2
>     {
>          struct huge_var y;
>          ....
>          ....
>      }
>      ....
> }
> 
> The above code resulted in stack overflow. I had an understanding that
> since the scope of variables x & y are limited to their blocks only,
> the space for them will be allocated and released when the block is
> entered and exited respectively. And hence the kernel stack will not
> overflow since both x and y will not occupy memory simultaneously (one
> instance of the variable can easily fit in the kernel stack).
> 

This is wrong. Although the scope is at _block_ level, all variables are
allocated on the stack at _function_ level. So, when entering func() all
variables within it, including x and y, are allocated.

> I solved this problem by having a single instance of struct huge_var
> declared immediately at function begining and reusing it in both
> blocks. But my question is when (and where) are the block scope
> variable allocated? In my previous case, were the two variables
> occupying two sperate memory areas simultaneously?
> 
> Ah, I understand that I should use kernel stack sparingly ... and will do so.
> Thanks,
> 
> Rajat
> 
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
