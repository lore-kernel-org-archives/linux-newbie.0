From: Mark Hounschell <markh@compro.net>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 05 Apr 2007 09:28:15 -0400
Message-ID: <4614F96F.2020900@compro.net>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>	 <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>	 <ev0fpc$bc5$1@sea.gmane.org> <200704051236.29847.Tzahi.ML2@gmail.com>	 <2d51cbf80704050305n60bec989wf3e1d1dd046a5d4d@mail.gmail.com>	 <f68850780704050311qe9ca888tec4c255c6c1a0b3e@mail.gmail.com> <2d51cbf80704050323u48bcb2f1u4861c3ff8a3eebe1@mail.gmail.com>
Reply-To: markh@compro.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2d51cbf80704050323u48bcb2f1u4861c3ff8a3eebe1@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sandeep lahane <sandeep.lahane@gmail.com>
Cc: Raseel Bhagat <raseelbhagat@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

sandeep lahane wrote:
> On 4/5/07, Raseel Bhagat <raseelbhagat@gmail.com> wrote:
>> Hi Sandeep,
>>
>> On 4/5/07, sandeep lahane <sandeep.lahane@gmail.com> wrote:
>>
>> >They have a paravirtualization based approach using which
>> > guest OSes like RTOS or other rich OSes can be run simultaneously on
>> > an embedded platform. These guest OSes can communicate using inter OS
>> > communication mechanisms. They are partitioning resources which can be
>> > partitioned like system RAM and resources like CPU, MMU and interrupt
>> > controller are virtualized since they can't be partitioned. So
>> > basically, what they are doing is almost totally irrelevant with this
>> > question, since they are not trying to make Linux a RTOS, rather they
>> > are making Linux and other guest OSes co-exist with RTOSes
>> > simultaneously. Please CMIIW.
>> >
>>
>> I completely concur with you. And it makes lot of sense too.
>> For example RTLinux (Real time Linux) from FSMLabs is another such
>> approach.
>> They have a micro-kernel , which is basically a core real tie\me
>> kernel, which sits on top of the vanilla linux kernel. This way, all
>> the real time tasks are handled by the Microkernel during whcih time
>> Linux kernel runs as an idle process. Only when no RT tasks are
>> present, the vanilla Linux kernel executes all the non-RT tasks.
>> This way, RT behaviour is accomplished without having to modify the
>> core Linux kernel.
>>
>> -- 
>> To unsubscribe from this list: send an email with
>> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
> 
> Yes, may be the poster is looking for RTLinux kind of thing.

The vanilla Linux kernel can and is already being used in RT environments.
A dual processor box when configured properly can provide a very
deterministic env for a properly written RT application. The trick is to
realize that the 'box' must be dedicated to that application and that application
alone.

With Ingos work in progress at http://people.redhat.com/mingo/realtime-preempt/
that is becoming of less importance however.

Mark
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
