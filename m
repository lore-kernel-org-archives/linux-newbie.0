From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Regarding the gfp mask "GFP_NOFS"
Date: Thu, 3 Aug 2006 11:06:49 +0530
Message-ID: <b115cb5f0608022236v6176b379p23253ca05c214a89@mail.gmail.com>
References: <292693080607312306r58d0aa70q969a348842f26586@mail.gmail.com>
	 <200608020010.05235.mulyadi.santosa@gmail.com>
	 <292693080608012315i7902d921w175d296357f5143d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080608012315i7902d921w175d296357f5143d@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: mulyadi.santosa@gmail.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

>
> So if some memory needs to be swapped out to disk (in order to free
> memory that can be returned to the process calling kmalloc), I
> understand Disk IO should suffice. But my doubt is how can a
> filesystem IO help to free memory (so that it can be returned to the
> process calling kmalloc)?
>

Ummm ... not sure ... but just a direction to think upon. There memory
occupied by VFS / filesystems may be holding some buffers (of certain
files). So a file system request may be used to flush these buffers to
the disk, and thus free memory to be returned.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
