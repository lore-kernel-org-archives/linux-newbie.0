From: borasahin@justnic.com
Subject: Re: Sleeping in Work_queue threads
Date: Tue, 26 Sep 2006 12:17:09 +0300
Message-ID: <200609261217.09665.borasahin@justnic.com>
References: <b115cb5f0609250135h42751bc8u18242c25e86a2fd8@mail.gmail.com> <200609251244.47943.borasahin@justnic.com> <45185AA6.6050807@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <45185AA6.6050807@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org
Cc: Jim Cromie <jim.cromie@gmail.com>, Rajat Jain <rajat.noida.india@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>

> > I think the worker thread is there to make driver writer's job easier.
> > Say you need a bottom half but it is not sleep for a long time. Using a
> > centralised worker thread is the most convenient one. But as you say if
> > you need to sleep longer then you start to disrupt other driver's worker
> > jobs. It's time to create a seperate worker thread.
> >
> > Another point of view -> you categorize worker threads: shorter sleep
> > times and longer sleep times. You dont need to create a worker thread for
> > each of the work jobs. Instead you use one for shorter sleep times and
> > one for each of longer sleep times. So you use system resources more
> > efficiently. I think most of worker thread jobs is fit into shorter sleep
> > times category.
>
> so hypothetically, if there were such a set of worker threads,
> how would I pick the right thread ?
> or rather, how do I measure/characterize the sleep-time ?
> (worst case, average, etc)
>
> does the Latency Tracer  (see: http://lwn.net/Articles/97811/ )
> make this possible/easy ?

In case if I fail to express it, I was trying to explain the rationale behind 
Linux worker thread model. There is a common thread. If it doesnt satisfy 
your requirements(maybe your worker thread are processor intensive or maybe 
you do longer sleeps or maybe you are in a situation where tighter latency is 
needed) you create on your owns. So basically you have two choice.

Otherwise, IMHO such a mechanism is not required. Timers are implemented that 
way. But some clear categorization is exist. I dont think worker threads 
gives such a way. In order to be able to do it quantitiy should be more so 
doing it gives some benefit. But even that may not be applicable. Because 
except timers, tasklets and workqueues delays execution. But how much time is 
more blur. Besides there are ways of doing it in the workqueue model: 
schedule_delayed_work -> http://lxr.linux.no/source/kernel/workqueue.c#L396

--
Bora SAHIN

> and while we're on the topic, whats the average length of the event
> work-queue ?
> and the enque/deque rate ?
> would 1 long queue, and 1 short cover 99%
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
