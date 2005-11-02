From: ppunnam@cs.kent.edu
Subject: send_sigqueue problem..
Date: Wed, 2 Nov 2005 17:54:54 -0500 (EST)
Message-ID: <1137.131.123.180.184.1130972094.squirrel@webmail.cs.kent.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi guys,

i am trying to use the linux signaling to signal a user process from
the kernel..
i require a reliable(without any signal loss) and fast signaling
mechanism.
i tried to use the send_sigqueue to send the signals...here what i did

1) creted the sigqueue structure using the sigqueue_alloc()..
2) called the send_sigqueue() function...
it worked fine for some time(around 1000 sig) but after that
sigqueue_alloc failing..may be becuse of not enough memory  available
to allocate sigqueue..
i got few question about this..

1) does sigqueue structure need to be removed explisitly or it will be
autometically cleared after the signal delivery (i did't used the
sigqueue_free() becuse i dont know when the signal is deliverd).
2)there is any another way i can implement such a signaling mechanism.

i will be thankful for your help...

-prady



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
