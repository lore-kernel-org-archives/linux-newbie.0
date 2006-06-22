From: Ray Olszewski <ray@comarre.com>
Subject: Re: Embedded Linux?
Date: Thu, 22 Jun 2006 09:49:29 -0700
Message-ID: <449ACA19.7090701@comarre.com>
References: <292693080606212338vfe61817yb361adebd3b0363c@mail.gmail.com>	 <449A4471.6050009@comarre.com> <292693080606220030i38a309dhb95face5367e07cc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080606220030i38a309dhb95face5367e07cc@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Daniel Rodrick wrote:
>> Not quite either of these things. Embedded Linux is an imprecise term,
>> but it generally refers to specialized distributions that are adapted to
>> embedded processors and to other limitations of embedded systems (such
>> as use of flash memory instead of a hard disk).
>>
>> And it covers more than the kernel. A typical Embedded Linux system
>> includes the kernel, a suitable cross-compiler (a version of gcc that
>> runs on i86 hardware, say, but produces output for an ARM5), a few
>> associated things (an assembler, glibc) that are collectively called the
>> "toolchain", and some stripped-down apps (like busybox). The kernel may
>> have non-standard patches needed to get it to work with the target
>> hardware ... but there is a strong push to get those patches integrated
>> into the main kernel, and it usually works pretty well (at least for
>> ARM, the one embedded processor I spend some time working with).
>>
> 
> Thanks. So what I get is that there is no term such as "Embedded Linux
> Kernel". There are embedded distributions however, that contain kernel
> (compiled for an embedded architecture) with specific patches (by the
> ditribution vendor) for the specific embedded platform (ARM / PPC
> etc).
> 
> But CAN I run standard stock kernel compilerd for an embedded chip
> (say ARM) on an ARM processor? Or do I NECESSARILY need the patches by
> the distribution?

Id depends. To state the obvious, one doesn't run Linux on a CPU; one 
runs it on a computer, which has more in it than a CPU. Some kernel 
patches involve, for example, the video framebuffer, or support for 
flash memory and associated filesystems (e.g., jffs2), or ... you get 
the idea. (It's been a couple of years since I did any ARM work, and my 
memory of the details is getting a bit rusty.)

Often, embedded CPUs are part of SoCs (Systems on Chip) that integrate 
some of the support stuff into a single chip with the CPU, and that can 
impose additional requirements on the kernel or core apps.

In practice, when I worked with ARM systems, we always expected the 
board vendor to provide the core ... a working kernel, at least a 
command-line video interface, the basic app set needed for the system to 
work (mostly busybox, plus a few other things), support for jffs2, and a 
native- or cross-compile toolchain. It is possible to do this yourself 
for a new board (obviously, since the vendors do it), but when we looked 
at that option, it looked like a lot of work.

For ARM, at least, all this stuff was well developed. There was a 
standard set of kernel patches that provided most, maybe all (I forget), 
of the ARM-specific functionality.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
