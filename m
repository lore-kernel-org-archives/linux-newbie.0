From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Multi-kernel in grub
Date: Thu, 24 Jul 2003 14:32:46 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307241432.46851.pa3gcu@zeelandnet.nl>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu> <200307230824.35748.pa3gcu@zeelandnet.nl> <1059016812.21561.72.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1059016812.21561.72.camel@localhost.localdomain>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: travis@wsor.net, linux-newbie@vger.kernel.org

On Thursday 24 July 2003 05:20, Travis Osterman wrote:
> I thank everyone again for their patience with me.  I have tried to
> methodically note everything I have done during the kernel compilation
> below.  Everything seems fine until the make install step.

The copy the image to /boot by hand and update your bootloader config file 
accordingly and if lilo is used rerun lilo. I belive you mentioned grub tho'.

> make modules // no errors
> make modules_install // no errors
> make install // errors, see below
>
> warning: kernel is too big for standalone boot from floppy
> sh -x ./install.sh 2.4.20-first-try bzImage
> /usr/src/linux-2.4.20-8/System.map ""
> + '[' -x /root/bin/installkernel ']'
> + '[' -x /sbin/installkernel ']'
> + exec /sbin/installkernel 2.4.20-first-try bzImage
> /usr/src/linux-2.4.20-8/System.map ''
> No module aic7xxx found for kernel 2.4.20-first-try
> mkinitrd failed
> make[1]: *** [install] Error 1
> make[1]: Leaving directory `/usr/src/linux-2.4.20-8/arch/i386/boot'
> make: *** [install] Error 2
>
>   Will these errors cause problems if I bypass the 'make install' and
> copy files to my /boot dir?  Thanks again for the help.

If you dont need the aic7xxx scsi driver no.

>
> -- Travis

-- 
If the Linux community is a bunch of theives because they
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
