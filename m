From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: fast and slow handlers
Date: Wed, 24 Sep 2003 17:23:43 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7f4ef27f970a.7f970a7f4ef2@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I dont know if this is the right place to ask this question.
I am confused by this explaination of fast and slow handlers.

"A fast handler runs with interrupt reporting disabled in the microprocessor, and the interrupt being serviced is disabled in the interrupt controller. The handler can nonetheless enable reporting in the processor by calling sti.

A slow handler runs with interrupt reporting enabled in the processor, and the interrupt being serviced is disabled in the interrupt controller."

Is the interrupt controller some special device for handling all interrupts? why is the interrupt being serviced being disabled in it?

Thanks,
Anshuman

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
