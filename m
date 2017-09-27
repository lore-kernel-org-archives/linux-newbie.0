From: Santosh Sivaraj <santosh@fossix.org>
Subject: Re: [NEWBIE] Is it legal for open() to return -EBUSY?
Date: Wed, 27 Sep 2017 13:39:25 +0530
Message-ID: <20170927080925.vmhmbah36sifaxpy@santosiv.in.ibm.com>
References: <20170926104539.GA8459@lvzheng-thinkpad>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fossix-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NJhFrnHtrsrASY4d/QBYKKe+miSPpyT0YGFpBHMmEVY=;
        b=1stTW0N55U4S5a1UFlHu61HKD0Sk3MeCLaGdZMcyasXtxUBKSKBt93aG1TIkncjPnX
         A3PfH0f3+vM0x11mI7jLx8LjSpDGlb9ZlOdFSmQyjJ/8ymwiiIIthipWskWRawHAD8AX
         q+f9fOtQ4LZReoBPlLoW4+cubp2CEiM3Zkey9ukql3KR3ZBK7OME4b8HKHYugz56fnDL
         GheQtdtjW+msrWkdAlqMBLs+DCf5v/r5BevRQ2jBU3KkLmgYtPypaVnqW6fQ/HcjgzSH
         mzVlG5bGThrfLOxxoo8dGbgfvxCsZ6kBTcF/9ChfNsmaLVTEQQyEpmoPC6nUy3ITkHh6
         6o7Q==
Content-Disposition: inline
In-Reply-To: <20170926104539.GA8459@lvzheng-thinkpad>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Zheng Lv <lv.zheng.2015@gmail.com>
Cc: linux-newbie@vger.kernel.org

* Zheng Lv <lv.zheng.2015@gmail.com> wrote (on 2017-09-26 10:45:39 +0000):

> In LDD3, Chapter 6, Section "Restricting Access to a Single User at a Time", the example code returns -EBUSY when the chardev is in use by another user. However, I "man 3p open" and "man 2 open", finding that ERRORS section of either manual didn't mention about EBUSY.
> 
> I would like to ask if it's legal for open() to return -EBUSY.

Yes, it is legal. Many drivers return EBUSY when they are only supposed to be
opened once. Probably some vga/drm/audio drivers etc. The `open` man page is
mostly directed towards (filesystem) files and directories, so all kinds of
errors are not covered.

Imagine a case where a device requires a interrupt line that can't be shared, in
which case EBUSY would be the right thing to return.

Thanks,
Santosh
> 
> Zheng Lv
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
