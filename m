From: "Gaurav Bhatnagar" <bhatnagar.gaurav22@gmail.com>
Subject: Re: Why sleeping not allowed after preempt_disable()
Date: Tue, 15 May 2007 14:16:21 +0530
Message-ID: <e88b5df0705150146q7eeb943xac37ada6c07fe8f6@mail.gmail.com>
References: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=MNvS6Ud4DJ7eU+R6YKDte3EAMtkfjhr0q4Nd9fFM3aCr6N+B52F7/mhHMuJHorfMP4GKjmrzXu2zfqw5Nfr5ZHA6XSJCIalCwa/JBWu67yKSJuY4ILwNJTCa4xn5GFeb9vE8FXtQTbClplhTVXRV44gtBsF72U5wcldA7/0HG/g=
In-Reply-To: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Learning Linux <learninglinux4@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

if you set disable preemption ... kernel can't schedule another thread until
thread itself leave the cpu ... if this thread sleeps who will wake it up
??? this would lead to deadlock ..
gaurav

On 5/15/07, Learning Linux <learninglinux4@gmail.com> wrote:
> Hi,
>
> Apologies for posting another trivial query. After reading about ISRs
> and sleeping, I have cleared my doubts on why ISRs cannot sleep, but I
> still cannot understand why a normal kernel thread cannot sleep once
> it has disable preemption.
>
> Assuming that the kernel thread does NOT hold any locks, nor any
> per-cpu data, why stops it from sleeping after a call to
> preempt_disable()?
>
> TIA,
>
> LL
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
