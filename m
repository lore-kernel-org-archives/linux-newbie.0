From: Ray Olszewski <ray@comarre.com>
Subject: Re: Modules problem part-2
Date: Mon, 05 Jan 2004 10:53:28 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040105104618.01f28358@celine>
References: <3FF9ABFF.1080702@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF9ABFF.1080702@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:55 PM 1/5/2004 +0530, joy wrote:

>hi,
>I did what was told of  me, make modules and make install and the modules 
>were in place.
>but the other problem I had with lsmod and insmod giving me error stating:
>QM_MODULES function not implemented
>refuses to go away
>even at bootup ,
>when init runs modprobe, the same error appears a LOT of times.(it scrolls 
>fast but I could just make out!)

It sounds like you (or whoever compiled your kernel) did not compile in 
loadable modules support. (In 2.4.x kernels, which I still use, this is the 
second item in the "make menuconfig" setup list, so you might look in a 
similar location in the 2.6.x configuration.)

In the 2.4.x kernels, the relevant section of the actual config file is

         #
         # Loadable module support
         #
         CONFIG_MODULES=y
         CONFIG_MODVERSIONS=y
         CONFIG_KMOD=y

Here too, you might look for something similar in the 2.6.x config file ... 
the "QM_MODULES" name might indicate a change in terminology.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
