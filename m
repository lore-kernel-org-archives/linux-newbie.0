From: "Learning Linux" <learninglinux4@gmail.com>
Subject: Why sleeping not allowed after preempt_disable()
Date: Tue, 15 May 2007 14:07:56 +0530
Message-ID: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=qO9QO+uGYy6UKIQtILLTeV078fBCoOutF4SSjbKIarFnmHz8LrRBAkMLEyDXx4Mh8BvaK7CzWcMj/XSkyHSkC+1yfL7qrvWvLVK/iqezfYq8quq1PYBO8IdvanFvRVXO7jQZCPAq2Oz31/FAA6zivrdjKhT+w6HdF6nhDqchnu4=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

Apologies for posting another trivial query. After reading about ISRs
and sleeping, I have cleared my doubts on why ISRs cannot sleep, but I
still cannot understand why a normal kernel thread cannot sleep once
it has disable preemption.

Assuming that the kernel thread does NOT hold any locks, nor any
per-cpu data, why stops it from sleeping after a call to
preempt_disable()?

TIA,

LL
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
