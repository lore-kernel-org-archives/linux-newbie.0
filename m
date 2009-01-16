From: George Kumar <grgkumar4@gmail.com>
Subject: Manually editing .config in /usr/src/linux
Date: Fri, 16 Jan 2009 12:40:39 -0800
Message-ID: <5f695cd0901161240y170e4ffpdc327f1abfcdafe7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=rybi9BJWZkeb9iByyaqRWBbogg5KLpUo+lZEizaRZck=;
        b=Y4FxCdzLXAKNjQvAZqeCu54HhB6rzy8rz5LV2g/uY2/1NW1Tf+ZntXJmFoCVKFz5K2
         lYsKKMh9W5j2T5YX4nhGgOOMfubvG0Ah/jS5jcVLOXhTsZDDKX+p4Xyi58L7h6V5utdd
         Eq4qpRXFJ/wwqqDs7BEsGIbNAk4tLQOVRCe9Q=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'd like to compile the kernel with debug info, Is it okay to go ahead
and set CONFIG_DEBUG_INFO=y in .config file
in the source dir. Even though it says don't edit because it is a
auto-generated file. I don' want to have to go through make menuconfig
and also don't want to hack the makefile to unconditionally add -g to
CFLAGS.

Thanks.
George
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
