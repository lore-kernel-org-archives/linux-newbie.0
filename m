From: Pratik Solanki <pratik.solanki.ml@gmail.com>
Subject: Re: VM Vs Swap space
Date: Fri, 8 Oct 2004 11:25:43 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9cb08bfa04100808255ac31f47@mail.gmail.com>
References: <9cb08bfa04100709095ebe08a1@mail.gmail.com>
	 <20041007172157.63553.qmail@web52908.mail.yahoo.com>
	 <9cb08bfa04100711494df0774@mail.gmail.com> <4165BFA0.8010008@gelm.net>
Reply-To: Pratik Solanki <pratik.solanki.ml@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4165BFA0.8010008@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: Ankit Jain <ankitjain1580@yahoo.com>, linux-newbie <linux-newbie@vger.kernel.org>

On Thu, 07 Oct 2004 18:13:52 -0400, chuck gelm <chuck@gelm.net> wrote:
> Pratik Solanki wrote:
> 
> >[CCing linux-newbie]
> >
> >On Thu, 7 Oct 2004 18:21:57 +0100 (BST), Ankit Jain
> ><ankitjain1580@yahoo.com> wrote:
> >
> >
> >>well i dont know exactly but somewhat i feel that
> >>there must be some way to disable the virtual memory.
> >>yaa of course there should be some way. it is not that
> >>sys cant work without it
> >>
> >>
> >
> >Yes, you can have a system without virtual memory. Search for MMUless
> >linux kernel and you'll see patches/websites.
> >
> >My point was that disabling VM after its been enabled would tough (if
> >not impossible). Someone correct me if I am wrong here.
> >
> >Pratik.
> >
> I was thinking that an active swap partition was 'virtual memory'.
> Why are many folks using capital letters 'VM'.  Am I missing
> something?  Is 'VM' == virtual memory or is there a application
> or service called 'VM' ?

Yes, VM is virtual memory.
 
>  Anywho, the only 'virtual memory' I know of is an active
> swap file or swap partition and either can be started
> or stopped in a running kernel.
> (I think.)
 
Swap can be started or stopped. Virtual memory cannot be started or
stopped. Just because you stopped swap does not mean the kernel is not
using virtual memory. The kernel always uses virtual memory (except if
its MMUless) . Swap is used only when the kernel needs more memory
than what's physically available.

Pratik.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
