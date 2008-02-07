From: Brandon Philips <brandon@ifup.org>
Subject: Re: Copy-on-Write
Date: Thu, 7 Feb 2008 15:46:12 -0800
Message-ID: <20080207234612.GB22488@plankton.ifup.org>
References: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com> <f284c33d0802070730s7dcc2735o77fe1d655e4220cc@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <f284c33d0802070730s7dcc2735o77fe1d655e4220cc@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 22:30 Thu 07 Feb 2008, Mulyadi Santosa wrote:
> On Feb 6, 2008 12:49 PM, Rick Brown <rick.brown.3@gmail.com> wrote:
> > So in linux, is a child run first or the parent? Can we rely on this
> > information?
> 
> Hm, this might be the answer:
> http://lxr.linux.no/linux/kernel/sched.c#L1663
> 
> it says:
> unsigned int __read_mostly sysctl_sched_child_runs_first = 1;
> 
> and I guess it has relationship with certain /proc or /sys entry.

 $ sysctl -w kernel.sched_child_runs_first=0

Also available here: /proc/sys/kernel/sched_child_runs_first
  
Cheers,

	Brandon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
