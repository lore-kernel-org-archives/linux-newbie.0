From: Ray Olszewski <ray@comarre.com>
Subject: Re: how to use appl of one image in another
Date: Wed, 18 Jun 2003 10:26:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030618101820.02f53830@celine>
References: <20030618165824.25095.qmail@web20512.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030618165824.25095.qmail@web20512.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:58 AM 6/18/2003 -0700, Ravi Kumar Munnangi wrote:
>I have installed RH8.0 in my system.
>
>Then I have downloaded the linux kernel 2.4.18 and
>configured it and compiled it to get new image.
>
>when I boot into the new image, Iam unable to use the
>applications of the original image.(like Xwindows)
>
>How can I access the packages which were installed
>with the original image in the newly created image?

As a *general* matter, changing the kernel image you are using should not 
affect your ability to run applications. Particular applications may be 
incompatible with particular kernels, because they rely on features 
(drivers, or even core capabilities) not present in the kernel you are 
currently running.

X (or X Window, not "Xwindows") can fall into this category, if you are 
using an X deiver that depends on finding kernel framebuffer support for 
it. If that is what you are encountering, you fix it by compiling in the 
appropriate framebuffer support.

But I offer that only as an example of a specific problem that a kernel and 
a particular app may have. (Networking apps ... DHCP clients, ip 
(iproute2), iptables, and netstat, to name a few specifics ... are another 
common example, as they often rely on very specific networking options 
being compiled in the kernel.)

To get real help, you will need to explain what you mean by "unable to use" 
and be more clear about what applications are involved (I don't know what 
you consider to be "like Xwindows", so I can only answer about that actual 
application).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
