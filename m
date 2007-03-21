From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: need for 3G/1G split
Date: Wed, 21 Mar 2007 09:45:27 +0530
Message-ID: <7783925d0703202115j11dbf254nc916252e4cd98e8a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=K7J85NMn8/aBSScdIz+WApSzern3loShdJWixZEGtuVInOnph5ICBH7w87RB2hPn9iaGZwd2HScz/XRkwSNtfXZtsMtYf4Cq9b5X8mY8dOJpqQQuTfwPop2GtcE5H+mm26cfqovl1Q7z7RyfzYY8+2YDkfYXPpEelEyZh9ziof4=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

Why is kernel restricted to use virtual addresses of only 1 GB? Or
what is the need to split up the virtual address space into user
addresses and kernel addresses?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
