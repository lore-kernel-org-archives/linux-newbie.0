From: Drew <drew.kay@gmail.com>
Subject: Re: mmap of 8GB reserved memory using remap_pfn_range
Date: Sat, 22 May 2010 21:07:14 -0700
Message-ID: <AANLkTinmIid5cTvrgQxIjk_HlQLHaqdcumG0_l-mOCuO@mail.gmail.com>
References: <4BE16F84.30205@wurmsdobler.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type;
        bh=ma+Y8oxV3+DgRobwUMI03epxIDv6Z5yPBMvCwW6rAEw=;
        b=hVt+FMZe510lgYpbYx9aLhIv3bSDd3G4BxmSitsiFDGRR+RwymPKQ5/JQ0ZcDu2dAn
         Kp8bg920Z1rOs1UJJ2JQ7MGeIQoeZLSPuKzmeZm6oDmFhUODmyjNBl+1yCF3dNIhQcjL
         eFjtrf6WKYNpKzzJILzmyTuopwO1o1bPfLiZY=
In-Reply-To: <4BE16F84.30205@wurmsdobler.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Wurmsdobler <peter@wurmsdobler.org>
Cc: linux-newbie@vger.kernel.org

> I am using 64bit Ubuntu 9.04, kernel 2.8.28, on a PC equipped with 12GB RAM.
> I would like to capture and store data into a reserved memory area, 8GB big
> and above 4GB. This memory area is currently being reserved at boot time by
> passing "mem=4G memmap=8G$4G" to the kernel. (Interestingly enough, "free"
> reports only 3GB memory, a mismatch I do not quite understand yet.)

Can't help you with the rest but I'm pretty sure I know what the mismatch is.

The missing GB of RAM is caused by the PCI bus memory address range
reservation. The PCI bus uses DMA and way back when using the top GB
or so of the 32bit address space wasn't a problem. Now of course PC's
can easily handle more then 4GB (I'm specc'ing some new servers with
16-32GB RAM) so there's a hole in the 3GB to 4GB area. Some newer
64bit motherboards do support a remapping of the hole (not sure how)
but a lot of boards still don't.


-- 
Drew

"Nothing in life is to be feared. It is only to be understood."
--Marie Curie
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
