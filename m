From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Threading in linux
Date: Tue, 24 Apr 2007 12:08:40 +0530
Message-ID: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=L/m7cptHcZGEMwQPqQJ8V2Ao4vIbqwAHmK86Mu1h3ZwTPw21HBA9Ksm3DNA4bADilSDj0L32yObFazsLwxxNr7d4BcZNKn2C4lB8yxhf5bWIykmKTHZduubHSp0J+P6kFmg/aUkSpxzbcmSn8xncDB6BOrHcT1zooFpQbGr5bnM=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

I read that the kernel does not differentiate between threads and
processes. That means, we can say that on a Linux system, the
threading is purely provided by user level thread libraries, right?

So as long as relevant system calls do not change, it should be
possible to run any threading library on any kernel? NPTL on 2.4?
pthreads on 2.6?

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
