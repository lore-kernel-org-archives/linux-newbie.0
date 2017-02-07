From: Suraj Choudhari <surajschoudhari@gmail.com>
Subject: Socket bind failing with error -98
Date: Tue, 7 Feb 2017 12:17:24 +0530
Message-ID: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4NllSbS2+7n6EQBygnJHuS/f3mqgryCVrthr9YrdSK4=;
        b=ELw9PwZIl3/PyVdYSJmytahRSlUWr/gkr7ITr5PpH4eiFvtVoA3Hzl2c37CEWbWRwV
         Szz5BcM5hpcwNIkcK8Fbd3q4lWwJ/PGwB0YsUGz4dd3+PrUsqw/t+DRJDx6KelRFic49
         Gj6m5GXPGyRXzk9skk3X/soHsQAH47CGpDPRfvb7AQizR0xApbkj4/m0GZMHAlGZuvAo
         SntrO+bO3++IMA+PdI4HvK26MJP0+q6nE0BdqREZ1aIUdWyFJ3gsNaIB47b83qfzH50p
         9QNEV6kRxs+FQxfFUh5W8WEcQr9dszseXX+oVa2yIyd42d8uy2NcnJBRgN5M2dFxkoiX
         HPJw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, lartc@vger.kernel.org

Hi experts,

I am facing a problem while binding to TCP socket using bind()
function,  the problem is see for kernel versions >= 4.4.

The bind() function is failing with error code -98.

Currently i am calling bind() through a kernel thread.

I searched similar errors and tried with 'setsockopt' with
'SO_REUSEADDR' and 'SO_REUSEPORT ' flags.

However, bind() still continues to fail with similar error.

Can you please suggest if there are any other ways to fix it or any
particular debugging we shall do to analyze it ?


Thanks,
Suraj
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
