From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Floating point in kernel
Date: Tue, 24 Apr 2007 14:07:38 +0530
Message-ID: <292693080704240137j78fbc852x67c8af23a267d681@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=MLQdU5FAXrLYj7oGJUhLzo6g/vsgFkdRu6Lyx6wrNWVnFnX+WRMmgMlfDNj+qcZuce70XxrqDJ8tREqHpAgRlZLTypippntkJohAIux6Vyw4b1kcxSgQyhc9GbaThrU2YCahCXY0mX1h+PoikNJVzazm1+N0m3xy1u6NjvkOLtQ=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I've always read that although it isn't completely forbidden, but
kernel code shouldn't use floating point arithmetic. It is not
recommended, but surely looks possible.

So just for curosity purposes (and without getting into the debate of
"You shouldn't be doing this..."), can some one point me a working
example / code on how to use floating point in kernel?

Also FP arithmatic is not recommended because the code will need to
manually save and restore FPU registers in the event of context
switch, right? But how about in atomic context? Is it safe to use FP
arithmetic ONLY in atomic context (intr and preemption disabled)?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
