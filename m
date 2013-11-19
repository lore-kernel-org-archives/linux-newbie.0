From: anish singh <anish198519851985@gmail.com>
Subject: Re: Ordering / preemption of work in a workqueue preempt?
Date: Mon, 18 Nov 2013 23:39:05 -0800
Message-ID: <CAK7N6vov2dKhK3hfn6wPHc+ELQavjho_ypALVts4Ajs=J0U1WA@mail.gmail.com>
References: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
	<CABOM9ZrSiwM0K73RGshOC67sedvcV=4ny-YRHNmU3fLKhak3_w@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=1RxjHZDhi0R6E38D+8pGOWtglvi6p2V1o0XhA8f9qm4=;
        b=GHFicWY14X28+lh7f1m+jvgieE0CpGukAGVuyIo3sUpvdPx7vnidqEUrd5O2ZlNbTp
         dQy0WGM5UBP5UPJabs2WiV3xRAQhow0eUq0KQPl/fRw2vo/1iDSD7vsxkw33WYNw/NYt
         Qe/mALDcb9qisBAaLnwUfVtIIJvd3KyURuA9E2gv4oxGr/d6WntdbbRQopeLTy4E7Uuw
         3xyLzXQP5AGzqLjzAS+TSalu5tMYSDGSfzL7ij1V2IgMk4zQmUZbjAUItgsYNHSMf8dG
         A95uS3sGfoOVwYs9XO82rhFH1odhcpyfXI+DCJAaKwTvmoDW/2mJUmDg1tjCtCfOed+q
         1kyA==
In-Reply-To: <CABOM9ZrSiwM0K73RGshOC67sedvcV=4ny-YRHNmU3fLKhak3_w@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arun KS <getarunks@gmail.com>
Cc: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>

On Mon, Nov 18, 2013 at 10:20 PM, Arun KS <getarunks@gmail.com> wrote:
> Hi Rajat,
>
> On Fri, Nov 15, 2013 at 8:46 PM, Rajat Jain <rajatjain@juniper.net> wrote:
>> Hi,
>>
>> I have a single work queue, on which I have scheduled a worker function [using queue_work(wq, fn)] in interrupt context.
>>
>> I get the interrupt twice before the work queue gets a chance to run, and hence the same function will get queued twice (with different private context - arguments etc) which is fine and expected.
>
> You got it wrong here.
>
> bool queue_work_on(int cpu, struct workqueue_struct *wq,
>                    struct work_struct *work)
> {
>         bool ret = false;
>         unsigned long flags;
>
>         local_irq_save(flags);
>
>         if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work))) {
>                 __queue_work(cpu, wq, work);
>                 ret = true;
>         }
>
>         local_irq_restore(flags);
>         return ret;
> }
> EXPORT_SYMBOL(queue_work_on);
>
> If you look at function queue_work_on, the function returns
> immediately if WORK_STRUCT_PENDING_BIT was already set.
> So in effect your second call to queue_work will just return.
Best thing to do is just disable interrupt as soon as you receive
first interrupt
and re-enable it when you think you can handle it.I hope you are not writing
network driver where this sequence would cause unacceptable delays.
>
> HTH
>
> Thanks,
> Arun
>
>
>>
>> Questions:
>>
>> 1) Is it possible that the instance that was queued by 2nd interrupt, can get to run BEFORE the instance that was queued by 1st interrupt? In other words, is reordering possible?
>>
>> 2) Is it possible that one running instance of the function, can get preempted by second instance of the same work queue? I read through http://lwn.net/Articles/511421/ and it talks about same work queue cannot run on different CPU, but I have doubt about single CPU. If If I am writing a worker function, does my code have to be ready that it can be preempted by another instance of the same function?
>>
>> Please note that I understand that my worker function can preempted by other processes, my doubts are related to the same workqueue.
>>
>> Thanks,
>>
>> Rajat
>>
>>
>> _______________________________________________
>> Kernelnewbies mailing list
>> Kernelnewbies@kernelnewbies.org
>> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
