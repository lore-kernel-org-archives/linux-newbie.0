From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Question on initrd
Date: Wed, 17 Sep 2003 09:51:56 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309170951.56066.pa3gcu@zeelandnet.nl>
References: <36993D449C7FA647BF43568E0793AB3E061DF1@nevis_pune_xchg.pune.nevisnetworks.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061DF1@nevis_pune_xchg.pune.nevisnetworks.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Girish Kale <girish.kale@nevisnetworks.com>, linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 17 September 2003 08:29, Girish Kale wrote:
> Hi,
>
> My original grub.conf file has an initrd, so I am assuming it is
> required.

It possably is for that kernel, however not for a custom kernel with YOUR 
booting requirments compiled into a kernel.
 
> I have a SCSI drive and so I think it is required.

If you use the default installed image YES, NO if as per above.

> I did make dep clean modules modules_install bzImage.

If you did it like that then you WILL get problems.

make config
make dep clean bzImage modules modules_install

cp arch/i386/boot/bzImage /boot/vmlinuz-2.4.xx
cp System.map /boot/System.map-2.4.xx
edit grub.conf and add a new stanza for the new kernel.

You may also want to edit the linux Makefile and define an EXTRAVERSTION as 
well otherwise you may get into more trouble with old and new modules getting 
mixed up in the same directorys.

More info can be found in the Kernel-HOWTO on your system.
A quick guide is on my website.

> I compiled the kernel without selecting BusLogic module also, but I got
> the same error, which I am unable to understand.

Please read the manual page for initrd, it will explain what happens, please 
note it says the following;
"two phase boot-up operation" so cut out the middle man and compile needed 
drivers and filesystems for booting INTO your kernel, that eliminates the 
need for initrd.

> Thanks,
> Girish

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
