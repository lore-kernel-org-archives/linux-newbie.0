From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Question on initrd
Date: Wed, 17 Sep 2003 08:09:29 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309170809.29374.pa3gcu@zeelandnet.nl>
References: <36993D449C7FA647BF43568E0793AB3E061DEA@nevis_pune_xchg.pune.nevisnetworks.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061DEA@nevis_pune_xchg.pune.nevisnetworks.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Girish Kale <girish.kale@nevisnetworks.com>, linux-newbie <linux-newbie@vger.kernel.org>

On Tuesday 16 September 2003 10:27, Girish Kale wrote:
> Hi,
>
> I have compiled the kernel 2.6.0-test5. When I try to do build initrd
> using /sbin/mkinitrd command, it gives me an error
> "No module BusLogic found for kernel 2.6.0-test5"
> I have selected the Buslogic as a module before compiling the kernel.
> Can anyone help me on this.

Firstly do you need initrd ?? i doubt it.
Secondly did you do; 'make modules' and make 'modues_install' after compiling 
the kernel and last but not least why compile the buslogic driver as a 
module, things like that "should" be in your kernel espesialy if you intend 
to boot from such a device.

If things you need for booting are in the kernel then really any need for 
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
