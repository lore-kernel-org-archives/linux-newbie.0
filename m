From: Mathias Noack <mn3@os.inf.tu-dresden.de>
Subject: page table entry
Date: Wed, 9 Apr 2003 15:59:08 +0200 (DFT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.A41.4.10.10304091552590.113202-100000@os.inf.tu-dresden.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

does anybody know how i can exchange a page table entry (pte)?
the problem is i got a valid pte and i want set up a new page frame for
this pte... 
i only could find one solution for that: make the pte invalid and raise a
pagefault with get_user_page where my nopage function is use so i can
decide which page should be mapped for this particular pte.

is there any other way? maybe with directly changing the page table...

thanks a lot for your help
Mathias

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
