From: "David H. Lynch Jr." <dhlii@dlasys.net>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Tue, 08 Aug 2006 21:50:29 -0400
Message-ID: <44D93F65.7070209@dlasys.net>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>	 <1154740833.11701.1.camel@uranium.hq.netapp.com>	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>	 <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>	 <44D4B134.1070002@surriel.com>	 <b115cb5f0608050826y6bac535eja57554410e34e2fb@mail.gmail.com> <9a9e5ab90608050933x6451ee98v8d3cc2abae170bdb@mail.gmail.com>
Reply-To: dhlii@comcast.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <9a9e5ab90608050933x6451ee98v8d3cc2abae170bdb@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nilesh Agrawal <nilesh.agrawal@gmail.com>
Cc: Rajat Jain <rajat.noida.india@gmail.com>, Rik van Riel <riel@surriel.com>, idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Nilesh Agrawal wrote:
>> Okay ... NOW we are talking. Any idea / links / references on where
>> should I start looking for? How tough / practical is it to switch from
>> protected mode to real mode and back? Is it possible at all (in
>> linux)?
>
> Paging only works in protected mode. And once paging is turned off,
> all the kernel code is unusable because it is linked at PAGE_OFFSET +
> something. ( 3GB + )
>
> Disabling paging itself is not easy, let alone going to real mode
> (where only 64KB memory is available ) and coming back.
    on an x86 real mode has access to 1MB of memory. Not 64K.
    Frequently this is quoted a 640K because the upper part of the real
mode address space may contain graphics adapters, and roms.

    uClinux is now part of the distribution kernel it is intended for
systems without an MMU. But basically uClinux means linux without
    paging PAGE_OFFSET = 0;

    On some processors some faults must be handled in real mode.

    Switching from protected mode to real mode and back may not be all
that hard. But doing something while in real mode could be extremely hard.
    You can not use any Linux resource that assumes protected mode -
that means pretty much everything.
    Basically you would have to get a hunk of memory you can access in
Real Mode, switch to real mode do your task switch back and copy the
results from your memory.
    While you were in real mode, interrupts would probably have to be
disabled.

    The x86 also has something called virtual x86 mode which might be
more useful. I do not remember all the details, but I think you could
create a linux process, that executed in virtual x86 mode,
    that would execute concurrently with virtual x386 processes. That
said Linux has no builtin facilities to work with virtual x86 processes.
>
>
> Nilesh
>
>


-- 
Dave Lynch 					  	    DLA Systems
Software Development:  				         Embedded Linux
717.627.3770 	       dhlii@dlasys.net 	  http://www.dlasys.net
fax: 1.253.369.9244 			           Cell: 1.717.587.7774
Over 25 years' experience in platforms, languages, and technologies too numerous to list.

"Any intelligent fool can make things bigger and more complex... It takes a touch of genius - and a lot of courage to move in the opposite direction."
Albert Einstein

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
