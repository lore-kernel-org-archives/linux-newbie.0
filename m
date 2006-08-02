From: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Subject: Re: Re: Regarding the gfp mask "GFP_NOFS"
Date: Wed, 2 Aug 2006 18:37:40 +0700
Message-ID: <200608021837.40445.mulyadi.santosa@gmail.com>
References: <292693080607312306r58d0aa70q969a348842f26586@mail.gmail.com> <200608020010.05235.mulyadi.santosa@gmail.com> <292693080608012315i7902d921w175d296357f5143d@mail.gmail.com>
Reply-To: mulyadi.santosa@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080608012315i7902d921w175d296357f5143d@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi...
> So if some memory needs to be swapped out to disk (in order to free
> memory that can be returned to the process calling kmalloc), I
> understand Disk IO should suffice. But my doubt is how can a
> filesystem IO help to free memory (so that it can be returned to the
> process calling kmalloc)?

I hope I also got your point...

Think about a scenario where the swap area is actually a file stored 
inside formatted partition (let's say ext2). Thus, it will first 
generate filesystem operation, right?

regards,

Mulyadi.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
