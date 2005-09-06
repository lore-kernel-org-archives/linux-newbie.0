From: Kari Hurtta <hurtta+linux-newbie@leija.mh.fmi.fi>
Subject: Re: copy of linux OS
Date: Tue, 6 Sep 2005 20:13:04 +0300 (EEST)
Message-ID: <200509061713.j86HD4mx002982@leija.fmi.fi>
References: <42F6E6B6.5030706@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42F6E6B6.5030706@bcgreen.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux newbie <linux-newbie@vger.kernel.org>



And then one addition:   

initrd files includes system root for boot
process before real partition is mounted. initrd includes some
subset of modules from /lib/modules/{kernel-version}.  It is probably generated 
with command mkinitrd.

> Looking at the following:
> ============================================
> [samuel@me ~]$ ls /lib/modules
> 2.6.11-1.1369_FC4  2.6.12-1.1398_FC4
> [samuel@me ~]$ echo
> 
> [samuel@me ~]$ ls /boot
> System.map-2.6.11-1.1369_FC4  grub                          vmlinuz-2.6.11-1.1369_FC4
> System.map-2.6.12-1.1398_FC4  initrd-2.6.11-1.1369_FC4.img  vmlinuz-2.6.12-1.1398_FC4
> config-2.6.11-1.1369_FC4      initrd-2.6.12-1.1398_FC4.img
> config-2.6.12-1.1398_FC4      kernel.h
> [samuel@me ~]$
> ============================================
> 
> I have two kernels:
> 2.6.12-1.1398_FC4  and 2.6.11-1.1369_FC4
> 
> The directories in /lib/modules are created when the kernel
> is installed.
> 
> in /boot the important files are: System.map-$VERSION,
> initrd-$VERSION.img   and  vmlinuz-$VERSION
> 
> As far as I know, config-$VERSION is only needed if you
> want to know how the kernel was built... It should be possible
> to copy it into the /usr/src/linux directory ( or wherever you're
> building your kernel) and use it to config a build the same as
> the kernel it's associated with.
> 
> 
> rekha vn wrote:
> > thanks.
> > I'd like to have a copy of the kernel.
> > which folder has the whole of the kernel?
> > how do i specify this path for this copy of kernel in
> > my grub.conf.i have red hat kernel version 2.4.21-4.EL
> 
> -- 
> Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
> 		   http://www.bcgreen.com/~samuel/
>     Powerful committed communication. Transformation touching
>       the jewel within each person and bringing it to light.
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
