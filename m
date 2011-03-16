From: Aneesh Bhasin <contact.aneesh@gmail.com>
Subject: Re: smap output - unnamed entries and heap
Date: Wed, 16 Mar 2011 10:49:04 +0530
Message-ID: <AANLkTikU_kPOoNv6gJiPOsmrkFDddTLQ-0--wViYyFxj@mail.gmail.com>
References: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com> <20110315091412.de6eb63c.rdunlap@xenotime.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=PwzM4v7aGXX9kenAHQaUFzcuAKU0w2SS97ntTSE3mJs=;
        b=G++XwAadofGLWVJhLVUFvHRV3aNrSX9atyVzeOG5wIUBwINayysWSjvqFv+1NFMjpJ
         V/hpn2Wi9zW/QaqAwj2aFVO7PpdayqPxbH3uyRcGkT5pbNLLpVaH319+SpX959RQqa+V
         3HZlxD7NYX0MQLvz4oeDuuEz1EZ+i2BQFjGYo=
In-Reply-To: <20110315091412.de6eb63c.rdunlap@xenotime.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Randy Dunlap <rdunlap@xenotime.net>
Cc: linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

On Tue, Mar 15, 2011 at 9:44 PM, Randy Dunlap <rdunlap@xenotime.net> wrote:
> On Tue, 15 Mar 2011 14:31:50 +0530 Aneesh Bhasin wrote:
>
>> Hi All,
>>
>> My apologies if this is not the right place for these type of
>> questions - I do not know of a better place to ask this.
>>
>> I am trying to take out some memory figures from the /proc/<pid>/smaps
>> interface (linux v2.6.35). However, I could not find what do the
>> entries that have no name associated to them (no library path or
>> binary path with these entries) mean. So, I wrote a test C program
>> that allocates 100MB of memory (using malloc) and then writes to it in
>> chunks of 10MB. I could see that the 'Size' and 'RSS' of one of the
>> unnamed entries was increasing in accordance with the code, but there
>> were several other such unnamed sections too - is there a way to know
>> what and where do they come from.
>>
>> Also, I could see that for some process the smap interface was showing
>> a '[heap]' entry but not for all - e.g. for my above test case, there
>> was no '[heap]' entry, although I assumed the malloc should have
>> reflected in the [heap]. Can someone please tell me (or point me in
>> the right direction) why is heap entry there only for some processes ?
>>
>> Thanks in advance for any help..
>
> Did you look at Documentation/filesystems/proc.txt ?
> It has some info on smaps and maps.
>
> ---
> ~Randy

Thanks for the pointer Randy. I had a look at it and here is my
understanding regarding this (please correct me if I am wrong)

The entries in smaps (or maps) that have no name associated with them
are anonymous memory regions. malloc, e.g. could allocate a memory
using anonymous mmap for large blocks of memory due to efficiency
reason. Are there any other such sources/reasons for creating
anonymous memory regions ?
I checked some of the above, by modifying my test program to allocate
1KB memory - this time it was attributed to [heap] whereas a memory
allocation of 1MB was attributed to one of the anonymous memory
regions.
So, does that mean that all anonymous regions can be treated
effectively as heap ? Also, is there a way in linux (without using
dedicated tools like valgrind), to see how much heap or anonymous
memory is attributed to code arising from a particular library/binary
?

Thanks for the help !

Regards,
Aneesh Bhasin
