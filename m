From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: kswapd (?!) error
Date: Sat, 5 Oct 2002 16:28:50 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210051628.50770.g38@rdsbv.ro>
References: <200210050816.03883.g38@rdsbv.ro> <02100508295303.00234@unix.pa3gcu>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02100508295303.00234@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

petre@k:~$ uname -a
Linux k 2.4.18-HTB #4 Wed Sep 25 02:47:50 EEST 2002 i686 unknown

it is a Slackware 8.1 installed a few weeks ago

I have 256 MB RAM and 200 MB swap space

I stay away for the experimental kernels, as what I want from my system is 
stability.

the uptime of the machine was at that time 4 days, 21:14:36. It is my home 
box, I run x-window on it (KDE), but at that time x-window wasn't running, so 
the only processes runing were those required by the system, plus apache plus 
http (below I'll list them). The only reason which comes to my mind is that 
at the time the crash occured I was doing a ftp upload on the machine @ ~200 
KB (yes, kilo Bytes). If it makes any difference, I'm connected through a 
LanCity cable modem.

I shall look at the file you mentioned, richard, thank you, though I would 
like to have some opinions on what caused this error (one of the few "fatal" 
errors I have seen on linux machines yet).


petre


  PID TTY      STAT   TIME COMMAND
    1 ?        S      0:03 init
    2 ?        SW     0:00 [keventd]
    3 ?        SW     0:00 [kapmd]
    4 ?        SWN    0:00 [ksoftirqd_CPU0]
    5 ?        SW     0:00 [kswapd]
    6 ?        SW     0:00 [bdflush]
    7 ?        SW     0:00 [kupdated]
    8 ?        SW     0:00 [kreiserfsd]
   52 ?        SW     0:00 [eth0]
   55 ?        S      0:00 /usr/sbin/syslogd
   58 ?        S      0:00 /usr/sbin/klogd -c 3 -x
   99 ?        S      0:00 /usr/sbin/inetd
  101 ?        S      0:00 /usr/local/sbin/sshd
  108 ?        S      0:00 /usr/sbin/crond -l10
  110 ?        S      0:00 /usr/sbin/atd -b 15 -l 1
  114 ?        S      0:00 /usr/sbin/apmd
  116 ?        S      0:00 gpm -m /dev/mouse -t ps2
  132 ?        S      0:00 /usr/local/apache/bin/httpd
  134 tty1     S      0:00 -bash
  135 tty2     S      0:00 -bash
  136 tty3     S      0:00 /sbin/agetty 38400 tty3 linux
  137 tty4     S      0:00 /sbin/agetty 38400 tty4 linux
  138 tty5     S      0:00 /sbin/agetty 38400 tty5 linux
  139 ?        S      0:00 /usr/local/sbin/uptimed
  140 tty6     S      0:00 /sbin/agetty 38400 tty6 linux
  141 ?        S      0:00 /usr/local/apache/bin/httpd
  142 ?        S      0:00 /usr/local/apache/bin/httpd
  143 ?        S      0:00 /usr/local/apache/bin/httpd




On Saturday 05 October 2002 11:29, pa3gcu wrote:
> On Saturday 05 October 2002 05:16, Petre Bandac wrote:
> > can anyone translate in plain english the error below, please ? (the
> > computer was frozen, and though it responded to ping, none of the
> > services running - sshd, ftpd and apache - worked)
>
> No to translate it properly into English you would have to do that yourself
> because your system has the details to decode the kernel oops below.
> Help on that is written in /usr/src/linux/README, the part called;
> IF SOMETHING GOES WRONG:
>
> Now lets see if i can take a guess at what you are doing, considering you
> give is no further information on what you are doing then all one can do is
> guess.
>
> Possably you have compiled a new kernel and or a experimental kernel
> series, ie; 2.5.x, you may have upgraded some or other utillity which is
> uncompatable with your kernel version.
>
> Or had your machine been running for a very long time,? do you have a swap
> space, how many programs were you using at the time of the crash, what
> processes were running, what was the last thing you did before the crash?
>
> All and any info is better than the zero info you gave.
>
> It could also be that you have a rouge program/daemon running which is
> doing things that kswapd did not like. kswapd is mentioned in the oops,
> however that does not mean kswapd caused the problem, kswapd is the daemon
> that died, looks that way to me.
>
> Help us to help you, o BTW, if this happened with a 2.5.xx kernel then send
> your "detailed" message to the applicable "MAINTAINER" stated in the
> MAINTAINERS list in the kernel source and not here, experimental kernels
> should not be used by newbies unless they know what they are doing.
>
> NOTE, i used the word newbie as a general term to reflect to this list of
> which you are a list-member.
>
> > thanks,
> >
> > petre
> >
> >
> >
> >
> > Oct  5 04:45:04 k kernel: Unable to handle kernel paging request at
> > virtual address 361dcf1b
> > Oct  5 04:45:04 k kernel:  printing eip:
> > Oct  5 04:45:04 k kernel: c01297e8
> > Oct  5 04:45:04 k kernel: *pde = 00000000
> > Oct  5 04:45:04 k kernel: Oops: 0002
> > Oct  5 04:45:04 k kernel: CPU:    0
> > Oct  5 04:45:04 k kernel: EIP:    0010:[<c01297e8>]    Not tainted
> > Oct  5 04:45:04 k kernel: EFLAGS: 00010002
> > Oct  5 04:45:04 k kernel: eax: c14056d0   ebx: c14056d0   ecx: c4d90ae0
> > edx: 361dcf1b
> > Oct  5 04:45:04 k kernel: esi: 00000000   edi: 00000457   ebp: 0000012a
> > esp: c14e3f58
> > Oct  5 04:45:04 k kernel: ds: 0018   es: 0018   ss: 0018
> > Oct  5 04:45:04 k kernel: Process kswapd (pid: 5, stackpage=c14e3000)
> > Oct  5 04:45:04 k kernel: Stack: 00000020 000001d0 00000020 00000006
> > c14056c0 c02edf28 00000000 0000022c
> > Oct  5 04:45:04 k kernel:        00000457 c14056c0 c012a41c 00000006
> > 000001d0 c0289c68 00000000 c0289c68
> > Oct  5 04:45:04 k kernel:        c012a4bf 00000020 c0289c68 00000001
> > c14e2000 c012a553 c0289bc0 00000000
> > Oct  5 04:45:04 k kernel: Call Trace: [<c012a41c>] [<c012a4bf>]
> > [<c012a553>] [<c012a5ae>] [<c012a6bd>]
> > Oct  5 04:45:04 k kernel:    [<c0105478>]
> > Oct  5 04:45:05 k kernel:
> > Oct  5 04:45:05 k kernel: Code: 89 02 fb 51 8b 54 24 28 52 e8 8a f4 ff ff
> > 83 c4 08 fa 45 3b

-- 
 16:11:55 up  8:05,  2 users,  load average: 0.05, 0.16, 0.65

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
