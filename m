From: Rik van Riel <riel@surriel.com>
Subject: Re: Given a struct page *, how to find corresponding physical address?
Date: Mon, 25 Sep 2006 19:43:42 -0400
Message-ID: <451869AE.4090107@surriel.com>
References: <b115cb5f0609242251r204c2aa7hc8146c9791598993@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0609242251r204c2aa7hc8146c9791598993@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Rajat Jain wrote:
> Hi,
> 
> This is in context of mapping of virtual addresses to physical
> addresses by the MMU. I read that the virtual address is taken through
> the three level page tables to finally arrive at a struct page.
> 
> But how to find the physical address of this page?

1) page tables point directly at the physical address

2) if you have a struct page, you can call page_to_phys

-- 
"You don't have to be crazy to do this... but it helps." -- Bob Ross
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
