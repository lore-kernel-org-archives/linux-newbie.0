From: Amit Virdi <amit.virdi@st.com>
Subject: Viewing dmesg output after crash
Date: Tue, 26 Apr 2011 15:18:21 +0530
Message-ID: <4DB694E5.8000500@st.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi

I'm debugging a system crash. I got OOPS message and found the buggy 
piece of code. I wish I had the output of dmesg just before the crash. 
In other words, I want to view the last messages collected by the ring 
buffer used by dmesg.

The log messages are certainly being appended to some logfile in the 
RAM. How can I find the address where the logfile is being created or 
how can I extract the logfile?

Thanks n Regards
Amit Virdi
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
