From: "Girish Kale" <girish.kale@nevisnetworks.com>
Subject: RE: Question on initrd
Date: Wed, 17 Sep 2003 11:59:03 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <36993D449C7FA647BF43568E0793AB3E061DF1@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, linux-newbie <linux-newbie@vger.kernel.org>

Hi,

My original grub.conf file has an initrd, so I am assuming it is
required. I have a SCSI drive and so I think it is required. 
I did make dep clean modules modules_install bzImage.
I compiled the kernel without selecting BusLogic module also, but I got
the same error, which I am unable to understand.

Thanks,
Girish

-----Original Message-----
From: pa3gcu [mailto:pa3gcu@zeelandnet.nl] 
Sent: Wednesday, September 17, 2003 11:39 AM
To: Girish Kale; linux-newbie
Subject: Re: Question on initrd

On Tuesday 16 September 2003 10:27, Girish Kale wrote:
> Hi,
>
> I have compiled the kernel 2.6.0-test5. When I try to do build initrd
> using /sbin/mkinitrd command, it gives me an error
> "No module BusLogic found for kernel 2.6.0-test5"
> I have selected the Buslogic as a module before compiling the kernel.
> Can anyone help me on this.

Firstly do you need initrd ?? i doubt it.
Secondly did you do; 'make modules' and make 'modues_install' after
compiling 
the kernel and last but not least why compile the buslogic driver as a 
module, things like that "should" be in your kernel espesialy if you
intend 
to boot from such a device.

If things you need for booting are in the kernel then really any need
for 
initrd goes away.

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
