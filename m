From: Tadashi Abe <tadashi.abe@gmail.com>
Subject: Question about isolate_lru_pages() in 2.6.15
Date: Thu, 2 Feb 2006 17:48:52 +0900
Message-ID: <64f7fb310602020048g1f04930bl@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, all.

I have a question about the code of isolate_lru_pages() in 2.6.15,
(or shrink_cache() before 2.6.11...), which is in mm/vmscan.c.

The comment in the source says "scanned" variable indicates
"The number of pages that were scanned.".
Indeed, each page is scanned in the loop (from line 601).

<mm/vmscan.c>
----
594 static int isolate_lru_pages(int nr_to_scan, struct list_head *src,
595                  struct list_head *dst, int *scanned)
596 {
597     int nr_taken = 0;
598     struct page *page;
599     int scan = 0;
600
601     while (scan++ < nr_to_scan && !list_empty(src)) {
602         page = lru_to_page(src);
----

However, because of the increment in while conditional,
"scanned" gets at (number of scanned pages + 1) when
isolate_lru_pages() returns, I think.

And after it, "scanned" variable is used as the very number of scanned pages.
It looks to me like a mistake.
Could you tell me the intention of the procedure if anyone knows?


Regards,
Tadashi Abe
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
