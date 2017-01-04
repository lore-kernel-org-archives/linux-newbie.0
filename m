From: mitko@stz-bg.com
Subject: rcu_sched detected stalls on CPUs and server freeze for few minutes.
Date: Wed, 04 Jan 2017 14:40:54 +0200
Message-ID: <87a3d96f77f4dc7214d6fe26e995de3a@stz-bg.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org



Hello,

from few months I have a problem with my kernel or server. I read a lots 
of posts in internet but unable to find solution or information what 
trigger this error.
Im using Slackware linux x86-64, kernel version:  Linux database 4.4.38 
#2 SMP Sun Dec 11 16:11:02 CST 2016 x86_64 Intel(R) Xeon(R) CPU E7- 4830 
  @ 2.13GHz GenuineIntel GNU/Linux
Load of my server isnt big less then 0.50 and when server freeze nothing 
is working for 3-5 minute. No lan, no video, no keyboard, mouse. Nothing 
is working. After these few minutes everything continue normal.
I read kernel documentation but did not find how to resolve the problem. 
I change a few kernels in last few months but no effect.


Usual error is :

[Tue Jan  3 14:34:48 2017] INFO: rcu_sched detected stalls on 
CPUs/tasks:
[Tue Jan  3 14:34:48 2017]      0-...: (1 GPs behind) idle=0c3/1/0 
softirq=99925959/99925960 fqs=18719
[Tue Jan  3 14:34:48 2017]      (detected by 12, t=60002 jiffies, 
g=59107674, c=59107673, q=4826)
[Tue Jan  3 14:34:48 2017] Task dump for CPU 0:
[Tue Jan  3 14:34:48 2017] swapper/0       R  running task        0     
0      0 0x00000008
[Tue Jan  3 14:34:48 2017]  ffffffff82403e98 0000000000000018 
ffffffff81b342ad 0000000082403ee8
[Tue Jan  3 14:34:48 2017]  00062f9abbe9e97d ffffffff82558700 
ffffffff82404000 ffffe8ffff400800
[Tue Jan  3 14:34:48 2017]  ffffffff824b2f40 ffffffff82400000 
ffffffff82403ee0 ffffffff81b34487
[Tue Jan  3 14:34:48 2017] Call Trace:
[Tue Jan  3 14:34:48 2017]  [<ffffffff81b342ad>] ? 
cpuidle_enter_state+0x10d/0x2b0
[Tue Jan  3 14:34:48 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Tue Jan  3 14:34:48 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Tue Jan  3 14:34:48 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Tue Jan  3 14:34:48 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Tue Jan  3 14:34:48 2017]  [<ffffffff81c66e87>] ? rest_init+0x77/0x80
[Tue Jan  3 14:34:48 2017]  [<ffffffff82577f63>] ? 
start_kernel+0x44b/0x458
[Tue Jan  3 14:34:48 2017]  [<ffffffff825772fe>] ? 
x86_64_start_reservations+0x2a/0x2c
[Tue Jan  3 14:34:48 2017]  [<ffffffff82577468>] ? 
x86_64_start_kernel+0x168/0x176



Today was a big "crash"


