From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: reader-writer spinlocks
Date: Thu, 5 Apr 2007 09:15:45 +0530
Message-ID: <7783925d0704042045va8a015bree261c74900567db@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=QRWKSl3XBUF3/4BZDZvkQbT3Hqee+6yHfS16/yo7WgPDIxaIkL4r3HQxZclT0NgJgIuyu+km+jK+T4m+FjP0nYmZ3uej/ffp0Xl/nxAUwelWidR0TjQKqdXVkvk3A09jtcNEwcnXI7SZVG7fUlUoxFLfwpFQmQx6QJrqol3gZwo=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi LIst,

This is about reader-writer spinlocks. The Robert love's book says
that Readers are given preference over writers, where as LDD3 says
writers are given preference over readers.

So which one is correct?

And about reader-writer semaphores?

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
