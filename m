From: Rajat Jain <rajatjain@juniper.net>
Subject: Ordering / preemption of work in a workqueue preempt?
Date: Fri, 15 Nov 2013 15:16:24 +0000
Message-ID: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi,

I have a single work queue, on which I have scheduled a worker function [using queue_work(wq, fn)] in interrupt context. 

I get the interrupt twice before the work queue gets a chance to run, and hence the same function will get queued twice (with different private context - arguments etc) which is fine and expected.

Questions:

1) Is it possible that the instance that was queued by 2nd interrupt, can get to run BEFORE the instance that was queued by 1st interrupt? In other words, is reordering possible?

2) Is it possible that one running instance of the function, can get preempted by second instance of the same work queue? I read through http://lwn.net/Articles/511421/ and it talks about same work queue cannot run on different CPU, but I have doubt about single CPU. If If I am writing a worker function, does my code have to be ready that it can be preempted by another instance of the same function?

Please note that I understand that my worker function can preempted by other processes, my doubts are related to the same workqueue.

Thanks,

Rajat

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
