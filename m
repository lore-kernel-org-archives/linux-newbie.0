From: RANDAZZO@ddc-web.com
Subject: Arp Implementation Example....
Date: Wed, 17 Mar 2004 08:39:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B17006@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

All;

I am developed a network driver for my fibre channel device.  I've used the
O'Reilly Linux Device Driver's "snull.c and snull.h" as an
example.

Problem is this example does not implement ARP.  After many attempts, I
can't seem to pass an ARP packet successfully up
the stack......

Does anyone know of an example driver / website that shows the formatting
and responsibility of the network driver, with regards
to ARP?

Any help is much appreciated...

BTW, I'm using Linux 2.4....
 
"This message may contain company proprietary information. If you are not
the intended recipient, any disclosure, copying, distribution or reliance on
the contents of this message is prohibited. If you received this message in
error, please delete and notify me."

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
