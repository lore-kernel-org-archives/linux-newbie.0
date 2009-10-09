From: Daniel Rodrick <daniel.rodrick@gmail.com>
Subject: preempt_disable() as synchronization tool
Date: Fri, 9 Oct 2009 09:13:34 +0530
Message-ID: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=nkWR6Dvo3x0qsiGe5DJONpFjUVeBn17nixT/16FQpwo=;
        b=YIcvqhr7u6NGU2mIHqxbYqPKYEEHz8NlPzg9+luhkoosw81hE4/94iKiwAy3YqHRA8
         i7iDg3WKUX4Z306EsjNfOF7jM/OK2B9JN6RpDfQaqOg/fnLJpfg3Px9x18flevDV59i+
         MqFVfc1WUGPtH36Jfk25JXGVACN7RqsFORnhk=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi List,

I have few queries related to preempt_disable() and would appreciate
any answers to it.

Firstly, Does preempt_disable() disable the preemption on all the
processors or on just the local processor?

Secondly, a preempt_disable() a suffifient synchronization technique
to guard a data that is shared only among process context code on a
Uni-processor? And on SMP?

Lastly, is it allowable to schedule / sleep immediately after a call
to preempt_disable()?

Thanks & Best Regards,

Dan
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
