From: "Bahadir Balban" <bahadir.balban@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 16:24:29 +0100
Message-ID: <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=OEnoGWX9wRiisCEVkzUjhfMxoefqvL254aUEL4LZK3GpXoMfHYKU8WXjUfAJ7kbYN2BickOBMFa6oU1V192gi0800QHYSM7zkZImYC8wpZImngwLa8SEW0FQoURR3FCpS3O/CWQX3i0EPl4hnNO2+xTbjTlUT6/vWZJxESdWG6c=
In-Reply-To: <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Learning Linux <learninglinux4@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

On 5/14/07, Learning Linux <learninglinux4@gmail.com> wrote:
> Ok, but how about an ISR, that does not take any locks? Why can't we
> sleep in SUCH an ISR?
> LL
> -

The killer reason why you can't sleep in an interrupt is because an
interrupt is not associated with any context in the first place. What
is a context, then? It is the state information for a process. This
includes the kernel and userspace stack pointers, the register set,
and the page tables for that process. The scheduler has access to all
this information, to preempt one process and run another. Contrary to
this, an interrupt, depending on the version of your kernel and arch,
uses a separate irq stack or the kernel stack of the interrupted
process. An irq is not a context but merely a temporary execution to
be concluded asap.

Hope this helps,
Bahadir
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
