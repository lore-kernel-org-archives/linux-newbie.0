From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: EXPORT_SYMBOL not mandatory in 2.4.x?
Date: Wed, 17 Jan 2007 17:42:46 +0530
Message-ID: <7783925d0701170412u2db661d6md5890f2a713ee808@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi,

1) I'm using two 2.4 based kernel modules. The first module defines a
symbol but does not EXPORT_SYSMBOL() it. Would my second module be
able to use that symbol? In 2.4? In 2.6?

2) Also, in 2.4, is it OK if I start using my device memory before
request_mem_region()?

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
