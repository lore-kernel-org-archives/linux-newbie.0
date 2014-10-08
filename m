From: "Joseph D. Wagner" <joe@josephdwagner.info>
Subject: Re: High latency while CPU is at full load
Date: Tue, 07 Oct 2014 18:15:16 -0700
Message-ID: <6bce368f25616b04f9e536b815a243f5@josephdwagner.info>
References: <CAFLt3pihQA0nT20kgWhExr44Q93pULGuL2XZz18pmq-hwA4YWQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CAFLt3pihQA0nT20kgWhExr44Q93pULGuL2XZz18pmq-hwA4YWQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Grozdan <neutrino8@gmail.com>
Cc: linux-newbie@vger.kernel.org

On 10/07/2014 12:12 pm, Grozdan wrote:

> Hi,
> 
> I went through the Majordomo list but was not able to find an
> appropriate list so I'm trying here.
> 
> Basically, my problem is this:
> 
> I'm doing a lot of audio/video encoding on an AMD FX8350. The encoder
> process always runs at nice 10. Even so, my whole system feels very
> sluggish. Switching between different app windows and/or virtual
> desktops takes up usually 3-5 seconds giving the impression that there
> is not enough processing power. Browsing the web is also severely
> impacted.
> 
> I had to tune CFS in order to be (much) more responsive during an
> encoding session. This has worked out pretty well thus far, but it is
> my opinion that the user should *not* need to fiddle with buttons to
> make his system respond fluently even under high load. The below is
> what I had to do in order to get a snappy system during such load
> 
> kernel.sched_nr_migrate = 64
> kernel.sched_latency_ns = 65000000
> kernel.sched_wakeup_granularity_ns = 100000
> kernel.sched_min_granularity_ns = 100000
> kernel.sched_migration_cost_ns = 7000000
> 
> PS: If this is not the right list, please forward this mail to the
> appropriate one

I think your question may be too advanced for the newbie list.
I recommend posting this to linux-kernel. Be sure to include
your exact kernel version (/proc/version), total RAM, which
desktop environment you are using (including version), and
the specific software you are using for the encoding.
Output from /proc/sched_debug, /proc/schedstat, and
/proc/*PID*/sched  would be useful as well.  (where *PID* is
the process id of your encoding process).

Joseph D. Wagner
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
