From: =?iso-8859-1?q?Sastry=20Malladi?= <sastry05@yahoo.co.in>
Subject: 'current' macro question
Date: Fri, 20 Feb 2004 04:50:07 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040220045007.38193.qmail@web8312.mail.in.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

hi,

i have read that the "current" macro gets a pointer to
the process descriptor of the current process by
masking out the least significant 13 bits of esp. that
means  the least significant 13 bits of the starting
address of a process descriptor are always 0.is the
process descriptor always aligned at an 8KB boudary?
otherwise the masking does not give the correct base
address of the process descriptor if (say) the process
descriptor starts at 0x1534ff2f

when the kernel allocates a new process descriptor by
using alloc_task_struct() how does it make sure that
the new process descriptor is always at an 8KB
boundary?

sastry

________________________________________________________________________
Yahoo! India Insurance Special: Be informed on the best policies, services, tools and more. 
Go to: http://in.insurance.yahoo.com/licspecial/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
