From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: bottom half question
Date: Mon, 3 Dec 2012 17:56:57 +0530
Message-ID: <CAGZFCEH__DQfr7-q-5F6JsffXwPHpaE5+235pjn=ib5XMH9M6g@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=mHgL8mNrhhlBGo1acJl8YVYZVBv79wbiQ69pmFQPPJ8=;
        b=otvijBguHGKRSY4UGVFwT3WVfacO89OHqx+GDEsootZ9NH77taUBBv9IVgISHUuOjt
         RtiKaXuYeAewXDzH7dZgjDe+AeBFdD00O3y9wd3kXOAdMqLGVqb5wr0LRirA8/Cu34Pk
         DNzoT8p6OxTr/7p48XQHwtrmuplFLGoig9S6Y1Bizy8XAgjhhOIV3l+TKIviaNtTadLH
         6gt9KF/Fs9lIOJppEb16N+CRoWh3qT52zGg6pbXn1AXmq+sTKnWVfmePBE3l98VlYx0J
         xu11F9sjxI3AgtPNBso+AT+qxmOqlfUogA4ObWEmwbo2X0EfJMj8lO1VdYsnwSNnTEXA
         kH3g==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

In uni processor system ( 2.6 kernel )

An  interrupt happened and ISR routine is  serviced , then   bottom
half scheduled and while the bottom half is running

1) Suppose  same interrupt happened  again - > then  (the previous )
bottom half is preempted  and ISR is serviced for new interrupt. After
ISR , same bottom half will be run again ? or the new  one ?

2) if it is a new bottom half being run ,( since bottom half is in
interrupt context )  where it can store register info of previous
interrupt ?


3) Suppose a lot of interrupts happen in a short period of time , how
and when bottom half for each interrupt  gets scheduled ?


-Ratheesh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
