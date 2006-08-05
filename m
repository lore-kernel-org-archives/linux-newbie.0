From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Sat, 5 Aug 2006 18:41:04 +0530
Message-ID: <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
	 <1154740833.11701.1.camel@uranium.hq.netapp.com>
	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

> Hi List,
>
> I want to issue BIOS interrupts in Linux (both user space & kernel
> space are fine). More specifically I want to issue BIOS interrupt 13h
> for accessing disk using the BIOS routines. How can I do so (issue the
> BIOS interrupt)?

> Rajat

> On 8/5/06, Rahul Iyer <idlisambar@gmail.com> wrote:
> > In a single sentence,
> > "you cannot".
> > The reason is that bios interrupts can only be used in real mode and not
> > in protected mode. Linux runs in protected mode, and so this would not
> > be possible.

Uh ... :-(

> > What is it you are trying to do? Maybe there's a better way to do it...
> > (by using the block device subsystem, for instance)
> > -rahul
> >

Actually I was thinking that if it is possible to perform all the Disk
IO operations using the BIOS routines, then why can't we write a
SINGLE disk driver that will work with all the kinds of disks. The
idea was ofcourse based on the assumption that the driver will be able
to do all disk operation using the BIOS interupts, instead of actually
communicating with the Disk controller hardware.

So all this seems like a bad idea ... or should I say TOTALLY IMPOSSIBLE?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
