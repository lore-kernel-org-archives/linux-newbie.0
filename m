From: tochansky@tochlab.net
Subject: Difference dma_alloc_coherent() in x86_32 and x86_64
Date: Tue, 16 Feb 2016 14:22:50 +0300
Message-ID: <f114e083ea781d6cd7836b9e6a684241@tochlab.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello!

I have a driver for PCI device which uses CMA framework for allocating 
big coherent blocks of memory for DMA.

Allocation looks like:

typedef struct {
     struct list_head list;
     uint32_t size8;
     void *kaddr;
     dma_addr_t paddr;
} dma_region_t;

LIST_HEAD(region_list);

......

void* AllocDMA( size_t size )
{
     dma_region_t *new_region;
     new_region = kmalloc(sizeof(dma_region_t), GFP_KERNEL);
     new_region->size8 = size;

     new_region->kaddr = dma_alloc_coherent( NULL, size, 
&new_region->paddr, GFP_KERNEL | GFP_DMA32 );

     list_add(&new_region->list, &region_list);
     printk("pcidev: cma_alloc paddr %pad kaddr %p size %d\n", 
&new_region->paddr, new_region->kaddr, new_region->size8);
     return new_region->kaddr;

}

It works fine on kernel 3.18.26 in 32bit mode.
When I reconfigure same kernel to run in 64bit mode(enabling in 
'menuconfig' option '64-bit kernel') and trying to use this driver with 
it
allocation failed with message in dmesg:
...
[ 1393.835535]  fallback device: swiotlb buffer is full (sz: 8388608 
bytes)
[ 1393.835579] pcidev: cma_alloc paddr 0xffff880234861220 kaddr          
  (null) size 8388608
...

My kernel command line is: swiotlb=16384 iommu=soft cma=256M


Anyone can explain this strange behavior?

-- 
D
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
