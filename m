From: "Lee Chin" <leechin@mail.com>
Subject: suspending a thread and executing it later
Date: Sat, 18 Jan 2003 11:33:16 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030118163316.96087.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

Hi,
Here is what I want to do... in my program, I want to arbitrarily in some function suspend the execution of the current (self) thread and schedule my self to resume from that point later.

In my program, I only have 2 threads... and lets say thread 1 ends up calling a function foo() that will block on IO.  I dont want to make the whole system block, so I want to resume the execution of foo() when the IO completes and restore thread state so that the stack (function call history and all) is maintained.

How can I do this in Linux?

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

Meet Singles
http://corp.mail.com/lavalife

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
