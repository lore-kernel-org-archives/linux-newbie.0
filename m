From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Console fonts and colors
Date: Wed, 9 Oct 2002 12:26:21 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02100912262107.00235@unix.pa3gcu>
References: <Pine.LNX.4.44.0210082010430.3063-100000@linuxDBA.brett.d2g.biz>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210082010430.3063-100000@linuxDBA.brett.d2g.biz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Brett <brett@brett.d2g.biz>
Cc: linux-newbie@vger.kernel.org

On Wednesday 09 October 2002 02:22, Brett wrote:
> > Brett, go take a look at;
> > http://people.zeelandnet.nl/pa3gcu/console_mode.htm
>
> I was doing fine till I got to the part in your documentation:
>
> ___________
> make config
> choose whatever you need for your kernel when you come across the
> following;
> ...
> ___________
>
> I have struggled a lot with this in the past. (ask Lawson! I bug him a
> lot!)
> I like the way the kernel I have is now running and generally can't make
> my own do as well.  Is there a way to automatically configure the kernel
> just the way it is now but add only the extra stuff I need?
>
> I may have said before I am using SuSE 8.0 out of the box with their
> kernel 2.4.18-4GB.  I do have the sources installed out of habbit. Seems I
> remember some way to see only what was new compaired to what was running
> but maybe that does not apply here.

Then as far as i know all you need is in your kernel, i dont use suse myself, 
but i would imagen they would include the VESA drivers in thier kernels like 
most all other distro's.

Have you tryed adding 
vga=ask 
in your lilo.conf like it says in the page i pointed you too.

>
> Brett

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
