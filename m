From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: What's the deal with 1/3G separation between kernel address space and user address space?
Date: Mon, 31 Mar 2008 11:23:34 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0801A58C@GDCMX01.igglobal.com>
References: <47EB88F9.8070808@tihlde.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <47EB88F9.8070808@tihlde.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: =?iso-8859-1?Q?Roar_Bj=F8rgum_Rotvik?= <roarbr@tihlde.org>, linux-newbie@vger.kernel.org



Hi,

>> 
>> Why is there a division at all? As I understand, there occurs a
>> context switch between user-level process and the kernel when syscall
>> is made. Then why are we reserving 1G for kernel? Why isn't it
>> possible to give full 4G address space to the user process, and
>> kernel gets full 4G space when switched in?

I'm not an expert, but if asked, I think performance can be one of the reasons. Assume that a 4G address space is given to all the processes. Hence for every context switch, we'll need to switch the 4G address space. Out of this address space, we know that a BIG chunk (kernel code + kernel data structures) is always the same for all the processes. So why not switch just the pages that the user is going to use. And hence it might be thought that 3G is enough for application, and 1G can be spared for kernel. Hope I'm making some sense...

> 
> Since userspace applications calls kernel functions (read(), open()
> and so on), those kernel functions used must be mapped in the address
> space that an application may see, i.e. the userspace and kernel
> space must share the address range. 

The user space applications never "call" kernel code / functions. They just make a syscall....

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
