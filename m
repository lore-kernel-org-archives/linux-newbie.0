From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Why is Linux not RTOS?
Date: Wed, 4 Apr 2007 17:51:09 +0530
Message-ID: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=lJ5cdXngBBmdn4DsbDPTAJi0nqHn0icc522yN0CD/uP+9lh36JwXUx2YTj9VqN8GNFn2+FGFRdIwqGL/xP45UZhZ2hEZ/RXFAvgJcZOCLTuZXqX2qFiX6Ih9XzW758ZiFZDaQGG003jABlKqSrsoRXZgnWS4sIcAevygSsm/dqA=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

Why is Linux kernel considered a (hard) realtime OS? I already
understand the basic reason is that the linux kernel does not
guarantee that a task will be completed on time. But I would
appreciate answers in terms of more of kernel jargons.

What stops us from classifying kernel as hard RTOS? Is it because at
times the kernel is non-preemptive (for e.g. while holding spinlocks)?
Has it got something to do with interrupt latency / scheduling latency
etc?

Is the behaviour of the kernel (when it is preemptive) similar to hard
real time OS ??

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
