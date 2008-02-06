From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: Copy-on-Write
Date: Wed, 6 Feb 2008 18:03:33 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07A303A9@GDCMX01.igglobal.com>
References: <ea11fea30802060300y73391357icfa2a94e3ff7971@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <ea11fea30802060300y73391357icfa2a94e3ff7971@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manish Katiyar <mkatiyar@gmail.com>, Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org


Hi,

>> 
>> I had read that the operating systems that use copy-on-write
>> mechanism for fork(), it is better if they deliberately allow the
>> CHILD to run first. 
>> 
>> This would be better because in 99% of the cases child will call
>> exec() and the new address space will be allocated. Instead if the
>> parent is executes first, an unnecessary copy of the pages is made
>> (if parents writes) and later on when child executes, a fresh
>> address space is executed. 
>> 
>> So in linux, is a child run first or the parent? Can we rely on this
>> information?
> 
> No with fork() it is not guaranteed.......however if you use vfork()
> child is guaranteed to run first......
> 

So as the author says, isn't running child first a good idea that needs to be implemented?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
