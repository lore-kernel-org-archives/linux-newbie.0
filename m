From: Mario Smarduch <Mario.Smarduch@huawei.com>
Subject: RE: memory zone and slab
Date: Fri, 8 Mar 2013 11:44:37 +0000
Message-ID: <2DDB038789B01B4B80B0D3F1FF7CBDC2064CE46A@lhreml509-mbb.china.huawei.com>
References: <20130307143514.GD2467@debian.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20130307143514.GD2467@debian.localdomain>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: ishare <june.tune.sea@gmail.com>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>


The zonelists are initialized in 'build_all_zonelists()' 
called by 'start_kernel()'. But prior to that point
there is allot of other code that determines the 
various zones and holes a key function is free_area_init_node().
But that function will also reference prior initialization
in 'setup_arch()' which may take you all the way back
to bootloader to kernel interface.

Nodes have zones, and zones define what the memory is 
appropriate for, DMA or lowmem, Normal memory or High memory
for 32 bit. For 64 bit there are fewer zones just primarily
32 bit DMA and normal 64 bit. Zones are further divided
into free areas of 2^n consecutive pages.

Slabs are typically pages carved up into smaller units of 
allocations. 

There are several kernel books but outdated, but nevertheless good
starting points, just search for 'Kernel Internals'

BR,
 Mario.


-----Original Message-----
From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of ishare
Sent: Thursday, March 07, 2013 3:35 PM
To: linux-newbie@vger.kernel.org
Subject: memory zone and slab


   when does the memory zonelist initialized in kernel ?

   what is the difference between zonelists and slab for memory manage .

   are there some man docs or sites  helpful to understand this ?
   
   thanks! 
  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
