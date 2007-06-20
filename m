From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: kernel thread ?
Date: Wed, 20 Jun 2007 07:34:47 +0530
Message-ID: <b115cb5f0706191904l6aa53103ve71b4bc62c8af503@mail.gmail.com>
References: <467842D4.4060104@compro.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=UjNz4k957MGVNQH4ARdkrG69FazYYXDqKMjAj4wDYMJ8jmgcD6I8zbRJ0oylpd+cvaV5FDPUBzQwZU3zYQrHsRVekXuD/ZZg0tyYoAj+OrZn8FQqi5ihGA5dOmc7xoR5Ymn719ZmYLYK3B9ZnYv5V9NvkES0hD0Tpm3g6eW30+M=
In-Reply-To: <467842D4.4060104@compro.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: markh@compro.net
Cc: linux-newbie@vger.kernel.org

I know some of them.


> [migration/0]

Per CPU threads to migrate processes between processors.

> [ksoftirqd/0]

Per CPU threads to execute softirqs & tasklets (bottom half
mechanisms), if they are not executed upon return of interrupt.

> [migration/1]
> [ksoftirqd/1]
> [events/0]
> [events/1]
> [khelper]
> [kthread]
> [kblockd/0]
> [kblockd/1]
> [kacpid]
> [cqueue/0]
> [cqueue/1]
> [kseriod]
> [pdflush]
> [pdflush]

Thread to periodically flush dirty pages from page cache to the disk

> [kswapd0]

The swapper thread.

> [aio/0]
> [aio/1]
> [kpsmoused]
> [scsi_eh_0]
> [scsi_eh_1]
>
SCSI error handler thread.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
