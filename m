From: Pratik Solanki <pratik.solanki.ml@gmail.com>
Subject: Re: VM Vs Swap space
Date: Thu, 7 Oct 2004 14:49:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9cb08bfa04100711494df0774@mail.gmail.com>
References: <9cb08bfa04100709095ebe08a1@mail.gmail.com>
	 <20041007172157.63553.qmail@web52908.mail.yahoo.com>
Reply-To: Pratik Solanki <pratik.solanki.ml@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041007172157.63553.qmail@web52908.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

[CCing linux-newbie]

On Thu, 7 Oct 2004 18:21:57 +0100 (BST), Ankit Jain
<ankitjain1580@yahoo.com> wrote:
> well i dont know exactly but somewhat i feel that
> there must be some way to disable the virtual memory.
> yaa of course there should be some way. it is not that
> sys cant work without it

Yes, you can have a system without virtual memory. Search for MMUless
linux kernel and you'll see patches/websites.

My point was that disabling VM after its been enabled would tough (if
not impossible). Someone correct me if I am wrong here.

Pratik.
 
> ankit
>  --- Pratik Solanki <pratik.solanki.ml@gmail.com>
> wrote:
> 
> 
> > On Thu, 07 Oct 2004 06:41:38 -0400, chuck gelm
> > <chuck@gelm.net> wrote:
> > > Ankit Jain wrote:
> > >
> > > >how will u differentiate virtual memory and swap
> > area
> > > >
> > > >thanks
> > > >
> > > >ankit
> > > >
> > > >
> > > Virtual memory is swap area in use.
> >
> > umm. A running system can or cannot have swap.
> > Correct me if I am
> > wrong but you can't disable virtual memory once its
> > enabled, or at the
> > very least it would be extremely tough to do so and
> > I don't know of
> > any system that does it. Virtual memory is enabled
> > when the kernel
> > starts up and stays that way. Swap is a different
> > issue.
> >
> > Pratik.
> > -
> > To unsubscribe from this list: send the line
> > "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at
> > http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> > http://www.linux-learn.org/faqs
> 
> 
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
