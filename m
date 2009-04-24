From: Jeffrey Cao <jcao.linux@gmail.com>
Subject: Re: IRQ Tracing Problem in Linux 2.6.28 Kernel
Date: Fri, 24 Apr 2009 15:50:45 +0000 (UTC)
Message-ID: <gssn4l$mf4$1@ger.gmane.org>
References: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org

On 2009-04-13, Sol Kavy <skavy@ubicom.com> wrote:
> The following back trace represents a deadlock in Ubicom's SMP port o=
f 2.6.28 kernel.=C2=A0=C2=A0 I am sure that we are doing something unex=
pected.=C2=A0 I would appreciate the community's help in understanding =
what is going wrong.
>
> Thanks in advance for any pointers,
>
> Sol Kavy
>
> Problem:
> Ubicom's initial port does not use GENERIC_CLOCKEVENTS.  Instead it u=
ses a periodic timer based on HZ.  The periodic timer calls do_timer() =
on each tick.
>
> From the arch directory perspective, we are required to hold the xtim=
e_lock before calling do_timer().=C2=A0 The lock is indeed help by cpu =
3 as evidenced in the output below.
>
> The call to get_jiffies_64() at the top of the backtrace is attemptin=
g to read the jiffies in a reliable fashion.  The caller is required to=
 wait for the xtime_lock not to be held.=C2=A0 Clearly, since we are in=
=C2=A0 a path that is holding the xtime_lock, this will never make forw=
ard progress.
=46or x86 arch, function get_jiffies_64() seems not to wait the xtime_l=
ock,
but to do something related to CPU ordering:
get_jiffies_64()
|->read_seqbegin()
   |->smp_rmb()
      |->alternative("lock; addl $0,0(%%esp)", "lfence", X86_FEATURE_XM=
M2)
I'm not sure if this is the same as to accquire xtime_lock spinlock. Ma=
ybe this
is a point you need check.


Jeffrey

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
