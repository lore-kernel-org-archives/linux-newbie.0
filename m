From: Robert Reif <reif@earthlink.net>
Subject: block driver example needed for 2.4
Date: Sun, 18 Aug 2002 23:48:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D606A92.8EDACE75@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm writing a block device driver for an IPI controller that has an
onboard
command queue.  I have the driver working for one command at a time but
I would like to send it all pending requests in the request queue and
handle
the replies as they come back.  I'm having a hard time figuring out how
to
read multiple requests from the request queue properly and also remove
the
requests properly from the request queue in the interrupt routine.

Linux Device Drivers talks about this type of driver but doesn't give an
example.
Are there any examples or explanations  for a block driver like this?

The DAC960 code looks like it's doing what I want but it's hard to
follow
without hardware documentation.

Thanks,

Bob.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
