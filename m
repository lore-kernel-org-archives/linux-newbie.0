From: Peter STIEGLITZ <peter.stieglitz@st.com>
Subject: Wait queues and scheduling
Date: Tue, 19 Oct 2004 15:24:41 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004901c4b5e7$5f789f70$340d81a4@benin>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Folks,
I have a little question about scheduling.

If I have two waiting processes running in the context of the kernel on a wait queue (as a result of a blocked read). A high priority process is first in the wait queue and a low priority last in queue. An interrupt occurs and the ISR wakes up the first waiting process. The first process is woken, runs and exits kernel context back to user.

Which process now runs?

Is the waiting task scheduled as soon as the high priority returns to user mode or does the high priority process run until the low priority process is scheduled or the high sleeps and the low scheduled.

Thanks for any help
Regards
Pete

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
