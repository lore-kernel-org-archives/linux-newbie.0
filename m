From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Why "high memory" in x86?
Date: Tue, 1 Aug 2006 11:18:16 +0530
Message-ID: <b115cb5f0607312248p6e05f2f2je8c6a352f7856a9a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

I recently read that the concept of "High Memory" was introduced
because certain architectures are capable of physically addressing
larger amounts of memory than they can virtually address (physical
address space > virtual address space). I also read that nowadays
"high Memory" exists only in x86.

1) Why is virtual memory > 896 MB on x86 designated as high memory?
AFAIK x86 has 4 GB of virtual address space (=physical address space?)

2) Has the "high Memory" concept got anything to do with PAE (Page
Address Extention) feature of x86?

3) Do any other architectures than x86 have the concept of high memory?

TIA,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
