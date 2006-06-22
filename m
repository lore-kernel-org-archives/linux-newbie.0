From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: Embedded Linux?
Date: Thu, 22 Jun 2006 13:00:47 +0530
Message-ID: <292693080606220030i38a309dhb95face5367e07cc@mail.gmail.com>
References: <292693080606212338vfe61817yb361adebd3b0363c@mail.gmail.com>
	 <449A4471.6050009@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <449A4471.6050009@comarre.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

> Not quite either of these things. Embedded Linux is an imprecise term,
> but it generally refers to specialized distributions that are adapted to
> embedded processors and to other limitations of embedded systems (such
> as use of flash memory instead of a hard disk).
>
> And it covers more than the kernel. A typical Embedded Linux system
> includes the kernel, a suitable cross-compiler (a version of gcc that
> runs on i86 hardware, say, but produces output for an ARM5), a few
> associated things (an assembler, glibc) that are collectively called the
> "toolchain", and some stripped-down apps (like busybox). The kernel may
> have non-standard patches needed to get it to work with the target
> hardware ... but there is a strong push to get those patches integrated
> into the main kernel, and it usually works pretty well (at least for
> ARM, the one embedded processor I spend some time working with).
>

Thanks. So what I get is that there is no term such as "Embedded Linux
Kernel". There are embedded distributions however, that contain kernel
(compiled for an embedded architecture) with specific patches (by the
ditribution vendor) for the specific embedded platform (ARM / PPC
etc).

But CAN I run standard stock kernel compilerd for an embedded chip
(say ARM) on an ARM processor? Or do I NECESSARILY need the patches by
the distribution?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
