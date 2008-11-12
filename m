From: "=?BIG5?B?s6+w6qao?=" <gcchen.org@gmail.com>
Subject: question about sys_call_table size
Date: Wed, 12 Nov 2008 09:49:02 +0800
Message-ID: <2e422b910811111749q33b7e98av8aebd622eb9b2f7b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=TMuzdfi84FB1Qup0d8S2xiUbJ2cHZw15IzLabrBf2CM=;
        b=LODui+lfc0T4p33y1uxVXtvsSpNGG5PzbjS9hYdoENRAO+C0jajO+hyMCbS7/i804C
         o2Mtx/0FW2/45MyMgIt4diD+jRU+FETipIt+wHclbghBYU5u3ZUFoU2zL8JGJFNEux4S
         K3Mm87lIzkxd4H0xXcsGyu93ykl4/eNk0Mp+A=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: "gcchen. org" <gcchen.org@gmail.com>

Hi..
I have two questions:

1. Does anyone ever encounter a problem that must be solved by adding
new system calls. If yes, please briefly describe your problem.

2. If I add thousands of new system calls (say 2000) in linux kernel
and add these new system calls into sys_call_table, will there be any
stability or performance issues(or other concerns) on this new kernel?
Thanks~~~

gcchen
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
