From: Ray Olszewski <ray@comarre.com>
Subject: Re: Heavy load of graphics
Date: Fri, 08 Oct 2004 07:37:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041008071041.01f20c70@celine>
References: <4165BD79.5000005@gelm.net> <20041008052755.22120.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008052755.22120.qmail@web52902.mail.yahoo.com>
References: <4165BD79.5000005@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: newbie <linux-newbie@vger.kernel.org>

Now that I better understand your goal, let me try to offer some suggestions.

First, try using "ps aux" to get a more readable, and complete, picture of 
your memory use. "top" sorts by recent activity in its default setting, and 
that is not the best way to find what processes are using the most memory. 
"ps aux" will give you a complete list of processes running, and by 
scanning the "RSS" column (or running the output through "sort" using that 
column), you can spot the ones using a lot of RAM.

 From what you sent, X *itself* is probably not the culprit in your case. 
Though its VSS size is high, its RSS size is only about 6 MB (4.5% of RAM). 
Since you only sent a list of the top 20 or so processes sorted by by CPU 
use (not by RAM use), no one will be able to use this list to suggest ways 
to trim memory use.

What running processes you can trim depends on what you are using the 
system for. A workstation oriented toward development, for example, needs 
fewer services running than a system indended to provide, say, e-mail 
forwarding to a LAN.

Your choice of window manager also matters. For example, here on a 
workstation I run KDE, and it starts up a whole bunch of k* processes. Each 
individually uses very little RAM, but there are something like 20 of them, 
and cumulatively they occupy a lot of RAM. I can put up with this load 
because I have 768 MB of RAM in the system, but ut would be intolerable on 
a system sized like yours.

