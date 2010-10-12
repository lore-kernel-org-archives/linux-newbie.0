From: Hatem Nassrat <hnassrat@gmail.com>
Subject: Manipulating Environment Variables of an Already running process
Date: Tue, 12 Oct 2010 17:05:42 -0300
Message-ID: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:from:date
         :message-id:subject:to:content-type;
        bh=N+x+hl5I3GFIVfeB7cTaK/qTTxKLhtf+BnkbgKTo/44=;
        b=kaL2gLvo/J+NDFAWqsNCKLjDUMhS0lq82cZ1wA7KhS4NhM8gBJnPbs4QylbrIk9Om5
         Jg7cs4+o8emNyyqPOICezKpcXnozmq0d+reqB3DStqGZn+CUm1y+2RhPH27jmQPf6U8Y
         kIeDwOx39clk3aesQ53ayjSepdrOigetTTAxw=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Is it possible to, manipulate an environment variables of an already
running process (using a current linux distro, and not a self hacked
kernel)?

A usecase, changing the PS1 environement var of an already running
bash process from another bash process.

Any ideas?

-- 
Hatem Nassrat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
