From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: serial console questions
Date: Fri, 15 Nov 2002 10:46:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD540FC.7040706@jpl.nasa.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I have a serial console set up so I can capture output from boot and any 
sysrq activity.

The problem I have is I can't seem to do sysrq keys from the serial 
connection. The sysrq docs say I need to send a "break". Isn't that just 
a CTRL-C ? This doesn't work. I have to physically do all sysrq keying 
from the physical machine. This means my serial console is nothing more 
than a fancy logger. I'd like to interactivally send all the sysrq key 
sequences from my serial connection. I'm use tip as my serial software 
from a Sun box... is that the problem? I suspect my terminal is the 
problem...

How do I use sysrq over a serial console?

-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
