From: RANDAZZO@ddc-web.com
Subject: debugging after netif_rx....
Date: Wed, 10 Mar 2004 17:01:53 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B16FF4@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

I'm writing my first network driver.

I beleive I created the sk_buff correctly after receiving data, and I called
netif_rx...

Nothing happens.............I passed up an ARP frame........

Is there some debugging messages I can turn on to see what happens after I 
call netif_rx?

Regards,
Mike
 
"This message may contain company proprietary information. If you are not
the intended recipient, any disclosure, copying, distribution or reliance on
the contents of this message is prohibited. If you received this message in
error, please delete and notify me."

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
