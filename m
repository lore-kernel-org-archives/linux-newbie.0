From: "Kelly Jones" <kelly.terry.jones@gmail.com>
Subject: Process logger?
Date: Thu, 23 Nov 2006 21:45:36 -0700
Message-ID: <26face530611232045w7fa86de2l33938fe8550c50e5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

If a process runs for a long time, I can use "ps -aux -www" to see
info about it, and even look at /proc/pid/*

But sometimes a process starts, runs, and ends before I can see it
with "ps -aux -www" or can look at /proc/pid/*

Is there a way to log processes? A daemon or kernel module that
creates syslog entries like this:

Nov 23 16:57:38 machine processd[6052]: Process 1234 started, command=foo,
arg1=bar, arg2=blah

Nov 23 16:57:38 machine processd[6052]: Process 1234 opened file
"/tmp/foobar.txt", file descriptor 3

Nov 23 16:57:39 machine processd[6052]: Process 1234 ended

Obviously this would be something that could turned on/off (would
really clutter the logs otherwise).

I know about strace, but that only works well for processes I start
from the command-line.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
