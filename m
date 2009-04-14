From: "Sol Kavy" <skavy@ubicom.com>
Subject: RE: IRQ Tracing Problem in Linux 2.6.28 Kernel
Date: Tue, 14 Apr 2009 15:58:53 -0700
Message-ID: <CB2DD11991B27C4F99935E6229450D32042AAB29@STORK.scenix.com>
References: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Sol Kavy <skavy@ubicom.com>, linux-newbie@vger.kernel.org


I have discovered why other architectures do not have the same problem.=
   The back trace indicates a real defect (i.e. deadlock) in the generi=
c code. =20

Most architectures override sched_clock() with their own version.  Kern=
el/sched_clock.c:38 is a weak alias that will be overridden if an arch =
directory supplies its own.

Most of the arch directories provide an implementation that directly ac=
cess the jiffies_64 variable "without" acquiring the xtime_lock. =20

Some of the implementations provide a "poor" implementation in that the=
 value of the jiffies_64 during a 32 rollover is not taken into account=
=2E  If sched_clock() is to be called while holding xtime_lock, the cor=
e implementation should be modified not to call get_jiffies_64() (which=
 requires the xlock) but to use something like the following:

unsigned long long sched_clock(void)
{
	unsigned long long my_jiffies;
	unsigned long jiffies_top;
	unsigned long jiffies_bottom;

	do {
		jiffies_top =3D jiffies_64 >> 32;
		jiffies_bottom =3D jiffies_64 & 0xffffffff;
	} while(unlikely(jiffies_top !=3D (unsigned long)(jiffies_64 >> 32)));=
=20

	my_jiffies =3D ((unsigned long long)jiffies_top << 32) | (jiffies_bott=
om);
	return (my_jiffies - INITIAL_JIFFIES) * (NSEC_PER_SEC / HZ);
}

-----Original Message-----
=46rom: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@v=
ger.kernel.org] On Behalf Of Sol Kavy
Sent: Monday, April 13, 2009 3:01 PM
To: linux-newbie@vger.kernel.org
Subject: IRQ Tracing Problem in Linux 2.6.28 Kernel

The following back trace represents a deadlock in Ubicom's SMP port of =
2.6.28 kernel.=A0=A0 I am sure that we are doing something unexpected.=A0=
 I would appreciate the community's help in understanding what is going=
 wrong.

Thanks in advance for any pointers,

Sol Kavy

Problem:
Ubicom's initial port does not use GENERIC_CLOCKEVENTS.  Instead it use=
s a periodic timer based on HZ.  The periodic timer calls do_timer() on=
 each tick.

=46rom the arch directory perspective, we are required to hold the xtim=
e_lock before calling do_timer().=A0 The lock is indeed help by cpu 3 a=
s evidenced in the output below.

The call to get_jiffies_64() at the top of the backtrace is attempting =
to read the jiffies in a reliable fashion.  The caller is required to w=
ait for the xtime_lock not to be held.=A0 Clearly, since we are in=A0 a=
 path that is holding the xtime_lock, this will never make forward prog=
ress.

What is unclear to me is why other ports are not seeing the same proble=
m? =A0

Perhaps it is because most ports now set GENERIC_CLOCKEVENTS which uses=
 an entirely different mechanism for doing things.  I am in the middle =
of switching the port to use GENERIC_CLOCKEVENTS but would like to unde=
rstand this failure in more detail.

Any feedback is greatly appreciated,

Sol

Config Flags:
# CONFIG_GENERIC_CLOCKEVENTS is not set
CONFIG_GENERIC_HARDIRQS=3Dy
CONFIG_IRQ_PER_CPU=3Dy
CONFIG_TRACE_IRQFLAGS_SUPPORT=3Dy
# CONFIG_DEBUG_SHIRQ is not set
CONFIG_TRACE_IRQFLAGS=3Dy
CONFIG_IRQSOFF_TRACER=3Dy

State of the lock:
(gdb) p xtime_lock
$5 =3D {sequence =3D 47089, lock =3D {raw_lock =3D {lock =3D 1}, magic =
=3D 3735899821,=20
    owner_cpu =3D 3, owner =3D 0x42b01160}}

This is a backtrace from CPU 3:

=A0(gdb) bt
#0=A0 get_jiffies_64 () at include/linux/seqlock.h:94
#1=A0 0x4044f558 in sched_clock () at kernel/sched_clock.c:40
#2=A0 0x4045f108 in ring_buffer_time_stamp (cpu=3D3) at kernel/trace/ri=
ng_buffer.c:58
#3=A0 0x40464c50 in ftrace_now (cpu=3D3) at kernel/trace/trace.c:77
#4=A0 0x404656ec in trace_hardirqs_off () at kernel/trace/trace_irqsoff=
=2Ec:207
#5=A0 0x40413020 in _spin_lock_irqsave (lock=3D0x3) at kernel/spinlock.=
c:82
#6=A0 0x40451b2c in clocksource_get_next () at kernel/time/clocksource.=
c:254
#7=A0 0x3ffd08ac in update_wall_time () at kernel/time/timekeeping.c:18=
2
#8=A0 0x4043bcd8 in do_timer (ticks=3D0) at kernel/timer.c:1125
#9=A0 0x404169f8 in timer_tick (irq=3D<value optimized out>,=20
=A0=A0=A0 dummy=3D<value optimized out>) at arch/ubicom32/kernel/time.c=
:126
#10 0x3ffcefb0 in handle_IRQ_event (irq=3D<value optimized out>,=20
=A0=A0=A0 action=3D0x406fe6f4) at kernel/irq/handle.c:142
#11 0x3ffcee20 in __do_IRQ (irq=3D<value optimized out>)
=A0=A0=A0 at kernel/irq/handle.c:239
#12 0x3ffcfcc8 in do_IRQ (irq=3D47089, regs=3D<value optimized out>)
=A0=A0=A0 at arch/ubicom32/kernel/irq.c:250
#13 0x4041018c in sys_call_table ()
#14 0x4044f558 in sched_clock () at kernel/sched_clock.c:40
#15 0x00000008 in ?? ()




--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
