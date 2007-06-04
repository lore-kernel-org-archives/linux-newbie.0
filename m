From: "Jack Bauer" <bauer.free@gmail.com>
Subject: where to define a global variable?
Date: Mon, 4 Jun 2007 10:27:26 +0800
Message-ID: <90d49b680706031927r1aff2abesb5788e2a1c82326f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=ZA6wNlNr3dRvcw5+tvxS/cF50UmjG58IyNYCoHk1/PtN5+ytvYUD2NRFLDCFcSg4clgBJwdKwlB+lDMBIOMK21hrDGIgmi39T9F831rYCYrsRLj7sW3UcAXNmvDahVcM7nMNGAjqtbIHSQKPyg87iw11NJ+lSWIexKe/n6WvjHs=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-2022-jp"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi

I want to define a global variable to count the number of page faults
after the system boots,

how to define it without causing page fault of itself.

-- 
Xia YinChu 夏寅初
@
ShangHai JiaoTong University
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
