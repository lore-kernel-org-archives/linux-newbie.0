From: Ray Olszewski <ray@comarre.com>
Subject: Re: Oversized kernel
Date: Wed, 12 Mar 2003 08:19:55 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030312081531.01f4fd30@celine>
References: <720FB032F37C0D45A11085D881B03368A2B496@MBXSRV24.stu.nus.ed
 u.sg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B496@MBXSRV24.stu.nus.ed
 u.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Eng Se-Hsieng <g0202512@nus.edu.sg>, linux-newbie@vger.kernel.org

At 05:59 PM 3/12/2003 +0800, Eng Se-Hsieng wrote:
>Dear all,
>
>I've just compiled a new kernel and the vmlinuz is over 2Mb in size.
>Since mkbootdisk returns : Not enough space and I don't have a CD writer
>on my system, I'm unable to create a boot disk and am a little wary
>about not having one.

Is this a compressed kernel? I suspect not, since "make bzImage" usually 
generates a kernel named bzImage, not vmlinuz.

>How does one know what are the minimum options to choose in order to
>reduce the size of the vmlinuz? My system is a Toshiba Satellite 4030CDT
>(Celeron 266 Mhz)

There is no useful general answer to this question. Start from a sensible 
.config file (one as-shipped with the kernel source is usually fairly 
sensible) and do as much as you can as modules instead of compiling into 
the kernel. But in the end, you really need to do a long march through one 
of the make procedures (personally, I'm a fan of "make menuconfig", but 
tastes vary), adding in only the parts you need. (Once you get a bit of 
practice, this is not hard to do ... custom kernels are normally smaller 
than stock kernel images, not bigger).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
