From: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Subject: Re: Re: Re: Regarding the gfp mask "GFP_NOFS"
Date: Fri, 4 Aug 2006 13:59:49 +0700
Message-ID: <200608041359.49375.mulyadi.santosa@gmail.com>
References: <292693080607312306r58d0aa70q969a348842f26586@mail.gmail.com> <200608021837.40445.mulyadi.santosa@gmail.com> <b115cb5f0608020524k12ff7f71w6d9e2d37f2a647fb@mail.gmail.com>
Reply-To: mulyadi.santosa@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0608020524k12ff7f71w6d9e2d37f2a647fb@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi Rajat...

> Do linux systems have swap files?? Isn't swap space provided (only) by
> the swap partition?

Yes, you can format a blank file and format it as swap. Later, you 
mount it (mkswap). In the end, you get another swap area,
only this time it is not a partition.

>Ummm ... not sure ... but just a direction to think upon. There memory
>occupied by VFS / filesystems may be holding some buffers (of certain
>files). So a file system request may be used to flush these buffers to
>the disk, and thus free memory to be returned.

Hm, I agree with the idea above. Page cache can be simply dropped to 
provide more space, but first it needs to be sync'ed. That's where filesystem
operation comes from..

regards,

Mulyadi

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
