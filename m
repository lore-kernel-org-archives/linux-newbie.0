From: "Gaurav Bhatnagar" <bhatnagar.gaurav22@gmail.com>
Subject: How to get thread ID(LWP) in program ?
Date: Wed, 20 Jun 2007 09:35:01 +0530
Message-ID: <e88b5df0706192105o191056bq1e0fa4534613ef6@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=gi4gm8UtNW7Znn1wUqVoybbW7jXmHerrxnQ9fM/7lyeU6WYF7QdbcFwthU1SJtFjDW0ItxELQkSKHdZk51wi1MwfOwr2EUIWZRlqColT0GSmpUtSv48MFW742vTO4qEM3NTy5czUqxLa0nugPG0ynwECpIEd0k4v6PrLWgskCdY=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I have a program that creats a number of threads using pthread_create
function. When I use "ps -eLf" command I see a column LWP i.e.
(threadID) of all newly created process. I want to print these LWP
from my program in thread routines of each thread to see which LWP
belongs to which thread.

Please tell me what function should i use to print LWP of threads.

Thanks in advance.

Regards,
Gaurav
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
