From: =?GB2312?B?0sHU8w==?= <wxc200@gmail.com>
Subject: place_entity() update se->vruntime question
Date: Wed, 6 May 2009 13:33:47 +0800
Message-ID: <fd6b62c10905052233n4fde2a33se33fb10ad21ab889@mail.gmail.com>
References: <976813.73062.qm@web1201.biz.mail.gq1.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:content-type
         :content-transfer-encoding;
        bh=zHxR0hCj+5qF53HNWYGtaKXEudhVUHf1WchpdROdpM0=;
        b=pXQNY5JVKgkq3HMYsWLxk7QTJrzvjT3kecTm8Qm7x3HkW2m3T6j0dRLzl5r1VzEf58
         eFwAQZC24jeWjCfk1pZbG3X5FEvGKdUPx5wNukREjTQWwByyVwE8OfSNdVlo9Mb/SGmt
         nAv6CzJKwxIUUK7EG9yzKlv9vmrW51q6jAEcg=
In-Reply-To: <976813.73062.qm@web1201.biz.mail.gq1.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, linux-kernel@zh-kernel.org, wheelz <kernel.zeng@gmail.com>

Hi all,

when a process was wakeup by try_to_wake_up(),it will call
activate_task()to move a task into the run queue,and the parameter
"wakeup=1".

enqueue_task_fair() will call enqueue_entity() to place the schedule
entity to the proper cfs_rq.it will at last call place_entity() with
parameter "initial=0".

As my understanding,the waken up schedule entity has smaller vruntime
than the cfs_rq->min_runtime.But the debug information show that's
random.

So i would like to ask some kind guy,when did " se->vruntime >
cfs_rq->min_vruntime "?

I guess the new waken up process may migrate to another cfs_rq,and its
vruntime bigger than that cfs_rq.

Also if CONFIG_FAIR_GROUP_SCHED=y,the enqueue_task_fair() maybe
traverse se and its parents ,then parameter "wakeup = 1".Then the
parent schedule entity may has larger vruntime than its cfs_rq,it
stands for a group.

Could any one give some suggestion?

Thanks in advance.
--wxc200
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
