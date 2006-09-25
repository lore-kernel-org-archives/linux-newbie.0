From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: why "need_resched" per process?
Date: Mon, 25 Sep 2006 15:13:03 +0530
Message-ID: <292693080609250243r711cc218p55339fbca1f839ee@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

I was determining a reason for the need_resched flag to be per process
rather than being a global variable. I read that the sole reason is
for performance.

I could not understand how would having it (need_resched) per process
result in a better performance? Having it as a global variable in the
kernel address space would be just a matter of getting the value at a
known address.

On the other hand, having a per process copy sure results in
unecessary memory occupancy.

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
