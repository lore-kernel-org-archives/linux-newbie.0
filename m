From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Sleeping in Work_queue threads
Date: Mon, 25 Sep 2006 14:05:57 +0530
Message-ID: <b115cb5f0609250135h42751bc8u18242c25e86a2fd8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I understand that there is a default worker thread ("event") to which
most of the drivers submit work (for bottom half processing).

Now since this thread is catering to all of the drivers; if a driver's
code sleeps, then aren't the rest of the drivers penalised?

I mean the rest of the drivers want to do their work but the thread is
now sleeping since one of the driver has issued a sleeping call?

Wouldn't a seperate worker thread for each driver be a better design?

Thanks & Sincere Regards,

Rajat Jain
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
