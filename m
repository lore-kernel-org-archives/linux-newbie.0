From: "Liang(Bill) Wang" <bill.liangwlw@gmail.com>
Subject: why struct cdev has not a struct device embedded?
Date: Sun, 14 Jul 2013 18:40:10 +0800
Message-ID: <1373798410.11284.10.camel@localhost.localdomain.facesea>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:content-type:date:mime-version:x-mailer
         :content-transfer-encoding;
        bh=9p0AdLfFSybQwW06lvERnWSSlib8VgWo0uowu5EfBEg=;
        b=oDD2iAGMtyDAO2ICrtPLWPSGQT6DH70VyLV3nZfXvhWV/WHXzoH1AJ57gbcePVUsOL
         rXNpXtuNx1KdjNRmJ8cABWSWJRuSdyeWc2RZYuSD4b6FPE1PkFwcOay4FmlL8tKTn56l
         RMJANcuBoK+Z+OM6mplj6N+SKuiMMIyrF5NBZTSaH1OMrMVxonw//y4SOE+pQUuWjMVP
         jM2iDD31vfz0Y1BC3YBpg/ekeuouJB9TH09dZyoaaI+Gh2FhAQy0kB67uUqKjPrO9Xg5
         n6eTmQ+F8fou2svfIfslyv7IZLyWuyaDPjRf3O/idKvdIES9WiW9pZVfHTS3iY0W2znB
         UbNg==
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
