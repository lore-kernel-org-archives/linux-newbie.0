From: Rajendra <rpm@solidcore.com>
Subject: Re: Why "high memory" in x86?
Date: Wed, 02 Aug 2006 09:55:16 +0530
Message-ID: <44D0292C.8000602@solidcore.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

When protection and paging is switched on the processor, it requires valid
page tables entry for every page that is accessed. Now there are only 4 GB
addresses that are available, so we have to divide it in such a way that the
kernel as well as the user can access it. So what we do is we say that first
three GB address will always be user space address. The page table entries
of these will keep on changing as the process loads, allocates and 
deallocates
memory. While the last 1 GB i.e. from 3 GB to 4 GB is given to kernel and
it's page table entries are always present in the processor page tables. 
The kernel
address are hence identity mapped i.e.  phy_addr = (virt_addr << 4) >> 
4. Since
the kernel is the program that manages all the resources including 
memory, so it needs
access to all the memory that is there in the system, so for regions of 
memory
above 1 GB (physical), we use special mechanism and call it as high memory.

~rpm

Dave B. Sharp wrote:

>Yes, but why is only 1GB of memory "available"? The
>whole address space is available to other kernels.
>
>  Dave Sharp
>
>--- Rajendra <rpm@solidcore.com> wrote:
>
>  
>
>>The reason for the high memory is this.
>>
>>   o Linux divides the address space into two parts,
>>user and kernel.
>>   o Kernel gets 1 GB of address space while user
>>gets 3GB virtual 
>>address space.
>>   o Kernel needs to access all of the  memory so
>>ideally it needs 4 GB 
>>of virtual addresses.
>>   o But since only 1 GB (i.e. beyond 0xc000 0000)
>>is available, so we 
>>call the rest as
>>      high memory (approx 3 GB)
>>   o The high memory is accessed using temp. page
>>table entries that map 
>>the high memory
>>      areas in kernel address space.
>>   o The high memory region is mostly allocated to
>>the user space programs.
>>  
>>hope it answers the question !
>>
>>regd,
>>~rpm
>>Rajat Jain wrote:
>>
>>    
>>
>>>Hi list,
>>>
>>>I recently read that the concept of "High Memory"
>>>      
>>>
>>was introduced
>>    
>>
>>>because certain architectures are capable of
>>>      
>>>
>>physically addressing
>>    
>>
>>>larger amounts of memory than they can virtually
>>>      
>>>
>>address (physical
>>    
>>
>>>address space > virtual address space). I also
>>>      
>>>
>>read that nowadays
>>    
>>
>>>"high Memory" exists only in x86.
>>>
>>>1) Why is virtual memory > 896 MB on x86
>>>      
>>>
>>designated as high memory?
>>    
>>
>>>AFAIK x86 has 4 GB of virtual address space
>>>      
>>>
>>(=physical address space?)
>>    
>>
>>>2) Has the "high Memory" concept got anything to
>>>      
>>>
>>do with PAE (Page
>>    
>>
>>>Address Extention) feature of x86?
>>>
>>>3) Do any other architectures than x86 have the
>>>      
>>>
>>concept of high memory?
>>    
>>
>>>TIA,
>>>
>>>Rajat
>>>-
>>>To unsubscribe from this list: send the line
>>>      
>>>
>>"unsubscribe 
>>    
>>
>>>linux-newbie" in
>>>the body of a message to majordomo@vger.kernel.org
>>>More majordomo info at 
>>>      
>>>
>>http://vger.kernel.org/majordomo-info.html
>>    
>>
>>>Please read the FAQ at
>>>      
>>>
>>http://www.linux-learn.org/faqs
>>    
>>
>>-
>>To unsubscribe from this list: send the line
>>"unsubscribe linux-newbie" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at 
>>http://vger.kernel.org/majordomo-info.html
>>Please read the FAQ at
>>http://www.linux-learn.org/faqs
>>
>>    
>>
>
>
>__________________________________________________
>Do You Yahoo!?
>Tired of spam?  Yahoo! Mail has the best spam protection around 
>http://mail.yahoo.com 
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
