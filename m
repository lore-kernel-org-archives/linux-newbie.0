From: Kevin Curtis <kevin.curtis@farsite.co.uk>
Subject: Bottom Halves
Date: Fri, 2 Aug 2002 11:30:00 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7C078C66B7752B438B88E11E5E20E72E0EF486@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,
	I am writing a Kernel module that needs to be both 2.2 and 2.4
compatible.  My module receives hardware interrupts, and I have a need to
schedule a task from the interrupt routine.  I have been reading up on
Bottom Halves and have a question:

I would like the same task to be scheduled each time the ISR is run, but the
parameter must be different.  The parameter is in fact a pointer to a
structure of context information.  The bit that worries me about what I have
read is that if the BH is scheduled several times before it is run, it will
only actually run once.  How does the Kernel identify if the task is already
in the task list?  Is it by address of the task only or the address of the
task and the value of the parameter?

Any pointers to some example code that do this would be gratefully accepted.


Kevin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
