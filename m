From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: schedulting in SMP machine
Date: Tue, 23 Jan 2007 16:10:00 +0530
Message-ID: <b115cb5f0701230240h57c3cfc5n415e74d0a175bd22@mail.gmail.com>
References: <7783925d0701230010kcd96c5asd3f305c24efec2d8@mail.gmail.com>
	 <2d51cbf80701230214x75ea5490qcc6fe3cdbfb54ffd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2d51cbf80701230214x75ea5490qcc6fe3cdbfb54ffd@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: sandeep lahane <sandeep.lahane@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 1/23/07, sandeep lahane <sandeep.lahane@gmail.com> wrote:
> I dont know much about SMP scheduling but after thinking a while I came up with
> following inference, please correct me if I am wrong.
>
> If the ISR and the interrupted process are sharing the stack i.e. of
> the ISR doesnt have its own seperate stack in that case moving the
> interrupted process will be difficult since lot of book keeping will
> be required. Also this would be a fragile situation with chances of
> data corruption.
>
> But as far as I know, an ISR can have a separate stack also, this is
> configurable.
> In this case, moving the interrupted process to another cpu will be
> easier/feasible than before.
>
> Regards,
> Sandeep.
>
>
>
> On 1/23/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> > Hi,
> >
> > If an executing process is interrupted by an interrupt, is it ensured
> > that it won't get transferred to another idle CPU in the system??
> >
> > This would mean that despite the fact that a CPU is idle in the
> > system, still the process will wait untill the ISR finishes its
> > execution?
> >

The ISR is not a SEPARATE process. When it executes, for the scheduler
it is the same process (which was interrupted). In other words, the
fact that ISR has started execution putting the process on hold is not
known to scheduler. Now given this, why would scheduler want to move a
RUNNING process to a different CPU?

Somebody please CMIIMW

Regards,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
