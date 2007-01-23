From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: schedulting in SMP machine
Date: Tue, 23 Jan 2007 13:40:39 +0530
Message-ID: <7783925d0701230010kcd96c5asd3f305c24efec2d8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

If an executing process is interrupted by an interrupt, is it ensured
that it won't get transferred to another idle CPU in the system??

This would mean that despite the fact that a CPU is idle in the
system, still the process will wait untill the ISR finishes its
execution?

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
