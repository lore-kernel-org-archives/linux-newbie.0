From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: lilo boot problems with SATA and mandrake 10.1
Date: Fri, 17 Dec 2004 07:35:53 +0100
Message-ID: <200412170735.53419.pa3gcu@zeelandnet.nl>
References: <1103190044.7183.12.camel@itanium>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1103190044.7183.12.camel@itanium>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: vrodriguez@municipiodeloja.gov.ec
Cc: linux-newbie@vger.kernel.org

On Thursday 16 December 2004 10:40, Vladimir E. Rodriguez wrote:
> Hello!
>
> Please, someone could help me with the following problem:
>
> I have  a system with the following specifications:
>     Intel 865G Chipset
>     SATA Maxtor 120GB
>     P4 2.8 Ghz
>
> When I trying to install Mandrake 10.1 on it, it intalls it normally,
> but when I boot I have only "L" letter instead Lilo Boot Menu, I tried
> GRUB Bootloader, and get "G" letter instead GRUB Boot Menu

Normally when only an "L" is shown at boot time you would also get some error 
codes, The lilo README normally found in /usr/share/lilo-xx-xx/ directory 
explanes what the error codes mean.

I found one answer to a simalar problem via www.google.com/linux
http://lists.ssc.com/pipermail/linux-list/2001-March/008203.html

Its an old mail but i think well worth a try.

Use your install medium to boot and mount the disk partition manually, 

> Also I have windows XP on this system to dual boot.
> After I have installed Fedora Core 3, It works normally, but with
> mandrake 10.1 official I have problems to boot.
>
> Please anybody have experience with this thing?
>
> Thanks
>
> Vladimir
>

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
