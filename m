From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: fcntl v/s ioctl
Date: Thu, 29 Mar 2007 21:46:04 +0530
Message-ID: <7783925d0703290916p5298cc10nc8279f3078af66dd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=PXhu6urofrs7hKKWgl2aXSxdWnA/jbS6P/0S6RlNze9ddaiYK7Ta8f5NU63Mr9v+8WSMyqx2wAMhIvADT4w8vh15nuqEXywBrHlaRu2rWxiY41K3JcC0qFfuTFjFVsEosopRNR1iWq8WRh1AvLrDziMMeL/VLvokAZ8fLNgkQQc=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

Could some one please explain me the differences and similarities
between fcntl and ioctl? Is one built upon the other? AFAIK, both are
used for handling of very device specific commands by the driver.

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
