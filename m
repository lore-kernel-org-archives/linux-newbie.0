From: "Gaurav Dhiman" <gauravd.chd@gmail.com>
Subject: Re: Diff between Semaphore and Completion Variable
Date: Thu, 8 Jun 2006 12:56:12 +0530
Message-ID: <d63eb2da0606080026p6a945735kc85f672564cd5dc7@mail.gmail.com>
References: <b115cb5f0606060457p440b82f3l72d038fb72bffa58@mail.gmail.com>
	 <1149622882.2951.25.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1149622882.2951.25.camel@laptopd505.fenrus.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: arjan@infradead.org
Cc: Rajat Jain <rajat.noida.india@gmail.com>, linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

On 6/7/06, Arjan van de Ven <arjan@infradead.org> wrote:
> On Tue, 2006-06-06 at 17:27 +0530, Rajat Jain wrote:
> > Hi,
> >
> > I would appreciate if some one could explain the difference between
> > "completion" variables and the semaphores in Linux.
> >
> > As far as I can understand, both are used to provide synchronization
> > among kernel threads. Both have similar mechanism i.e. one or more
> > tasks wait on the completion variable (or semaphore) while another
> > task holds it and does some work (in critical section). When the task
> > holding the completion variable (or semaphore) is done, it signals the
> > other task using "complete" (or "up"). This would cause the waiting
> > tasks to wait up.
> >
> > So why have two different things to do the same thing?
>
> they don't do the same thing just like a hammer and a couch are two
> different things.
>
> a completion is for doing "wait until this event is finished", while a
> semaphore (well don't use semaphores, use a mutex nowadays) is for
> providing mutual exclusion for a piece of data.
> Totally different things.


Where can I find the refference to completion variables in kernel .....

regards,
Gaurav

>
>
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>


-- 
Gaurav
Email: gauravd.chd@gmail.com
--------------------------------------------
Read my Linux Kernel blog at: http://lkdp.blogspot.com/
--------------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
