From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: VM Vs Swap space
Date: Fri, 8 Oct 2004 08:59:02 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a504100720292af3f3b3@mail.gmail.com>
References: <104ee7a5041007022541759421@mail.gmail.com>
	 <20041007093740.79630.qmail@web52904.mail.yahoo.com>
	 <9cb08bfa04100709075243ce1c@mail.gmail.com>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <9cb08bfa04100709075243ce1c@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pratik Solanki <pratik.solanki.ml@gmail.com>
Cc: linux-newbie@vger.kernel.org

In That case, also. There is a implicit Swap area and a Explicit area.


On Thu, 7 Oct 2004 12:07:21 -0400, Pratik Solanki
<pratik.solanki.ml@gmail.com> wrote:
> On Thu, 7 Oct 2004 10:37:40 +0100 (BST), Ankit Jain
> <ankitjain1580@yahoo.com> wrote:
> > well if we dont have a swap area then shall i say my
> > system dosent have virtual memory
> 
> No.
> 
> > is this correct? because i feel even if this swap area
> > is not there then also virtual memory concept exists?
> 
> Virtual memory is the reason why applications can think they have 4GB
> of memory while your physical machine might actually have only 32MB.
> You don't need to have swap in order to have virtual memory, although
> its very advantageous to have swap with VM.
> 
> Virtual memory maps the viurtual pages (from 0 to 4GB) to actually
> physical memory pages (from 0 to however much RAM you have). Swapping
> is the process of using the disk to store physical memory pages when
> they are not in use, and then restoring them when an application
> accesses them.
> 
> Pratik.
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
