From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: regarding kernel preemption
Date: Thu, 29 Mar 2007 21:35:13 +0530
Message-ID: <7783925d0703290905u1e4d94f2v88d6f1736c52de81@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=pY00uaV72hrMswvqRIZZUPKiuUMHioez/L6PjrGksh4KrDUimqF2UIOfNLrvyhE4M7iQ5u94nvpd6E6fj7XmPjXcS2pBctOWU/dFeRrEHTuJwKHjcntd/VDrXaBhcx8JkRWKKmfDGlYvu00VQUKNHvEPUGro2hOGY/nPT87haQk=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Kernel <linux-kernel@vger.kernel.org>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

I had posted this on kernelnewbies, but did not get much response, and
hence trying here.

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