[Wed Jan  4 10:19:12 2017] INFO: rcu_sched detected stalls on 
CPUs/tasks:
[Wed Jan  4 10:19:12 2017]      0-...: (1 GPs behind) idle=1e1/1/0 
softirq=104171004/104171004 fqs=0
[Wed Jan  4 10:19:12 2017]      5-...: (0 ticks this GP) idle=e10/0/0 
softirq=27256743/27256743 fqs=0
[Wed Jan  4 10:19:12 2017]      16-...: (17661 GPs behind) idle=922/0/0 
softirq=371974/371974 fqs=0
[Wed Jan  4 10:19:12 2017]      17-...: (15806 GPs behind) idle=c1c/0/0 
softirq=650751/650751 fqs=0
[Wed Jan  4 10:19:12 2017]      19-...: (0 ticks this GP) idle=7a8/0/0 
softirq=589498/589498 fqs=0
[Wed Jan  4 10:19:12 2017]      20-...: (15801 GPs behind) idle=bfc/0/0 
softirq=598502/598502 fqs=0
[Wed Jan  4 10:19:12 2017]      21-...: (24358 GPs behind) idle=c2c/0/0 
softirq=502650/502650 fqs=0
[Wed Jan  4 10:19:12 2017]      22-...: (12806 GPs behind) idle=528/0/0 
softirq=452491/452491 fqs=0
[Wed Jan  4 10:19:12 2017]      23-...: (3988 GPs behind) idle=01e/0/0 
softirq=516819/516819 fqs=0
[Wed Jan  4 10:19:12 2017]      24-...: (0 ticks this GP) idle=f8a/0/0 
softirq=1013969/1013969 fqs=0
[Wed Jan  4 10:19:12 2017]      25-...: (0 ticks this GP) idle=a2c/0/0 
softirq=965710/965710 fqs=0
[Wed Jan  4 10:19:12 2017]      26-...: (0 ticks this GP) idle=fe2/0/0 
softirq=1140759/1140759 fqs=0
[Wed Jan  4 10:19:12 2017]      27-...: (0 ticks this GP) idle=950/0/0 
softirq=864214/864214 fqs=0
[Wed Jan  4 10:19:12 2017]      30-...: (0 ticks this GP) idle=e8e/0/0 
softirq=923356/923356 fqs=0
[Wed Jan  4 10:19:12 2017]      31-...: (0 ticks this GP) idle=82c/0/0 
softirq=977601/977601 fqs=0
[Wed Jan  4 10:19:12 2017]      (detected by 6, t=60002 jiffies, 
g=61967937, c=61967936, q=4682)
[Wed Jan  4 10:19:12 2017] Task dump for CPU 0:
[Wed Jan  4 10:19:12 2017] swapper/0       R  running task        0     
0      0 0x00000008
[Wed Jan  4 10:19:12 2017]  ffffffff82403e98 0000000000000018 
ffffffff81b342ad 0000000082403ee8
[Wed Jan  4 10:19:12 2017]  0006703c8fc4629f ffffffff82558700 
ffffffff82404000 ffffe8ffff400800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffffffff82400000 
ffffffff82403ee0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b342ad>] ? 
cpuidle_enter_state+0x10d/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81c66e87>] ? rest_init+0x77/0x80
[Wed Jan  4 10:19:12 2017]  [<ffffffff82577f63>] ? 
start_kernel+0x44b/0x458
[Wed Jan  4 10:19:12 2017]  [<ffffffff825772fe>] ? 
x86_64_start_reservations+0x2a/0x2c
[Wed Jan  4 10:19:12 2017]  [<ffffffff82577468>] ? 
x86_64_start_kernel+0x168/0x176
[Wed Jan  4 10:19:12 2017] Task dump for CPU 5:
[Wed Jan  4 10:19:12 2017] swapper/5       R  running task        0     
0      1 0x00200008
[Wed Jan  4 10:19:12 2017]  0006703c8fb28759 ffff881fb261beb0 
ffffffff81b34290 00000000b261bec8
[Wed Jan  4 10:19:12 2017]  ffff881fbeab2120 ffffffff82558700 
ffff881fb261c000 ffffe8ffff4a0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2618000 
ffff881fb261bec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 16:
[Wed Jan  4 10:19:12 2017] swapper/16      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006703c8fb238c6 ffff881fb2657eb0 
ffffffff81b34290 00000000b2657ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbec12120 ffffffff82558700 
ffff881fb2658000 ffffe8ffff600800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2654000 
ffff881fb2657ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 17:
[Wed Jan  4 10:19:12 2017] swapper/17      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882ddf04 ffff881fb265beb0 
ffffffff81b34290 00000000b265bec8
[Wed Jan  4 10:19:12 2017]  ffff881fbec32120 ffffffff82558700 
ffff881fb265c000 ffffe8ffff620800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2658000 
ffff881fb265bec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 19:
[Wed Jan  4 10:19:12 2017] swapper/19      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882c2d37 ffff881fb2663eb0 
ffffffff81b34290 00000000b2663ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbec72120 ffffffff82558700 
ffff881fb2664000 ffffe8ffff660800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2660000 
ffff881fb2663ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 20:
[Wed Jan  4 10:19:12 2017] swapper/20      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882dd6d4 ffff881fb2667eb0 
ffffffff81b34290 00000000b2667ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbec92120 ffffffff82558700 
ffff881fb2668000 ffffe8ffff680800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2664000 
ffff881fb2667ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 21:
[Wed Jan  4 10:19:12 2017] swapper/21      R  running task        0     
0      1 0x00200008
[Wed Jan  4 10:19:12 2017]  0006703c8fb211c2 ffff881fb266beb0 
ffffffff81b34290 00000000b266bec8
[Wed Jan  4 10:19:12 2017]  ffff881fbecb2120 ffffffff82558700 
ffff881fb266c000 ffffe8ffff6a0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2668000 
ffff881fb266bec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 22:
[Wed Jan  4 10:19:12 2017] swapper/22      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882c24c2 ffff881fb266feb0 
ffffffff81b34290 00000000b266fec8
[Wed Jan  4 10:19:12 2017]  ffff881fbecd2120 ffffffff82558700 
ffff881fb2670000 ffffe8ffff6c0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb266c000 
ffff881fb266fec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 23:
[Wed Jan  4 10:19:12 2017] swapper/23      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882dea33 ffff881fb2683eb0 
ffffffff81b34290 00000000b2683ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbecf2120 ffffffff82558700 
ffff881fb2684000 ffffe8ffff6e0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2680000 
ffff881fb2683ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 24:
[Wed Jan  4 10:19:12 2017] swapper/24      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882dd577 ffff881fb2687eb0 
ffffffff81b34290 00000000b2687ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbed12120 ffffffff82558700 
ffff881fb2688000 ffffe8ffff700800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2684000 
ffff881fb2687ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 25:
[Wed Jan  4 10:19:12 2017] swapper/25      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882c2e94 ffff881fb2693eb0 
ffffffff81b34290 00000000b2693ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbed32120 ffffffff82558700 
ffff881fb2694000 ffffe8ffff720800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2690000 
ffff881fb2693ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 26:
[Wed Jan  4 10:19:12 2017] swapper/26      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882ddda7 ffff881fb2697eb0 
ffffffff81b34290 00000000b2697ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbed52120 ffffffff82558700 
ffff881fb2698000 ffffe8ffff740800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2694000 
ffff881fb2697ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 27:
[Wed Jan  4 10:19:12 2017] swapper/27      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882dc819 ffff881fb269beb0 
ffffffff81b34290 00000000b269bec8
[Wed Jan  4 10:19:12 2017]  ffff881fbed72120 ffffffff82558700 
ffff881fb269c000 ffffe8ffff760800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb2698000 
ffff881fb269bec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 30:
[Wed Jan  4 10:19:12 2017] swapper/30      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882de61c ffff881fb26a7eb0 
ffffffff81b34290 00000000b26a7ec8
[Wed Jan  4 10:19:12 2017]  ffff881fbedd2120 ffffffff82558700 
ffff881fb26a8000 ffffe8ffff7c0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb26a4000 
ffff881fb26a7ec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] Task dump for CPU 31:
[Wed Jan  4 10:19:12 2017] swapper/31      R  running task        0     
0      1 0x00200000
[Wed Jan  4 10:19:12 2017]  0006704a882dee05 ffff881fb26abeb0 
ffffffff81b34290 00000000b26abec8
[Wed Jan  4 10:19:12 2017]  ffff881fbedf2120 ffffffff82558700 
ffff881fb26ac000 ffffe8ffff7e0800
[Wed Jan  4 10:19:12 2017]  ffffffff824b2f40 ffff881fb26a8000 
ffff881fb26abec0 ffffffff81b34487
[Wed Jan  4 10:19:12 2017] Call Trace:
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34290>] ? 
cpuidle_enter_state+0xf0/0x2b0
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34487>] ? 
cpuidle_enter+0x17/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9882>] ? 
call_cpuidle+0x32/0x60
[Wed Jan  4 10:19:12 2017]  [<ffffffff81b34463>] ? 
cpuidle_select+0x13/0x20
[Wed Jan  4 10:19:12 2017]  [<ffffffff810c9b1f>] ? 
cpu_startup_entry+0x26f/0x310
[Wed Jan  4 10:19:12 2017]  [<ffffffff81039e7c>] ? 
start_secondary+0x12c/0x140
[Wed Jan  4 10:19:12 2017] rcu_sched kthread starved for 60004 jiffies! 
g61967937 c61967936 f0x0 s3 ->state=0x1



Do any know can help me to diagnose the problem and how to resolve it ? 
I spoke with few friends and they trying to convince me the problem is 
in CPU.
I did not believe after a 3 years working CPU suddenly stop working 
correctly.

I probably did not provide much information, but I did not write to 
kernel mailing list a few years.

Regards,
Mitko

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
