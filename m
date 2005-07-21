From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: using 2.6 kernel timespec nano sec?
Date: Thu, 21 Jul 2005 15:03:09 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811611315@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear all,

I have timing issue in my code powering up my socket device.
I want use the current_kernel_time() and wait in terms of nano seconds.
The tv_nsec (nano) of timespec structure will be overflowing every
second. 
So, how do I handle it?

Regards,
Mukund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
