From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: regarding "kmap()" & "High Memory"
Date: Wed, 2 Aug 2006 11:39:43 +0530
Message-ID: <b115cb5f0608012309gc6de925re3efcb295a238c1e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

When we allocate some pages from the high memory and try to map them
into kernel virtual address space using kmap(), the kmap returns a
virtual address in the range 3GB-4GB. Is this right?

So my query is what happens to the "original" mapping for the address
returned kmap()? And when we call the kunmap(), is the original
mapping restored?

For eg:
=====
The virtual address 0xc0008400 originally maps to physical address
0x00008400. Now if kmap() maps a "high memory" address into the
virtual address 0xc0008400, so the kernel now cannot access the
original physical address 0x00008400. How does kmap() know that the
kernel is not using this virtual address?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
