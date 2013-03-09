From: ishare <june.tune.sea@gmail.com>
Subject: Re: memory zone and slab
Date: Sat, 9 Mar 2013 10:04:13 +0800
Message-ID: <20130309020413.GA2515@debian.localdomain>
References: <20130307143514.GD2467@debian.localdomain>
 <2DDB038789B01B4B80B0D3F1FF7CBDC2064CE46A@lhreml509-mbb.china.huawei.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Dz3bEdVfFcGKZ+yqrfHf7rToSeZtb5+KQ//eqkEoPQA=;
        b=bpTXZ+SlDCh61JY7x7XG3GD8yIykIvWDUwPjLHDM+huMdSBauTQGMYNWlpFqiDROFW
         jdAinL/C/bL35fjYfKptbLs35CmSciBimV0mB38mXAaAhanfyHB8jN22rYi4L5nDEPm2
         tnDynACxdLNNhlLDRhpg7RYFMmJ7qJTF/tbWwlAqNmdcqrA5hf3S5ukY9FI99OpygfEe
         P0lQiTLztoFZ0uYuBQsJbfdN/1Qmu3voW27hliQhO1OEwcwOKCtcrHIQ9NTxgpBBHYLo
         Y6G2FbvjmJEAGJCeCQcoyM/cFe7JkOD9YiAnhL7MIcP45reVgufMtsW0hGdyeVPPm6Cg
         hVpg==
Content-Disposition: inline
In-Reply-To: <2DDB038789B01B4B80B0D3F1FF7CBDC2064CE46A@lhreml509-mbb.china.huawei.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mario Smarduch <Mario.Smarduch@huawei.com>
Cc: linux-newbie@vger.kernel.org

On Fri, Mar 08, 2013 at 11:44:37AM +0000, Mario Smarduch wrote:
> 
> The zonelists are initialized in 'build_all_zonelists()' 
> called by 'start_kernel()'. But prior to that point
> there is allot of other code that determines the 
> various zones and holes a key function is free_area_init_node().
> But that function will also reference prior initialization
> in 'setup_arch()' which may take you all the way back
> to bootloader  
> Nodes have zones, and zones define what the memory is 
> appropriate for, DMA or lowmem, Normal memory or High memory
> for 32 bit. For 64 bit there are fewer zones just primarily
> 32 bit DMA and normal 64 bit. Zones are further divided
> into free areas of 2^n consecutive pages.
> 
> Slabs are typically pages carved up into smaller units of 
> allocations. 
  
  Does this mean slab is based on zone ?
  slab is just a optimized algorithm for normal allocator?
  
  thanks!
   




> There are several kernel books but outdated, but nevertheless good
> starting points, just search for 'Kernel Internals'
> 
> BR,
>  Mario.
> 
> 
> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of ishare
> Sent: Thursday, March 07, 2013 3:35 PM
> To: linux-newbie@vger.kernel.org
> Subject: memory zone and slab
> 
> 
>    when does the memory zonelist initialized in kernel ?
> 
>    what is the difference between zonelists and slab for memory manage .
> 
>    are there some man docs or sites  helpful to understand this ?
>    
>    thanks! 
>   
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
