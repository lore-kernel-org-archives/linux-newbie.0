From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Wed, 9 Aug 2006 10:44:31 +0530
Message-ID: <b115cb5f0608082214k1f49f278m1dd29bd8188606a0@mail.gmail.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
	 <1154740833.11701.1.camel@uranium.hq.netapp.com>
	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>
	 <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
	 <44D4B134.1070002@surriel.com>
	 <b115cb5f0608050826y6bac535eja57554410e34e2fb@mail.gmail.com>
	 <9a9e5ab90608050933x6451ee98v8d3cc2abae170bdb@mail.gmail.com>
	 <44D93F65.7070209@dlasys.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44D93F65.7070209@dlasys.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dhlii@comcast.net
Cc: Nilesh Agrawal <nilesh.agrawal@gmail.com>, Rik van Riel <riel@surriel.com>, idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

Firstly, thanks for the directions.

>    uClinux is now part of the distribution kernel it is intended for
> systems without an MMU. But basically uClinux means linux without
>    paging PAGE_OFFSET = 0;

I could not find IA32 / x86 compatibility explicitly mentioned on the
uClinux site. Can uClinux work only on embedded (which ACTUALLY do not
have MMU), or can it also work on x86 (which has MMU, but I'm ok with
the idea of doing away with it)?

>
>    On some processors some faults must be handled in real mode.
>
>    Switching from protected mode to real mode and back may not be all
> that hard. But doing something while in real mode could be extremely hard.
>    You can not use any Linux resource that assumes protected mode -
> that means pretty much everything.

:-( ... That is sad.

>    Basically you would have to get a hunk of memory you can access in
> Real Mode, switch to real mode do your task switch back and copy the
> results from your memory.
>    While you were in real mode, interrupts would probably have to be
> disabled.

Ok. Basically my purpose is to write a minimal disk driver (that will
be independent of the disk hardware) using BIOS interrups. So if I
want to copy a sector from disk to memory, here is how I should
proceed:

1) Get hold of a memory chunk that is "usable" in real mode ( <1 mb
physical memory).
2) switch to real mode.
3) Issue BIOS interrupt (13h) that will copy the desired sector to this memory.
4) Switch back to protected mode.
5) Now copy data from this memory to the actual "usable" memory (any
memory accessible to the kernel)

Does the above seem ok?

Thanks,

Rajat

>
>    The x86 also has something called virtual x86 mode which might be
> more useful. I do not remember all the details, but I think you could
> create a linux process, that executed in virtual x86 mode,
>    that would execute concurrently with virtual x386 processes. That
> said Linux has no builtin facilities to work with virtual x86 processes.
> >

Thanks ... I will check it out.

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
