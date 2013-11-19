From: Arun KS <getarunks@gmail.com>
Subject: Re: Ordering / preemption of work in a workqueue preempt?
Date: Tue, 19 Nov 2013 11:50:19 +0530
Message-ID: <CABOM9ZrSiwM0K73RGshOC67sedvcV=4ny-YRHNmU3fLKhak3_w@mail.gmail.com>
References: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=q8ANkmneE/J4+f048lf9Kjz3XKXojHT5fcsLw4VwAVE=;
        b=DhrY6TSWCTojLOLf5+xHrn5Byf7H0Ol68XzWhbqlF9f2PPCwCsfOhtbUQ06kP3rbtn
         xxGZZLrj2hwkhQdeR5P1BDzZ+SQpAl54DSJl3y7JJTZ4vJ8DI89uKsJRvB6MibDtt1yB
         K0KxiZM5t0T3Ye758+AZ/4wJ3lcklXsq00ZNTSudfiBPY51YSWB+Wm20eZ1QIKHFn9We
         /O0riqIXD7tLA7fAMkeQLMQKexWDL4pMVfNEWpZvZBhrGpvnZRF6K46ZRb5mC2lALJIX
         Q49BHLJs7Bs9Q7yZ1C1dFEdh+KdNpti9jUP/5UUWlwLj7nVJ3F0aLwIv2ocicARoO8Tc
         Yv+w==
In-Reply-To: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajatjain@juniper.net>
Cc: "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi Rajat,

On Fri, Nov 15, 2013 at 8:46 PM, Rajat Jain <rajatjain@juniper.net> wrote:
> Hi,
>
> I have a single work queue, on which I have scheduled a worker function [using queue_work(wq, fn)] in interrupt context.
>
> I get the interrupt twice before the work queue gets a chance to run, and hence the same function will get queued twice (with different private context - arguments etc) which is fine and expected.

You got it wrong here.

bool queue_work_on(int cpu, struct workqueue_struct *wq,
                   struct work_struct *work)
{
        bool ret = false;
        unsigned long flags;

        local_irq_save(flags);

        if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work))) {
                __queue_work(cpu, wq, work);
                ret = true;
        }

        local_irq_restore(flags);
        return ret;
}
EXPORT_SYMBOL(queue_work_on);

If you look at function queue_work_on, the function returns
immediately if WORK_STRUCT_PENDING_BIT was already set.
So in effect your second call to queue_work will just return.

HTH

Thanks,
Arun


>
> Questions:
>
> 1) Is it possible that the instance that was queued by 2nd interrupt, can get to run BEFORE the instance that was queued by 1st interrupt? In other words, is reordering possible?
>
> 2) Is it possible that one running instance of the function, can get preempted by second instance of the same work queue? I read through http://lwn.net/Articles/511421/ and it talks about same work queue cannot run on different CPU, but I have doubt about single CPU. If If I am writing a worker function, does my code have to be ready that it can be preempted by another instance of the same function?
>
> Please note that I understand that my worker function can preempted by other processes, my doubts are related to the same workqueue.
>
> Thanks,
>
> Rajat
>
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
