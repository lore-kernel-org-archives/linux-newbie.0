From: Pratik Solanki <pratik.solanki.ml@gmail.com>
Subject: Re: VM Vs Swap space
Date: Thu, 7 Oct 2004 12:13:20 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9cb08bfa041007091311f7e5b4@mail.gmail.com>
References: <9cb08bfa04100708182c097689@mail.gmail.com>
	 <20041007160656.32450.qmail@web52904.mail.yahoo.com>
Reply-To: Pratik Solanki <pratik.solanki.ml@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041007160656.32450.qmail@web52904.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Yes. 32 bit address = 2^32 addresses = 4GB

For a 64-bit machine, the limit is 2^64.

Pratik.

On Thu, 7 Oct 2004 17:06:56 +0100 (BST), Ankit Jain
<ankitjain1580@yahoo.com> wrote:
> why limit is upto 4 GB is it due to address bus limit?
> 
> thanks
> 
> ankit
>  --- Pratik Solanki <pratik.solanki.ml@gmail.com>
> wrote:
> 
> 
> > On Thu, 7 Oct 2004 10:37:40 +0100 (BST), Ankit Jain
> > <ankitjain1580@yahoo.com> wrote:
> > > well if we dont have a swap area then shall i say
> > my
> > > system dosent have virtual memory
> >
> > No.
> >
> > > is this correct? because i feel even if this swap
> > area
> > > is not there then also virtual memory concept
> > exists?
> >
> > Virtual memory is the reason why applications can
> > think they have 4GB
> > of memory while your physical machine might actually
> > have only 32MB.
> > You don't need to have swap in order to have virtual
> > memory, although
> > its very advantageous to have swap with VM.
> >
> > Virtual memory maps the viurtual pages (from 0 to
> > 4GB) to actually
> > physical memory pages (from 0 to however much RAM
> > you have). Swapping
> > is the process of using the disk to store physical
> > memory pages when
> > they are not in use, and then restoring them when an
> > application
> > accesses them.
> >
> > Pratik.
> >
> 
> ________________________________________________________________________
> Yahoo! Messenger - Communicate instantly..."Ping"
> your friends today! Download Messenger Now
> http://uk.messenger.yahoo.com/download/index.html
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
