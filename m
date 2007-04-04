From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Need for a new spinlock API?
Date: Wed, 4 Apr 2007 10:40:25 +0530
Message-ID: <b115cb5f0704032210s19c9ba5ehe9f4783d0505a138@mail.gmail.com>
References: <D45AC362EAFF2F47891E71637D192ABF01D377FF@INEXCH1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=EBAD5pDIM0YFViLHZmb8CLC+sPJD7iEeyxVnE03MP8OC7MzOsIf8w8vvZ9H0jQLVSNaILLW/0hNsr2OrveVjxiR6vxwiFYVKDpDWL72Q6f88yVpIXPjano3eME9fCgst2Dx6zdKvpU232D0Y9Of58Zj5/PpCnqJ56P1WjzEZz+0=
In-Reply-To: <D45AC362EAFF2F47891E71637D192ABF01D377FF@INEXCH1>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "GAggarwal@in.safenet-inc.com" <GAggarwal@in.safenet-inc.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 4/4/07, GAggarwal@in.safenet-inc.com <GAggarwal@in.safenet-inc.com> wrote:
>
>
> Hi Rajat,
>
> I think spin_lock_irqsave() will fulfill the purpose as otherwise it may be
> possible that the when a data structure is accessed in process context by
> taking spin_lock and an interrupt comes then the ISR will remain in forever
> loop waiting for the process context to release the lock result in a
> deadlock situation for a uniprocessor system.

HI Gaurav,

I meant to use spin_lock_irqsave() in process context and spin_lock()
in IRQ context.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