If you don't need all the KDE hoohas, you can switch to a more lightweight 
window manager -- for example, blackbox, XFce, or fluxbox ... actually, 
when compared to KDE, almost *any* other WM is "lightweight" -- and save a 
lot of RAM. (If you really need to run KDE, you probably want to take the 
suggestion someone else (Chuck? Jim? it's hard to tell who said what) 
already made to increase physical RAM.)

BTW, when considering priority issues, you would do better to focus on the 
NI (nice'ness) entry for each process, not its PRI (priority) entry. The NI 
value reflects what you (or root) can reset with "nice", and that is 
probably more important to you than varying representations of the actual, 
running priority (PRI) of the process.

I don't know, or recall, what the difference you are seeing means ... but 
as a general matter, "ps" options that are preceded by a "-" call for 
AT&T-style Unix syntax, while ones without the "-" call for BSD syntax. 
"top", I believe, uses BSD syntax. So to figure out how the two PRI 
representations differ, I would look into the differences between the two 
Unix forks.

If your looking at PRI is based on the system responding sluggishly ... I 
suspect that derives from its use of swap. Compared to physical RAM, swap 
access is painfully slow. It just doesn't support acceptable (by most 
people) performance for real-time processes like UIs or the usual desktop 
applications. Your other focus, on reducing use of RAM, is the right place 
to concentrate your efforts.

At 06:27 AM 10/8/2004 +0100, Ankit Jain wrote:
>  --- chuck gelm <chuck@gelm.net> wrote:
> > Ankit Jain wrote:
> >
> > >thanks a lot for help
> > >
> > >but at this moment i am trying to find out what
> > >services i should stop with this redhat-config
> > service
> > >
> > >and also i am confused in 1 more topic. top shows a
> > >col on priority under PRI and also ps -Al shows a
> > col
> > >of priority i.e PRI what is the difference b/w both
> > >becaz both shows different values
> > >
> > >rest inline
> > >
> > > --- Jim Nelson <james4765@verizon.net> wrote:
> > >
> > >
> > >>Ankit Jain wrote:
> > >>
> > >>
> > >>
> > >>>thanks
> > >>>
> > >>>this is the output
> > >>>
> > >>>i am using redhat linux 9.0
> > >>>
> > >>>"I know Red Hat has a lot of standard daemons
> > >>>
> > >>>
> > >>(PCMCIA,
> > >>
> > >>
> > >>>ISDN, etc) that are started by default - have you
> > >>>
> > >>>
> > >>used
> > >>
> > >>
> > >>>chkconfig or redhat-config-services to shut off
> > >>>unneded services?" as u said...how to do this. i
> > am
> > >>>intrested in closing these services
> > >>>
> > >>>thanks again
> > >>>
> > >>>
> > >>>
> > >>>
> > >>>
> > >>Easiest way to do this is to start an xterm, su to
> > >>root, and type
> > >>"redhat-config-services &".  That will give you a
> > >>GUI to select the
> > >>services you wish to run.  Depending on how much
> > you
> > >>selected when
> > >>installing, it could be quite a bit.
> > >>
> > >>Runlevel 3 is the Red Hat standard for booting
> > into
> > >>command-line mode,
> > >>and runlevel 5 is the standard graphical login
> > >>level.
> > >>
> > >>The only critical services controlled by this are
> > >>network, syslog,
> > >>xinetd, and nfslock (if you are using NFS).  Do
> > not
> > >>disable those unless
> > >>you know what you're doing it for.  iptables is
> > the
> > >>firewall control
> > >>(only disable if you are in a very well protected
> > >>network).
> > >>
> > >>
> > >
> > >do u know any document to know all this?
> > >
> > >
> > >
> > >>Most everything else can be turned off.
> > >>
> > >>
> > >>
> > >>>[ankit@Ankit ankit]$ cat /proc/meminfo
> > >>>       total:    used:    free:  shared: buffers:
> >
> > >>>cached:
> > >>>Mem:  120741888 118902784  1839104        0
> > >>>
> > >>>
> > >>1695744
> > >>
> > >>
> > >>>74162176
> > >>>Swap: 534601728 69509120 465092608
> > >>>MemTotal:       117912 kB
> > >>>MemFree:          1796 kB
> > >>>MemShared:           0 kB
> > >>>Buffers:          1656 kB
> > >>>Cached:          36536 kB
> > >>>SwapCached:      35888 kB
> > >>>Active:          65144 kB
> > >>>ActiveAnon:      37092 kB
> > >>>ActiveCache:     28052 kB
> > >>>Inact_dirty:      4852 kB
> > >>>Inact_laundry:    6728 kB
> > >>>Inact_clean:      1068 kB
> > >>>Inact_target:    15556 kB
> > >>>HighTotal:           0 kB
> > >>>HighFree:            0 kB
> > >>>LowTotal:       117912 kB
> > >>>LowFree:          1796 kB
> > >>>SwapTotal:      522072 kB
> > >>>SwapFree:       454192 kB
> > >>>
> > >>>
> > >>>
> > >>>
> > >>128 MB RAM is marginal for using KDE or Gnome on
> > >>RH9.  You can do it
> > >>(that's all I had on my first Linux box) but it's
> > a
> > >>pig.
> > >>
> > >>You've got almost 70 MB in swap - over 30% of your
> > >>total process
> > >>memory.  BTW - what kind of computer is it?  If
> > it's
> > >>not some oddball
> > >>hardware, your best solution is some RAM.  256 MB
> > is
> > >>enough to make X happy.
> > >>
> > >>
> > >>
> > >
> > >no X takes more than 70 % of memory with a system
> > with
> > >512 Mb of RAM i had seen that
> > >
> > >and also as calculated it shows tyhat system uses
> > >around 99Mb of RAM but it says only 2Mb is free?
> > what
> > >else is using that memory?
> > >
> > >thanks
> > >
> > >ankit
> > >
> > >
> > Dear Ankit:
> >
> >  I am not sure what your goal is.
>
>:) well my goal is to increase available RAM by tuning
>the sytem
>
>11:08:00  up 25 min,  2 users,  load average: 0.21,
>0.13, 0.10
>60 processes: 57 sleeping, 3 running, 0 zombie, 0
>stopped
>CPU states:   0.9% user   0.0% system   0.0% nice
>0.0% iowait  99.0% idle
>Mem:   117912k av,  116684k used,    1228k free,
>0k shrd,    1660k buff
>                      65128k actv,    4760k in_d,
>1644k in_c
>Swap:  522072k av,   40556k used,  481516k free
>            32240k cached
>
>
>   PID USER     PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM
>   TIME CPU COMMAND
>  3598 root      15   0  139M 5316   872 R     0.7  4.5
>   0:18   0 X
>  3790 ankit     15   0  1048 1048   848 R     0.1  0.8
>   0:00   0 top
>     1 root      15   0    88   60    40 S     0.0  0.0
>   0:03   0 init
>     2 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 keventd
>     3 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kapmd
>     4 root      35  19     0    0     0 SWN   0.0  0.0
>   0:00   0 ksoftirqd_CPU0
>     9 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 bdflush
>     5 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kswapd
>     6 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kscand/DMA
>     7 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kscand/Normal
>     8 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kscand/HighMem
>    10 root      15   0     0    0     0 SW    0.0  0.0
>   0:00   0 kupdated
>    11 root      25   0     0    0     0 SW    0.0  0.0
>   0:00   0 mdrecoveryd
>   110 root      25   0     0    0     0 SW    0.0  0.0
>   0:00   0 khubd
>  3180 root      15   0   188  156   112 S     0.0  0.1
>   0:00   0 syslogd
>  3184 root      15   0    56    4     0 S     0.0  0.0
>   0:00   0 klogd
>  3202 rpc       15   0    72    0     0 SW    0.0  0.0
>   0:00   0 portmap
>  3221 rpcuser   25   0    76    0     0 SW    0.0  0.0
>   0:00   0 rpc.statd
>  3288 root      24   0    52    4     0 S     0.0  0.0
>   0:00   0 apmd
>  3325 root      25   0   240    4     0 S     0.0  0.0
>   0:00   0 sshd
>
>if u will calculate this it will show very less
>compared to qhat it displays. becaz it displays
>only1.5 Mb to be free
>
>thanks
>
>ankit
> > Is it to increase available RAM by 'tuning' your
> > system,
> > rather than by installing more RAM memory?
> > I think that 'top' will display running programs and
> > sort them by the memory they consume
> >  (or try to comsume).
> > What programs or services are installed in your
> > setup
> > and how much memory are they consuming?
> > You probably need look no futher than the 'top ten'.
> >


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
