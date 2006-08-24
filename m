From: Aleksey Gorelov <dared1st@yahoo.com>
Subject: RE: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 15:21:36 -0700 (PDT)
Message-ID: <20060824222136.49055.qmail@web83114.mail.mud.yahoo.com>
References: <1156449809.3014.84.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1156449809.3014.84.camel@laptopd505.fenrus.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arjan van de Ven <arjan@infradead.org>
Cc: jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, satinder.jeet@gmail.com



--- Arjan van de Ven <arjan@infradead.org> wrote:


> > > 
> > > it'll be easier and quicker to rev engineer 5 more formats than it will
> > > be to get the bios thing working ;) And the performance of the bios
> > probably true - I'm actually not great fan of originally proposed approach. But, 
> > unfortunately, manufactures and vendors still look more to MS. Until market 
> > situation changes, there is always a gap...
> 
> there are only so many different ways to describe raid0.
> And those companies aren't going to keep changing that "just because",
> changing costs them money, so there is an incentive for them to keep it
> as is

Bottom line is - today there is lack of support for it, and for some companies it 
means loosing money. Tomorrow there will be support for all raid0 variants, but 
as well some kind of new unsupported hw/technology - hence gap is still there, 
spiral thing :-( Nothing we can do here but to improve support in Linux today in
a hope it will take bigger market share tomorrow.

> 
> > 
> > > thing will be really really bad... (hint: real mode can access only 1Mb
> > > of memory, so you will bounce buffer all IO's)
> > This is true for non-dma case only. As I already mentioned before, most BIOSes 
> > support dma, and there is no 1Mb limit for that (at least on modern hw).
> 
> but only DMA to lower regions usually

  It depends on your memory manager. Virtual DMA services (aka VDS) are there and being
used from 1992 (for instance, in emm386 - Linux's memory management is more powerfull than that).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
