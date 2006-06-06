From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Diff between Semaphore and Completion Variable
Date: Tue, 6 Jun 2006 17:27:35 +0530
Message-ID: <b115cb5f0606060457p440b82f3l72d038fb72bffa58@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

Hi,

I would appreciate if some one could explain the difference between
"completion" variables and the semaphores in Linux.

As far as I can understand, both are used to provide synchronization
among kernel threads. Both have similar mechanism i.e. one or more
tasks wait on the completion variable (or semaphore) while another
task holds it and does some work (in critical section). When the task
holding the completion variable (or semaphore) is done, it signals the
other task using "complete" (or "up"). This would cause the waiting
tasks to wait up.

So why have two different things to do the same thing?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
