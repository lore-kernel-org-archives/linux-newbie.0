From: anish singh <anish198519851985@gmail.com>
Subject: Re: Ordering / preemption of work in a workqueue preempt?
Date: Sat, 16 Nov 2013 20:10:49 -0800
Message-ID: <CAK7N6voHxx702ZZimdv=18Z_Rxgaw9YJMRHC=CqGEKEmrJzEKw@mail.gmail.com>
References: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
	<CAAYFAvqymyLw-jp8bk5c-S=zrXmcHzBGkbgF0J0ZpiGDnOSzrw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6Ed+Mpt+hP6nfQxWUEVyedgO1U7FiHPnnCgWnqHvwaU=;
        b=fW8d3jLXuO9mnQNsTmQsmQEoY2S+/7a7qkRa6YSMk1oh6ZiK8xo8r5V2q2Pis0DEve
         MO9HYSq1DHfV1ePHFR+cb2T44Sj+SwTdL8hwARPxesRcpx9xtpZSKnMuag/M7O3cTnDA
         AuBbM1HW89mfHpB2DyzN6wcd/C5qXKFsdQuo0I5a9AX39FpbfPbWs6v6I6oto8KEbipa
         zuzmeJNiuf/O6EIb7dzJLLi0gH7AmY6mzp3+BfgnEGbfO2Hq4PvG78g9lFWKfAFgq+Qt
         ptFyKraIwDr9qYalb9YZVPp8uUf2f1HIvySs02x/iaH1Mt256vmMlw8aolKee3H7/JAR
         buJw==
In-Reply-To: <CAAYFAvqymyLw-jp8bk5c-S=zrXmcHzBGkbgF0J0ZpiGDnOSzrw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Sharma <fs.rajat@gmail.com>
Cc: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>

On Fri, Nov 15, 2013 at 5:01 PM, Rajat Sharma <fs.rajat@gmail.com> wrote:
> Hi Rajat,
>
>
> On Fri, Nov 15, 2013 at 7:16 AM, Rajat Jain <rajatjain@juniper.net> wrote:
>>
>> Hi,
>>
>> I have a single work queue, on which I have scheduled a worker function
>> [using queue_work(wq, fn)] in interrupt context.
>>
>> I get the interrupt twice before the work queue gets a chance to run, and
>> hence the same function will get queued twice (with different private
>> context - arguments etc) which is fine and expected.
>>
>> Questions:
>>
>> 1) Is it possible that the instance that was queued by 2nd interrupt, can
>> get to run BEFORE the instance that was queued by 1st interrupt? In other
>> words, is reordering possible?
use alloc_ordered_workqueue: only one workqueue will be active at a time
and it will execute in the queued sequence.
>
>
> It is unlikely as workqueue would have internal queing of tasks.
>
>>
>>
>> 2) Is it possible that one running instance of the function, can get
>> preempted by second instance of the same work queue? I read through
>> http://lwn.net/Articles/511421/ and it talks about same work queue cannot
>> run on different CPU, but I have doubt about single CPU. If If I am writing
>> a worker function, does my code have to be ready that it can be preempted by
>> another instance of the same function?
>>
>
> Do you mean the system has just one CPU, then there would be just one worker
> thread in the workqueue which will pick up requests one by one. Do you see
> multiple threads?
>
>>
>> Please note that I understand that my worker function can preempted by
>> other processes, my doubts are related to the same workqueue.
>>
>> Thanks,
>>
>> Rajat
>>
>>
>
> Rajat
>
>>
>> _______________________________________________
>> Kernelnewbies mailing list
>> Kernelnewbies@kernelnewbies.org
>> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>
>
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
