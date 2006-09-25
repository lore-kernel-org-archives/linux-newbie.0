From: Jim Cromie <jim.cromie@gmail.com>
Subject: Re: Sleeping in Work_queue threads
Date: Mon, 25 Sep 2006 16:39:34 -0600
Message-ID: <45185AA6.6050807@gmail.com>
References: <b115cb5f0609250135h42751bc8u18242c25e86a2fd8@mail.gmail.com> <200609251244.47943.borasahin@justnic.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200609251244.47943.borasahin@justnic.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: borasahin@justnic.com
Cc: kernelnewbies@nl.linux.org, Rajat Jain <rajat.noida.india@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>

borasahin@justnic.com wrote:
>> I understand that there is a default worker thread ("event") to which
>> most of the drivers submit work (for bottom half processing).
>>
>> Now since this thread is catering to all of the drivers; if a driver's
>> code sleeps, then aren't the rest of the drivers penalised?
>>     
>
> Yes...
>
>   
>> I mean the rest of the drivers want to do their work but the thread is
>> now sleeping since one of the driver has issued a sleeping call?
>>
>> Wouldn't a seperate worker thread for each driver be a better design?
>>     
>
> I think the worker thread is there to make driver writer's job easier. Say you 
> need a bottom half but it is not sleep for a long time. Using a centralised 
> worker thread is the most convenient one. But as you say if you need to sleep 
> longer then you start to disrupt other driver's worker jobs. It's time to 
> create a seperate worker thread. 
>
> Another point of view -> you categorize worker threads: shorter sleep times 
> and longer sleep times. You dont need to create a worker thread for each of 
> the work jobs. Instead you use one for shorter sleep times and one for each 
> of longer sleep times. So you use system resources more efficiently. I think 
> most of worker thread jobs is fit into shorter sleep times category.
>
>   

so hypothetically, if there were such a set of worker threads,
how would I pick the right thread ?
or rather, how do I measure/characterize the sleep-time ?
(worst case, average, etc)

does the Latency Tracer  (see: http://lwn.net/Articles/97811/ )
make this possible/easy ?

and while we're on the topic, whats the average length of the event 
work-queue ?
and the enque/deque rate ?
would 1 long queue, and 1 short cover 99%

> --
> Bora SAHIN
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>
>   

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
