From: Lalatendu Das <ldas4tux@gmail.com>
Subject: Synchronizing the resume/suspend/remove routine with Driver's IO path
Date: Tue, 7 Sep 2010 16:53:36 -0600
Message-ID: <AANLkTi=OpApRZ8ThnGUPGfHd-SB2aL_M_p6J231NNz7m@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type;
        bh=v+fslyef5sXFm6YO7vtQQriogrIHFcSPwqo10Y42yeo=;
        b=FJ/+AOsgiCX5Yl2sw+2Q/goI30xdjntuSg1j+2uQQbGRPrBmo1GytSM2ileR8xQVsv
         dwNYKt5FNSSnuSUQhQYzl6AZj+/e68aPg1XNhVGT6PHu4ZwzjJYq0rkKUjxbH0A0vhIB
         R7NwfuYpPqmE3/N8XghLNLAZeiJ0Ms7R+Mm0M=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi All,
I am newbie to Linux's power management subsystem. I saw a comment
stating that the execution suspend()/ resume callback function can
sleep.

Say for example an AHCI driver is executing its suspend call back and
just after shutting down the DMA engines / releasing all Block layer
links, the suspend() call goes to sleep and the driver's IO path
execution thread  woke up to execute. I assume this possible because
both suspend() call path and driver';s IO execution path are
independent and not synchronized.

Doesn't the driver In such scenario may do some wrong memory reference
which released by sleeping suspend() thread right?? or H/W access will
return error even though the card is not removed or gone bad which is
not desired ??

Shouldn't we synchronize the driver and remove.suspend, resume() callbacks ?

Please Let me know If i am gone wrong some where. Any pointers to read
will be great.

Thanks in advance.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
