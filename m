From: Christian Gagneraud <cgag1c@freescale.com>
Subject: Re: mount problem
Date: Thu, 28 Jul 2005 12:20:41 +0200
Message-ID: <42E8B179.8090909@freescale.com>
References: <20050728093426.29629.qmail@web40629.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050728093426.29629.qmail@web40629.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: rekha vn <vidiyala_r@yahoo.com>
Cc: linux-newbie@vger.kernel.org

rekha vn wrote:
> thanks for the mail.
> i've done the foll:
> 
> 1. mkdir /winD
> 2. mount vfat -t /dev/hda2 /winD 
Hi,

Please see output of "man --help" or "man mount".

=> mount [-t fstype] something somewhere

Christian

> 
> the response was:
> mount: fs type /dev/hda2 not supported by kernel
> 
> my kernel version is 2.4.21-4
> 
> 
> 		
> ____________________________________________________
> Start your day with Yahoo! - make it your home page 
> http://www.yahoo.com/r/hs 
>  
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
+---------------------------------------------------------+
| Chritian Gagneraud                                      |
|  SW Test & QA Engineer, 3G Linux Platform               |
| CELAD on behalf of Freescale Semiconductor - WBSG EMEA  |
| Phone:  33-(0)5.61.19.99.74                             |
| eMail:  cgag1c@freescale.com                            |
+---------------------------------------------------------+

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
