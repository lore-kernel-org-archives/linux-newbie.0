From: Beolach <beolach@comcast.net>
Subject: Re: kernel compilation problem
Date: Tue, 23 Dec 2003 23:46:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FE93653.1080408@comcast.net>
References: <5.1.0.14.1.20031223084227.01f4cec0@celine> <3FE919F1.6010600@sancharnet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FE919F1.6010600@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: gracecott@sancharnet.in
Cc: linux-newbie <linux-newbie@vger.kernel.org>

joy wrote:
> Sorry to find a trivial answer to the Q. The settings were alright .
> thanks a lot , Jason and Ray, All I needed to do was to to copy the
> System.map as this Kernel does not use the other two System.map(s)  in
> /boot (they are for kernels compiled with diff options).
> But still ,I would like to get rid of the irritating
>              spurious 8259A interrupt : IRQ7
> message I get on Boottime.
> I run an athlon 2400+ , with a biostar nforce2 mobo and the normal
> peripherals, nothing out of the ordinary.
> 

The spurious 8259A interrupt error is an incredibly common and 
non-dangerous error message.  Most likely it is caused by the 
uniprocessor APIC (Advanced Programmable Interupt Conrtoller) linux 
code.  It's really not dangerous or bad or anything.  But if you really 
do want to get rid of it, try recompiling the kernel without 
uniprocessor APIC support ("Local APIC support on uniprocessors" in make 
menuconfig).  This should get rid of the message.

A couple good references for this issue are: 
<http://www.linuxchix.org/pipermail/techtalk/2002-August/012697.html>

and this thread on the LKML (Linux Kernel Mailing List):
<http://www.cs.helsinki.fi/linux/linux-kernel/2001-47/0697.html>

HTH,
Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
