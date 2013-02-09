From: horseriver <horserivers@gmail.com>
Subject: High concurrency net server
Date: Sat, 9 Feb 2013 13:58:45 +0800
Message-ID: <20130209055841.GB2806@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=YEEk6NJA3CSkN17NpJKF3Xfmhy6adnTj3dDQNDuybGo=;
        b=HrI7HPnpVzIAZHhEvxq7LlD+elzh9hFYc0H4hyT08KA1t1p9MQhqpslLxzZBbHEsWP
         J2DWrHn8XlbJrK1MxIvyyTfBQO997McJdV0EYgTvVO3mt+LGQXhJPxA/3puPJ3Gnz4ZK
         I5ps8Sv7LAQE+hg0NdPjgt2yPF1ryT0RVRMbwBEDwXCTo0QtMkFKW9Y3EbKBDADlkocj
         RwxEFT5M3ZC/5GQKJnFfdsAOlQ4w8xhcPmA6/2NHyTFX3OCnA/Q17nmFpGQOnyfdztil
         nfCumgiiQCiVBeEw3XRCvjlNiEWeQdHaMdvCBooccvUdNwufbE+QkEFmrladGInjGfKC
         Te2A==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hi:)

   To design  a high concurrency net server , what are the important factors?

   Has different  clients be served  with each independent  thread ?

   NOTE: Here ,the thread is a running unit which has its own stack and environment.

   Are there some recommended solutions for high concurrency server design?

thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
