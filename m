From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Query regarding alloc_chrdev_region()
Date: Thu, 29 Mar 2007 22:50:34 +0530
Message-ID: <b115cb5f0703291020j32d15d97lc6ef7c1f3face23b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=qZWbvvCohUROSF0SQr+Y0KH+0HXk+awohKAVGOszLOFs3GZer3z4utJevoXZczXUvOyxQ3q1JUx3p5qdR7tM69GOH22X/+8VSsgqBNUNVe6WnVbRVgYOpVusYUz8a+EsHKBT+rpmg9C92ECCquZVlCQBH26H7nCRcTKmRALUha0=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

I was wondering that while using dynamic device numner allocation, can
we ever have a scenario like following (using alloc_chrdev_region):

1) Char Driver A is hooked on Major num X, minor numbers 0-10
2) Char Driver B is hooked on (same) Major num X, minor numbers 11-20

If yes, how will the userland get to know about the dynamically
allocated range (needed to create device nodes), since /proc/devices
only shows major numbers?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
