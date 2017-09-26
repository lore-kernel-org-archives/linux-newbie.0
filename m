From: Zheng Lv <lv.zheng.2015@gmail.com>
Subject: [NEWBIE] Is it legal for open() to return -EBUSY?
Date: Tue, 26 Sep 2017 18:45:39 +0800
Message-ID: <20170926104539.GA8459@lvzheng-thinkpad>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=suyvYTniCrNNSMxK3zyOTRMQbmmmnNPhZjBH9HqeJQI=;
        b=CJ8MKOHWeQTmv8EDTA1y2zCchuvi6Khf8tFUOnNzrwk5zJxdmeNBe3NJZ26xtD9vRS
         VeQ6WBG9YsH0pZdc0hHrC2GSCIBLVrR9g75EN8tWxdxUas+muFAlP3K0aEEI3nR+PQzE
         EIRbM6OWElxjrg/gmRbeFse+cu0fAa//x+h82Nh9JdeyP38A2JHjCcrf7EvZpmDWZ2SG
         EpMs/DaPn7zhblnwt5kV+RTYBq3hBEYIyH4k4TgTf1/gt3XiGdgzOs78MZpbyQx8VBHz
         Ph9Zh42t7NnekaF/j1SNzWWExnTjaYHAdHhCRrDee/ADEsScYrYaj3A/n2OPcQSRTpm1
         o6sg==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In LDD3, Chapter 6, Section "Restricting Access to a Single User at a Time", the example code returns -EBUSY when the chardev is in use by another user. However, I "man 3p open" and "man 2 open", finding that ERRORS section of either manual didn't mention about EBUSY.

I would like to ask if it's legal for open() to return -EBUSY.

Zheng Lv
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
