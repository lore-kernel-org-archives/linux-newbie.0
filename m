From: "Lee Chin" <leechin@mail.com>
Subject: is sendto and recvfrom thread safe?
Date: Thu, 21 Aug 2003 01:06:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030821060645.49319.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mark Hahn <hahn@physics.mcmaster.ca>, linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

Hi,
If I have a global socket file descriptor, can I call sendto and recvfrom on that file descriptor concurrently with out using semaphores around the call to sendto and recvfrom?

What about for TCP sockets?

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

CareerBuilder.com has over 400,000 jobs. Be smarter about your job search
http://corp.mail.com/careers

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
