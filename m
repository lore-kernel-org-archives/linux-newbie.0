From: "Deas, Jim" <James.Deas@warnerbros.com>
Subject: vmalloc and page locks
Date: Mon, 21 Jul 2003 11:19:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <S270658AbTGUSES/20030721180452Z+4623@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

How can I look at what memory are being paged out of memory in the kernel
or how to lock kmalloc and vmalloc pages so they do not get put to swap?
 I have a program that runs great 90% of the time but the other 10%
of the time the system usage (using 'top')goes from 3% to 50% and latency goes out
the window!  I am assuming this is due to some of my buffers getting swaped 
out as it often corrects itself and runs well the majority of time.
Doubling the base memory from 256M to 512M did nothing to fix this.
I need some way to find out who is holding up the process.
Any suggestions?

Best Regards,
J. Deas

** Please cc me on this if possible.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
