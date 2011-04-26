From: Toon Moene <toon@moene.org>
Subject: How to measure the effect of huge pages ?
Date: Tue, 26 Apr 2011 19:26:55 +0200
Message-ID: <4DB7005F.1000408@moene.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

This would be more appropriate to a linux-help mailing list (which 
doesn't exist), as I think I do understand the kernel issues involved, 
but I do not see the effect I expect to see.

A week ago I updated Debian Testing - one of the packages updated was 
the Linux kernel, which went from 2.6.32.n to 2.6.38.2:

$ uname -a
Linux super 2.6.38-2-amd64 #1 SMP Thu Apr 7 04:28:07 UTC 2011 x86_64 
GNU/Linux

Now, 2.6.38 has anonymous (transparent) huge page support:

$ cat /proc/meminfo
...
AnonHugePages:   2484224 kB

So shortly (30 seconds) after rebooting, I did:

$ echo always >/sys/kernel/mm/transparent_hugepage/enabled
$ echo always >/sys/kernel/mm/transparent_hugepage/defrag

which is still in effect:

$ cat /sys/kernel/mm/transparent_hugepage/enabled
[always] madvise never
$ cat /sys/kernel/mm/transparent_hugepage/defrag
[always] madvise never

There's 4 Gbyte of RAM on this machine, and /proc/cpuinfo gives:

processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 15
model name	: Intel(R) Core(TM)2 Quad CPU    Q6600  @ 2.40GHz
stepping	: 11
cpu MHz		: 2394.000
cache size	: 4096 KB
physical id	: 0
siblings	: 4
core id		: 0
cpu cores	: 4
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov 
pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx lm 
constant_tsc arch_perfmon pebs bts rep_good nopl aperfmperf pni dtes64 
monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm lahf_lm dts tpr_shadow 
vnmi flexpriority
bogomips	: 4799.67
clflush size	: 64
cache_alignment	: 64
address sizes	: 36 bits physical, 48 bits virtual
power management:

(4 times, for each core).

This is the main application (which fills the machine 4 times / day, 16 
hours / day):

$ ps uxww
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
hirlam    5528  0.0  0.0  56080  1492 ?        S    17:35   0:01 mpirun 
--mca mpi_paffinity_alone 1 --mca mpi_yield_when_idle 1 -np 4 
/scratch/hirlam/hl_home/MPI/lib/src/linuxgfortranmpi/bin/hlprog.x
hirlam    5529 98.0 17.8 1090948 725416 ?      R    17:35  99:42 
/scratch/hirlam/hl_home/MPI/lib/src/linuxgfortranmpi/bin/hlprog.x
hirlam    5530 99.1 16.8 1091748 683932 ?      R    17:35 100:50 
/scratch/hirlam/hl_home/MPI/lib/src/linuxgfortranmpi/bin/hlprog.x
hirlam    5531 98.8 16.8 1086800 682432 ?      R    17:35 100:34 
/scratch/hirlam/hl_home/MPI/lib/src/linuxgfortranmpi/bin/hlprog.x
hirlam    5532 98.5 16.9 1093752 686796 ?      R    17:35 100:16 
/scratch/hirlam/hl_home/MPI/lib/src/linuxgfortranmpi/bin/hlprog.x
...

One would think such an application, which takes about 70 % of RAM would 
be a prime example of one that gets a speed-up from huge pages. 
However, the change in running time was unmeasurable.

Now, /proc/meminfo above shows that the huge pages *are* allocated, and 
the only reasonable way they are is that they are allocated to *this* 
application (I also see their allocation drop after the application 
finishes).

What do I have to do to determine why this doesn't have the desired 
effect ?  Does (ordinary) malloc/free play a role ?  What other system 
parameters can I study to get a handle on this ?

Thanks for any insight you can offer.

-- 
Toon Moene - e-mail: toon@moene.org - phone: +31 346 214290
Saturnushof 14, 3738 XG  Maartensdijk, The Netherlands
At home: http://moene.org/~toon/; weather: http://moene.org/~hirlam/
Progress of GNU Fortran: http://gcc.gnu.org/wiki/GFortran#news
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
