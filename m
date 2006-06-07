From: "cheng long" <kevinclcn@gmail.com>
Subject: Re: Diff between Semaphore and Completion Variable
Date: Wed, 7 Jun 2006 16:15:46 +0800
Message-ID: <786736460606070115u5b84ccc4rf6adbec161cacb65@mail.gmail.com>
References: <b115cb5f0606060457p440b82f3l72d038fb72bffa58@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0606060457p440b82f3l72d038fb72bffa58@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

> I would appreciate if some one could explain the difference between
> "completion" variables and the semaphores in Linux.
1) In semaphore, there is a variable, P() first test the variable and make the
process sleep when it equals 0. In condition variable, there is no variable,
instead, condition is external variable defined by process. The variable
is tested by the process itself. In another word, sleeping is explicit in
contion variable while implicit in sempaphore.

2) Whether there are waiting processes, V() alway increases the variable,
however,signal() of contition variable will do nothing when there is no waiting
process.

Hope this helpful !
Good Luck!

Regards,
Cheng
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
