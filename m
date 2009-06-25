From: sandeep lahane <sandeep.lahane@gmail.com>
Subject: Accessing CPU performance counters from user space
Date: Thu, 25 Jun 2009 16:28:29 +0530
Message-ID: <2d51cbf80906250358x2342c823j1433afcdd548ca87@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=uGZQ+XNyGDlWXL13U1C5+hsy5tDm+1vaXuBeIqCEQc8=;
        b=mdt2KRSwfzbobHWVaqWGVL3p/oV3pfFENitcn4dxAU2DZFDq/1iEsEVW86IZc/LQv/
         4M5KUc/ICt4SX14S0bMrGoNWc5C9abUTKEtWxdSS6p3WZRAbw3e3ZVb29QIpfNVaNUUa
         MGNClDdSGWytrsXknhY17A3AbCvtw8aaoJysM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All,

Is it possible to access cpu performance counters from user space?
AFAIK, it is not possible.
I am aware of various attempts like perfmon and perfctr patch set.
Looks like a kernel module is
mandatory to access these registers. My objective is to measure
various parameters like number
instructions retired, number of cache misses, number of brach mis
predictions etc.

I know of an alternative way to count the number of instructions by
using ptrace but I think this approach
is very slow.

Regards,
Sandeep.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
