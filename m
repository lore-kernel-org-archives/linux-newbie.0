From: Kevin Curtis <kevin.curtis@farsite.co.uk>
Subject: Preventing signal interrupt in Kernel module code
Date: Fri, 13 Sep 2002 14:54:19 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7C078C66B7752B438B88E11E5E20E72E0EF512@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi,
	I have written a Kernel module and I'm having a small problem with
signals that I hope someone can steer me through.  The signal in question
are SIGCHILD, but that is not really relevant.  I must be able to handle any
signal that the process has enabled.

	My module has several wait queues, most of which I can cope with
being interrupted by a signal (returning EINTR to the process).  However,
there are some hardware operations that I need to wait for completion of, as
it would be impossible to restart them or pick up where we left off.  I
still want to use a wait queue so other things can run.  Is there some
system call I can make to mask signals until the operation has completed.
Would I still call signal_pending() to see if one had occurred while they
were blocked?

I'm sure the answer is really simple but I haven't stumbled across it yet.

TIA

Kevin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
