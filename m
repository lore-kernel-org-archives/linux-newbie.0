From: jbradford@dial.pipex.com
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 17:04:56 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210241604.g9OG4u5X000579@darkstar.example.net>
References: <0210240635240C.00497@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0210240635240C.00497@unix.pa3gcu> from "pa3gcu" at Oct 24, 2002 06:35:24 AM
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

> > According to a conversation I had with another helper on this list,
> > there is an experimental IDE CR driver that does away with the scsi
> > emulation.  I was under the impression that this was the only way to
> > turn on the dma setting.
> 
> Then i stand corrected, as i know nothing of such a driver, it could be that 
> such a driver is being developed into 2.5 kernels, however those kernels are 
> not things to use on normal systems as they are what they are, "experimental".
> 
> Perhaps the "other helper" on this list would like to tell us where to find 
> information on this driver.

I believe I am "the other helper" :-)

Yes, you are right, 2.5 contains changes that will eventually allow cd
recording without using SCSI emulation:

http://groups.google.com/groups?q=cdrecord+%22torvalds%40transmeta.com%22&hl=en&lr=&ie=UTF-8&scoring=r&selm=Pine.LNX.4.44.0210161437010.1108-100000%40penguin.transmeta.com.lucky.linux.kernel&rnum=3

By the way, I'm not sure what enabling/disabling DMA has to do with
reading a faulty CD-ROM.  It's not like you're enabling/disabling
UDMA, which has error correction to detect errors on the _bus_.

John.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
