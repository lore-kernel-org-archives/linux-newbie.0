From: Suraj Choudhari <surajschoudhari@gmail.com>
Subject: Doubt related to using iovec/kvec for kernel_sendmsg()
Date: Sat, 21 Jan 2017 14:23:31 +0530
Message-ID: <CAGvB2rNV8tJRJN3CB4KN1=PLpEoyVFRHpYugepbOQabc_Yc9-A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8uESkH3cIajDxpqFPN4h0yn2I6Utyfll8NMmv1nwNoA=;
        b=hNCxhh/yMrj7OSv+CbAdNqcEryQJ2e87hZTpBimLDF6gTY+YEIHDBfVr5mPZ2k7u0+
         hazFz0j9zy4/hCjhCK1qZ6Idum+IaxcHXAFAZ2GF7XpqolQhdf4qhWyhjTvOY1FVoUni
         gUnvw97cyS0/iwTpsqwc1CU6EkLQrZ+4T0IcA7lm+Qv3hvNRaMNVrsX5RlcNVBAIDg2e
         X+aDzd3l609V1AxWIyHh0GKCeCuYrzj99pWIddVf4/y8gooV/5OpwsavBZ0oAMLMeVXV
         tdCOsA0DwDNdVByV5PpVmjgL2qY+HR6XG/Engu64tQpw891HifyUGovVuKt1Ymle///F
         3tkw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I have few doubts related to iovec & kvec structures, in particular
related to using these strucutes for sending the data over the socket
using kernel_sendmsg()/sock_sendmsg().

Doubts -
1) Can we pass iovec to kernel_sendmsg() instead of kvecs?  Is it
recommended to use kvec instead of iovec ?

2) What are differences between kvec vs iovec ?
From the definition of these structures, I see that iovec has _user
type, so it may point to a user buffer.  Are there some other
differences between kvec or iovec ?

3) When shall we use kvec instead of iovec ?

4) For iterating the iovecs, I could find one macro -- 'iov_for_each'
which uses iov_iterator.
Is there similar easy way to iterate the kvec ?

Thanks & Regards,
Suraj
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
