From: Ray Olszewski <ray@comarre.com>
Subject: Re: Embedded Linux?
Date: Thu, 22 Jun 2006 00:19:13 -0700
Message-ID: <449A4471.6050009@comarre.com>
References: <292693080606212338vfe61817yb361adebd3b0363c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080606212338vfe61817yb361adebd3b0363c@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Daniel Rodrick wrote:
> Hi list,
> 
> I'm a newbie, true to its every sense, and hence this question.
> 
> I have come across the term "Embedded Linux" a lot of times. Is
> embedded linux a different branch of kernel all together? Or is it
> that the vanila stock kernel (downloaded from kernel.org) becomes
> "Embedded Linux" when compiled for an embedded processor like ARM /
> PPC etc?
> 
> 
> Thanks,

Not quite either of these things. Embedded Linux is an imprecise term, 
but it generally refers to specialized distributions that are adapted to 
embedded processors and to other limitations of embedded systems (such 
as use of flash memory instead of a hard disk).

And it covers more than the kernel. A typical Embedded Linux system 
includes the kernel, a suitable cross-compiler (a version of gcc that 
runs on i86 hardware, say, but produces output for an ARM5), a few 
associated things (an assembler, glibc) that are collectively called the 
"toolchain", and some stripped-down apps (like busybox). The kernel may 
have non-standard patches needed to get it to work with the target 
hardware ... but there is a strong push to get those patches integrated 
into the main kernel, and it usually works pretty well (at least for 
ARM, the one embedded processor I spend some time working with).

Commercial Embedded Linux distributions (from Lynuxworks, Monte Vista, 
and maybe others ... I'm way out of date here) typically include non-OS 
tools that the vendors claim facilitate cross development.

All this is really an oversimplification, though ... but probably enough 
to get you started.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
