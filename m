From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: Regarding the gfp mask "GFP_NOFS"
Date: Wed, 2 Aug 2006 11:45:37 +0530
Message-ID: <292693080608012315i7902d921w175d296357f5143d@mail.gmail.com>
References: <292693080607312306r58d0aa70q969a348842f26586@mail.gmail.com>
	 <200608020010.05235.mulyadi.santosa@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200608020010.05235.mulyadi.santosa@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: mulyadi.santosa@gmail.com
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

> > But I could not understand why and how could a filesystem request be
> > initiated in order to free memory (the case avoided by GFP_NOFS)?
>
> Not really sure, but I have an idea. What if the memory block you want
> to free is currently swapped out? Thus at least, you need to mark the
> related swap slot(s) as "free", right? In other word, it will generate
> some I/Os, although not too much.

Thank for replying ... but sorry, I could not get you. The flag
GFP_NOFS is sent to kmalloc() to indicate that if no memory is
available, it should not initiate any filesystem IO, however it is
allowed to initiate Disk IO.

So if some memory needs to be swapped out to disk (in order to free
memory that can be returned to the process calling kmalloc), I
understand Disk IO should suffice. But my doubt is how can a
filesystem IO help to free memory (so that it can be returned to the
process calling kmalloc)?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
