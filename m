From: Rajendra <rpm@solidcore.com>
Subject: Re: Why "high memory" in x86?
Date: Tue, 01 Aug 2006 14:48:46 +0530
Message-ID: <44CF1C76.5060406@solidcore.com>
References: <b115cb5f0607312248p6e05f2f2je8c6a352f7856a9a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0607312248p6e05f2f2je8c6a352f7856a9a@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

The reason for the high memory is this.

   o Linux divides the address space into two parts, user and kernel.
   o Kernel gets 1 GB of address space while user gets 3GB virtual 
address space.
   o Kernel needs to access all of the  memory so ideally it needs 4 GB 
of virtual addresses.
   o But since only 1 GB (i.e. beyond 0xc000 0000) is available, so we 
call the rest as
      high memory (approx 3 GB)
   o The high memory is accessed using temp. page table entries that map 
the high memory
      areas in kernel address space.
   o The high memory region is mostly allocated to the user space programs.
  
hope it answers the question !

regd,
~rpm
Rajat Jain wrote:

> Hi list,
>
> I recently read that the concept of "High Memory" was introduced
> because certain architectures are capable of physically addressing
> larger amounts of memory than they can virtually address (physical
> address space > virtual address space). I also read that nowadays
> "high Memory" exists only in x86.
>
> 1) Why is virtual memory > 896 MB on x86 designated as high memory?
> AFAIK x86 has 4 GB of virtual address space (=physical address space?)
>
> 2) Has the "high Memory" concept got anything to do with PAE (Page
> Address Extention) feature of x86?
>
> 3) Do any other architectures than x86 have the concept of high memory?
>
> TIA,
>
> Rajat
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
