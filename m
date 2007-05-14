From: "Learning Linux" <learninglinux4@gmail.com>
Subject: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 12:07:12 +0530
Message-ID: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=KikVC2vgJsptso6tQFYW0JeCuuMu9DOe1uTk5gFgcp71JawvcgeF1ZynPQZvmM2/WtOzQcI3WXGPjaPbEiBJ5GfL6Y4bHSH4VOf0VGD2B9UQrGNPemjXLIDo1sW3Pq9+a1BxYkFCdDFrFWlJDPQBPgcS/DobIl/eYKoHzZ9TDxU=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

I have a very basic doubt here ... what makes it impossible to sleep
in an ISR? I mean, I know that the kernel preemption is disabled and
the kernel will panic, but I could not understand why?

TIA,

LL
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
