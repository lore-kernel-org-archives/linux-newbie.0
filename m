From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Given a struct page *, how to find corresponding physical address?
Date: Mon, 25 Sep 2006 11:21:46 +0530
Message-ID: <b115cb5f0609242251r204c2aa7hc8146c9791598993@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

This is in context of mapping of virtual addresses to physical
addresses by the MMU. I read that the virtual address is taken through
the three level page tables to finally arrive at a struct page.

But how to find the physical address of this page?

TIA,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
