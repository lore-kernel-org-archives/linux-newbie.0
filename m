From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Uninstalling
Date: Thu, 20 Jun 2002 15:55:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02062015553500.05533@unix.pa3gcu>
References: <200206200807.g5K873v03970@act-naim.iiu.edu.my>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206200807.g5K873v03970@act-naim.iiu.edu.my>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: azie <azie@kawan.net>, Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

On Thursday 20 June 2002 08:06, azie wrote:
> Hi there,
>
> I've installed a few application using tarballs (e.g apache, modssl,
> openssl and php). How do I uninstalled these applications? Can I just
> delete the folders and that's it? Or is there any necessary steps that
> I have to do to make sure that I've deleted all files connected to that
> particular applications.

Some (by far not all) tar archies have a makefile included which supports
'make uninstall' you can try typing make uninstall in the program directory 
source.
You can of course delete any directorys created by an install of the program 
and delete the program itself with "rm /path/name", you can locate the 
executeable and man pages (if installed) with 'whereis program'

> Thank you for your help

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
