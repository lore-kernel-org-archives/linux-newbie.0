From: Gedare Bloom <gedare@gwmail.gwu.edu>
Subject: Re: IRQ Tracing Problem in Linux 2.6.28 Kernel
Date: Tue, 14 Apr 2009 08:51:40 -0400
Message-ID: <9b6278b80904140551k6edf0be6t9fdeaf75869ab2f9@mail.gmail.com>
References: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Sol Kavy <skavy@ubicom.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Apr 13, 2009 at 6:00 PM, Sol Kavy <skavy@ubicom.com> wrote:
> The following back trace represents a deadlock in Ubicom's SMP port o=
f 2.6.28 kernel.=A0=A0 I am sure that we are doing something unexpected=
=2E=A0 I would appreciate the community's help in understanding what is=
 going wrong.
>
> Thanks in advance for any pointers,
>
> Sol Kavy
>
> Problem:
> Ubicom's initial port does not use GENERIC_CLOCKEVENTS. =A0Instead it=
 uses a periodic timer based on HZ. =A0The periodic timer calls do_time=
r() on each tick.
>
> From the arch directory perspective, we are required to hold the xtim=
e_lock before calling do_timer().=A0 The lock is indeed help by cpu 3 a=
s evidenced in the output below.
>
> The call to get_jiffies_64() at the top of the backtrace is attemptin=
g to read the jiffies in a reliable fashion. =A0The caller is required =
to wait for the xtime_lock not to be held.=A0 Clearly, since we are in=A0=
 a path that is holding the xtime_lock, this will never make forward pr=
ogress.
>
> What is unclear to me is why other ports are not seeing the same prob=
lem?
>
> Perhaps it is because most ports now set GENERIC_CLOCKEVENTS which us=
es an entirely different mechanism for doing things. =A0I am in the mid=
dle of switching the port to use GENERIC_CLOCKEVENTS but would like to =
understand this failure in more detail.
>
> Any feedback is greatly appreciated,
>
> Sol
>
> Config Flags:
> # CONFIG_GENERIC_CLOCKEVENTS is not set
> CONFIG_GENERIC_HARDIRQS=3Dy
> CONFIG_IRQ_PER_CPU=3Dy
> CONFIG_TRACE_IRQFLAGS_SUPPORT=3Dy
> # CONFIG_DEBUG_SHIRQ is not set
> CONFIG_TRACE_IRQFLAGS=3Dy
> CONFIG_IRQSOFF_TRACER=3Dy
>
> State of the lock:
> (gdb) p xtime_lock
> $5 =3D {sequence =3D 47089, lock =3D {raw_lock =3D {lock =3D 1}, magi=
c =3D 3735899821,
> =A0 =A0owner_cpu =3D 3, owner =3D 0x42b01160}}
>
> This is a backtrace from CPU 3:
>
> =A0(gdb) bt
> #0=A0 get_jiffies_64 () at include/linux/seqlock.h:94
> #1=A0 0x4044f558 in sched_clock () at kernel/sched_clock.c:40
> #2=A0 0x4045f108 in ring_buffer_time_stamp (cpu=3D3) at kernel/trace/=
ring_buffer.c:58
> #3=A0 0x40464c50 in ftrace_now (cpu=3D3) at kernel/trace/trace.c:77
> #4=A0 0x404656ec in trace_hardirqs_off () at kernel/trace/trace_irqso=
ff.c:207
> #5=A0 0x40413020 in _spin_lock_irqsave (lock=3D0x3) at kernel/spinloc=
k.c:82
> #6=A0 0x40451b2c in clocksource_get_next () at kernel/time/clocksourc=
e.c:254
> #7=A0 0x3ffd08ac in update_wall_time () at kernel/time/timekeeping.c:=
182
> #8=A0 0x4043bcd8 in do_timer (ticks=3D0) at kernel/timer.c:1125
> #9=A0 0x404169f8 in timer_tick (irq=3D<value optimized out>,
> =A0=A0=A0 dummy=3D<value optimized out>) at arch/ubicom32/kernel/time=
=2Ec:126
> #10 0x3ffcefb0 in handle_IRQ_event (irq=3D<value optimized out>,
> =A0=A0=A0 action=3D0x406fe6f4) at kernel/irq/handle.c:142
> #11 0x3ffcee20 in __do_IRQ (irq=3D<value optimized out>)
> =A0=A0=A0 at kernel/irq/handle.c:239
> #12 0x3ffcfcc8 in do_IRQ (irq=3D47089, regs=3D<value optimized out>)
> =A0=A0=A0 at arch/ubicom32/kernel/irq.c:250
> #13 0x4041018c in sys_call_table ()
> #14 0x4044f558 in sched_clock () at kernel/sched_clock.c:40
> #15 0x00000008 in ?? ()
>
>
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

Hi Sol,

Caveat: I'm not familiar with porting Linux :)

get_jiffies_64 does attempt to acquire xtime_lock, but since you know
the lock is already held in do_timer, can you simply read the value
directly?  You'll just have to make sure every code path through
sched_clock() has xtime_lock...

Here is an example from the lxr that might be relevant:
http://lxr.linux.no/linux+v2.6.29/arch/frv/kernel/time.c#L151

Gedare Bloom
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
