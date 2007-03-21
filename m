From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: kernel preemption
Date: Wed, 21 Mar 2007 09:47:56 +0530
Message-ID: <7783925d0703202117tbbe231cp3bf44fcbc0726291@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=M1yFJq8Q868Fanto/+7VpcuZvhs6LDc8YN20zCnSVj5eQDCfU0nXxof9mPXdI1L3lX2CsLYh/VCEJBCGAQxgKNUev5OdNZGymq5yqpEEJhefEFth0CekBsQS9OeC2ts2k382CYnUm0Q77Nf5J9dYOaQvJpSsz4c/hLNzda8TCzA=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

When we preempt_enable() / preempt_disable(), is the kernel preemption
enabled or disabled for ALL the processors or just the local
processor?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
