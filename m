From: chuck gelm <chuck@gelm.net>
Subject: Re: VM Vs Swap space
Date: Thu, 07 Oct 2004 06:31:48 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41651B14.4050506@gelm.net>
References: <20041007093740.79630.qmail@web52904.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041007093740.79630.qmail@web52904.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: kernel kernel <unix.hacker@gmail.com>, newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>well if we dont have a swap area then shall i say my
>system dosent have virtual memory
>  
>
 Yes, I think so.  I think that it is difficult to say that a system
has no 'swap area', because a 'swap area' could be a file.

 How can you be sure that none of the files on a system are
a 'swap file' ?

 I think that you can say that a system has no 'swap' or 'virtual memory'
if there are no swap areas enabled.

I suggest that the output of 'free' will indicate your swap. 
If 'free' indicates that you have no swap, then you have no swap.
If 'free' indicates that you have      swap, then you have      swap.

>is this correct? because i feel even if this swap area
>is not there then also virtual memory concept exists?
>
A system can have a swap partition and not use it.
A system can have a swap file          and not use it.
Swap can be enabled and disabled on a running kernel.
So, at any given instance, a running system can have
or have not 'virtual memory'.

>thanks
>
>ankit 
>--- kernel kernel <unix.hacker@gmail.com> wrote: 
>  
>
>>Virtual Memory is a policy. Swap  Area is a
>>artifact, u use to
>>implement this policy
>>
>>Hope makes sense
>>
>>
>>On Thu, 7 Oct 2004 10:15:15 +0100 (BST), Ankit Jain
>><ankitjain1580@yahoo.com> wrote:
>>    
>>
>>>how will u differentiate virtual memory and swap
>>>      
>>>
>>area
>>    
>>
>>>thanks
>>>
>>>ankit
>>>--- chuck gelm <chuck@gelm.net> wrote:
>>>      
>>>
>>>>Ankit Jain wrote:
>>>>
>>>>        
>>>>
>>>>>hi
>>>>>
>>>>>if somebody can tell me that is this correct?
>>>>>
>>>>>(1)can i say that swap area created by linux is
>>>>>          
>>>>>
>>>>nothign
>>>>        
>>>>
>>>>>but virtual memory. (2)is it correct to use the
>>>>>          
>>>>>
>>>>term
>>>>        
>>>>
>>>>>interchangeably
>>>>>
>>>>>thanks
>>>>>
>>>>>ankit
>>>>>
>>>>>
>>>>>          
>>>>>
>>>>(1) A swap file or swap partition can be used as
>>>>virtual memory.
>>>>(2) I am not sure.  Why one would wish to use
>>>>        
>>>>
>>'swap
>>    
>>
>>>>area'
>>>>interchangeably with 'virtual memory'.
>>>>:-|
>>>>Chuck
>>>>        
>>>>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
