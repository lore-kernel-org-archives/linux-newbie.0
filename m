From: "Dave B. Sharp" <daveb_sharp@yahoo.ca>
Subject: Re: Why "high memory" in x86?
Date: Tue, 1 Aug 2006 09:51:47 -0400 (EDT)
Message-ID: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
References: <44CF1C76.5060406@solidcore.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44CF1C76.5060406@solidcore.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Yes, but why is only 1GB of memory "available"? The
whole address space is available to other kernels.

  Dave Sharp

--- Rajendra <rpm@solidcore.com> wrote:

> The reason for the high memory is this.
> 
>    o Linux divides the address space into two parts,
> user and kernel.
>    o Kernel gets 1 GB of address space while user
> gets 3GB virtual 
> address space.
>    o Kernel needs to access all of the  memory so
> ideally it needs 4 GB 
> of virtual addresses.
>    o But since only 1 GB (i.e. beyond 0xc000 0000)
> is available, so we 
> call the rest as
>       high memory (approx 3 GB)
>    o The high memory is accessed using temp. page
> table entries that map 
> the high memory
>       areas in kernel address space.
>    o The high memory region is mostly allocated to
> the user space programs.
>   
> hope it answers the question !
> 
> regd,
> ~rpm
> Rajat Jain wrote:
> 
> > Hi list,
> >
> > I recently read that the concept of "High Memory"
> was introduced
> > because certain architectures are capable of
> physically addressing
> > larger amounts of memory than they can virtually
> address (physical
> > address space > virtual address space). I also
> read that nowadays
> > "high Memory" exists only in x86.
> >
> > 1) Why is virtual memory > 896 MB on x86
> designated as high memory?
> > AFAIK x86 has 4 GB of virtual address space
> (=physical address space?)
> >
> > 2) Has the "high Memory" concept got anything to
> do with PAE (Page
> > Address Extention) feature of x86?
> >
> > 3) Do any other architectures than x86 have the
> concept of high memory?
> >
> > TIA,
> >
> > Rajat
> > -
> > To unsubscribe from this list: send the line
> "unsubscribe 
> > linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> http://www.linux-learn.org/faqs
> >
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 


__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
