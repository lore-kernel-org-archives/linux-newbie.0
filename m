From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Multi-kernel in grub
Date: Wed, 23 Jul 2003 08:24:35 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307230824.35748.pa3gcu@zeelandnet.nl>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu> <5.1.0.14.1.20030722181649.0201cdf0@celine> <1058935906.2992.31.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1058935906.2992.31.camel@localhost.localdomain>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: travis@wsor.net, newbie list <linux-newbie@vger.kernel.org>

On Wednesday 23 July 2003 06:51, Travis Osterman wrote:
> To eliminate another variable, I tried to run the kernel compilation
> without changing any kernel settings (just to see if the kernel source
> would compile).
>
> Without any configuration changes at all:
> # make mrproper		// no errors
> # make clean		// no errors
> # make xconfig		// no errors
> # make dep		// no errors
> # make bzImage		// below (seems fine)
>
> tools/build -b bbootsect bsetup compressed/bvmlinux.out CURRENT >
> bzImage
> Root device is (8, 7)
> Boot sector 512 bytes.
> Setup is 2621 bytes.
> System is 1156 kB
> warning: kernel is too big for standalone boot from floppy
> make[1]: Leaving directory `/usr/src/linux-2.4.20-8/arch/i386/boot'
>
> # make modules		// no errors

You missed make modules_install (see comment below).

> # make install		// below
>
> tools/build -b bbootsect bsetup compressed/bvmlinux.out CURRENT >
> bzImage
> Root device is (8, 7)
> Boot sector 512 bytes.
> Setup is 2621 bytes.
> System is 1156 kB
> warning: kernel is too big for standalone boot from floppy
> sh -x ./install.sh 2.4.20-8custom bzImage
> /usr/src/linux-2.4.20-8/System.map ""
> + '[' -x /root/bin/installkernel ']'
> + '[' -x /sbin/installkernel ']'
> + exec /sbin/installkernel 2.4.20-8custom bzImage
> /usr/src/linux-2.4.20-8/System.map ''
> /lib/modules/2.4.20-8custom is not a directory.

The above is caused because you did not do make modules_install .

> mkinitrd failed
> make[1]: *** [install] Error 1
> make[1]: Leaving directory `/usr/src/linux-2.4.20-8/arch/i386/boot'
> make: *** [install] Error 2
>
> # make modules_install	// no errors

Too late, that is of no good at this stage.

I have a help page for makeing a kernel at;

http://people.zeelandnet.nl/pa3gcu/kernel.htm

It may well help you in compiling, there is no ifo on grub tho'.

>
> Thanks again for all your help in sorting through this with me.
>
> -- Travis


Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
