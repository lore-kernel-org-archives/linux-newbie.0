From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Why can't an ISR cause a page fault?
Date: Tue, 23 Jan 2007 13:35:52 +0530
Message-ID: <292693080701230005i4d4523a3g3cb3be819608a9b4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I read that ISRs can never cause a page fault. Why is that? What would
happen if an ISR tries to use a data item that has been swapped out?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
