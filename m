From: "Liang(Bill) Wang" <bill.liangwlw@gmail.com>
Subject: why struct cdev has not a struct device embedded?
Date: Sun, 14 Jul 2013 18:40:27 +0800
Message-ID: <1373798427.11284.11.camel@localhost.localdomain.facesea>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:content-type:x-mailer:mime-version
         :content-transfer-encoding;
        bh=haI9C/hzvJ5qKrE9yidIqWpDcEqrGoyDXS2PtFVB4dk=;
        b=XI2gn9/a7/iBdFTTb10YnfhOQM0UsChyIta2GZqu8wI1FdPfwAyGscXVIoLuVbBkhG
         kubLHhduTQ6yH5sxdixrLtVdtKdLVMLRqwr/gIypZZhbIWzuNAVhjK9TyNIAG8pNtudV
         3DsvxN6UwoPZ3/PjQwh/lPKe7sJXDMjLaqvDVjxUHvukdnyQE8fycWiSA9Tr7DE1nAdK
         kBngx1GgepAmMhP9cW75BQrbHNXdU04h/Xj+82RoIresiWXQlqPnukHZn6XOFM5Z8ZSX
         EHXun6vab+dL1sNHoE3+50hLW2/Ei9DJ7pLR1nz2sXbrCv+1dBC0hXci8+sMFRJj7/oX
         5ltA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi, all

There is a question that there is struct kobject embed in struct cdev,
and struct device.

Does it is better that a struct device is embedded in a a struct cdev
directly?

Kind Regards
Bill Wang


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
