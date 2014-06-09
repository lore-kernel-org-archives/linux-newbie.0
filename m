From: Kyle Nusbaum <kylejnusbaum@gmail.com>
Subject: Re: use cases for mmap
Date: Mon, 09 Jun 2014 17:31:14 -0500
Message-ID: <539635B2.5040800@gmail.com>
References: <CAMKaFC_OoDFjD-2a0GNYEPANVxXztCQL15U5u-zNFqR5Ud2J6g@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=RNg/+yQSy68/GxTFnT21Lc2IsVdUdd/aRJJbE9cg3B8=;
        b=EVNxMGiOC3xXXe8z48edgAiF6fyqrrx3BNMhG5q8xROedCmb+Q2rK0+TEPbKlRTyuT
         39KXgLbdrc0Lic1HUvYEzdlRIgAQPwTVidPzVerHfSiFrIOuiJYf0BFrbcE+ip3l39fL
         kpDCkjFG1zaWMbCiERHNMiFesGOdnqE7Bq+v9Y336GWc+6Fq+CU0AmN5mxDdFtg7QhrR
         x1lNa5VyQe+oUdgBCMdy2SouB75dVgXZ58FizZwQI1vdKaPBSyXtBx94Zh/2aI0nua1W
         OGTN6na0JuX4G1Ux/ZgT5eGIaZfNwnY6Sd2SxFwwsKgoiXtoDCmvtkkHNd46pExFdYEb
         pPHQ==
In-Reply-To: <CAMKaFC_OoDFjD-2a0GNYEPANVxXztCQL15U5u-zNFqR5Ud2J6g@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kun Huang <gareth@openstacker.org>
Cc: linux-newbie@vger.kernel.org

You might take a look at the MAP_SHARED and MAP_ANONYMOUS flags in the 
mmap(2) man page.

--Kyle

On 05/15/2014 09:14 PM, Kun Huang wrote:
> Hi guys
>
> I'm reading&learning kernel codes and have a question for mmap. Many
> guys said mmap is good for sharing data between processes[0]. But how
> does mmap do that?
>
> In document, mmap is defined as:
>
> mmap(void *addr, size_t len, int prot, int flags, int fd, off_t offset)
>
> That addr is virtual address and different processes have different
> address space. So after put a file into memory via addr$offsett, how
> does another process read that data?
>
> Btw, are there some common use cases for mmap, in application layer?
>
> [0] http://stackoverflow.com/questions/258091/when-should-i-use-mmap-for-file-access
>
>
> Thanks :)
>
> Gareth
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
