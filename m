From: Jim Nelson <james4765@verizon.net>
Subject: Re: VM Vs Swap space
Date: Thu, 07 Oct 2004 22:49:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4166002A.6050308@verizon.net>
References: <9cb08bfa04100709095ebe08a1@mail.gmail.com>	 <20041007172157.63553.qmail@web52908.mail.yahoo.com> <9cb08bfa04100711494df0774@mail.gmail.com> <4165BFA0.8010008@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4165BFA0.8010008@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: chuck@gelm.net
Cc: Pratik Solanki <pratik.solanki.ml@gmail.com>, Ankit Jain <ankitjain1580@yahoo.com>, linux-newbie <linux-newbie@vger.kernel.org>

chuck gelm wrote:

> Pratik Solanki wrote:
>
>> [CCing linux-newbie]
>>
>> On Thu, 7 Oct 2004 18:21:57 +0100 (BST), Ankit Jain
>> <ankitjain1580@yahoo.com> wrote:
>>  
>>
>>> well i dont know exactly but somewhat i feel that
>>> there must be some way to disable the virtual memory.
>>> yaa of course there should be some way. it is not that
>>> sys cant work without it
>>>   
>>
>>
>> Yes, you can have a system without virtual memory. Search for MMUless
>> linux kernel and you'll see patches/websites.
>>
>> My point was that disabling VM after its been enabled would tough (if
>> not impossible). Someone correct me if I am wrong here.
>>
>> Pratik.
>>
> I was thinking that an active swap partition was 'virtual memory'.
> Why are many folks using capital letters 'VM'.  Am I missing
> something?  Is 'VM' == virtual memory or is there a application
> or service called 'VM' ?
>
> Anywho, the only 'virtual memory' I know of is an active
> swap file or swap partition and either can be started
> or stopped in a running kernel.
> (I think.)
>
> Regards, Chuck



 From "Understanding the Linux Kernel":

"Virtual memory acts as a logical layer between the application memory 
requests and the hardware Memory Management Unit (MMU)."

It is an abstraction of system memory to provide an 
architecture-independent memory interface.  It allows for a great many 
things, including swap functionality, but its primary function is to 
make the details of memory management invisible to application 
programmers.  You just malloc() some memory, and you don't have to worry 
overmuch about far jumps, hardware cache alignment, or other annoying stuff.

It also allows large malloc() calls to succeed, even if physical memory 
is completely fragmented, by maintaining a set of page tables that allow 
virtual-to-physical mapping of memory addresses.

This is one of the most challenging areas of kernel development, and 
very hardware-specific.  I tried to understand how it worked recently, 
gave myself a splitting headache after 30 minutes, and decided to let it 
sit for another year or so until I understand kernel internals, computer 
architecture, and assembler much better than I do now :)

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
