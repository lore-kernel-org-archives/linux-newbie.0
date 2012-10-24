From: Mario Smarduch <Mario.Smarduch@huawei.com>
Subject: Couple MMU issue free_area_init_core()
Date: Wed, 24 Oct 2012 08:19:14 +0000
Message-ID: <2DDB038789B01B4B80B0D3F1FF7CBDC20645F6E7@lhreml509-mbb.china.huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi,
   while going through some code for project I'm working on I found
couple things which I would like to get some feedback/understanding on.

free_area_init_core()
for each zone calculates 
memmap_pages=PAGE_ALIGN(size * sizeof(struct page)) >> PAGE_SHIFT;

Which is total memory range zone spans and then it subtracts that value from
realsize (memory present in zone). I'm bit confused for SPARSEMEM case
where sections not occupied don't have memmap arrays (mem_section[] indexed)
allocated. Should not the calculation of memmap_pages above take that into
consideration?

Also related to same function I've notice 'dma_reserve' is hardly defined
anywhere. The boards I've looked at (ARM PBX, PXA) have their kernel
text, data, bss allocated in DMA zone, any reasons why 'dma_reserve' is
not defined to correctly determine zone watermarks and other things later
on?

- Mario

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
