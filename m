From: b133@borqs.com
Subject: place_entity() update se->vruntime question
Date: Tue, 5 May 2009 03:59:13 -0700 (PDT)
Message-ID: <976813.73062.qm@web1201.biz.mail.gq1.yahoo.com>
Reply-To: b133@borqs.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, linux-kernel@zh-kernel.org
Cc: wxc200@gmail.com, xiaoguangrong@cn.fujitsu.com


Hi all,

when a process was wakeup by try_to_wake_up(),it will call activate_task()to move a task into the run queue,and the parameter "wakeup=1".

enqueue_task_fair() will call enqueue_entity() to place the schedule entity to the proper cfs_rq.it will at last call place_entity() with parameter "initial=0".

As my understanding,the waken up schedule entity has smaller vruntime than the cfs_rq->min_runtime.But the debug information show that's random.

So i would like to ask some kind guy,when did " se->vruntime > cfs_rq->min_vruntime "?

I guess the new waken up process may migrate to another cfs_rq,and its vruntime bigger than that cfs_rq.

Also if CONFIG_FAIR_GROUP_SCHED=y,the enqueue_task_fair() maybe traverse se and its parents ,then parameter "wakeup = 1".Then the parent schedule entity may has larger vruntime than its cfs_rq,it stands for a group.

Could any one give some suggestion?

Thanks in advance.
--wxc200
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
