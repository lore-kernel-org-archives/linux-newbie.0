From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why sleeping not allowed after preempt_disable()
Date: Tue, 15 May 2007 17:10:57 +0800
Message-ID: <a2ebde260705150210y622d8a2dx80f6db1ec3f0930e@mail.gmail.com>
References: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
	 <e88b5df0705150144u234392f2n6b0ce29c91d24ac9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=peT/3XsuMh/XWvbt4/paSPpjVQ6LBs4ZKFxNN3EoDSV29mDMo0aE2jiZ7uG9dtBCLBXuk0dj0DQ/TPo7YKEIUYq1rU4m/0P5ZZeb3xJ2eUdLUvuA49kACnl6FQVf2ySwu+MhQlMj3t3TCbN3VbX40KA9crQl7+pEXtvVvmv/wB8=
In-Reply-To: <e88b5df0705150144u234392f2n6b0ce29c91d24ac9@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Gaurav Bhatnagar <bhatnagar.gaurav22@gmail.com>
Cc: Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

2007/5/15, Gaurav Bhatnagar <bhatnagar.gaurav22@gmail.com>:
> if you set disable preemption ... kernel can't schedule another thread until
> thread itself leave the cpu ... if this thread sleeps who will wake it up
> ??? this would lead to deadlock ..
> gaurav
>

I do not think the potential dead-lock is the reason, because the
sleep operation is exactly the operation of relinquishing CPU. So if a
process disable preemption and then sleep, the scheduler will be
invoked and another process will use CPU. No dead-lock here.

I think the reason lies in why you are about to use preemption
disabling in the first place. When you use preemption disabling, you
managed to define a critical region within which your data structure
is protected from being corrupted by another process. But if you put a
sleep in that critical region, I think you actually split your
original critical region into two regions in purpose so you should
encompass each region by one pair of preempt_disable/enable
respectively.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
