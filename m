From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Unable to make kernel 2.6.8 up
Date: Thu, 21 Oct 2004 18:14:21 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200410211814.21563.pa3gcu@zeelandnet.nl>
References: <104ee7a50410190917496bc175@mail.gmail.com> <200410210753.02042.pa3gcu@zeelandnet.nl> <104ee7a50410202340180a28ba@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <104ee7a50410202340180a28ba@mail.gmail.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel kernel <unix.hacker@gmail.com>
Cc: newbie <linux-newbie@vger.kernel.org>

On Thursday 21 October 2004 08:40, kernel kernel wrote:
> Hi Richard.
>
> I had a kernel patch and i need to test in the latest kernel.
> Before that i am trying to bring the kernel 2.6.x up and running.
> That is all i want to do.

Providing the patch you intend to use is for your kernel version why not.

> By the way
> vmlinux -- is the kernel

The kernel can be called anything you want it to be called its up to you.

> vmlinuz --- is the boot sector.

Is it.???

>
> Why initrd is needed ?

If you compile your own kernel and "include" disk or card drivers which are 
needed to boot the system then you dont need initrd.

> While mkinitrd, I am getting the error /dev/mapper not found, But
> still it makes the initrd image.

Never use initrd so i cant comment.

There are plenty of sites around giving upto date info on howto compile and 
use a 2.6 kernel, i suggest once more that you use google to get more info, 
it is full of it i can assure you.

>
> Thanks
> Amrith

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
