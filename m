From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: Re: Heavy load of graphics
Date: Fri, 8 Oct 2004 06:27:55 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041008052755.22120.qmail@web52902.mail.yahoo.com>
References: <4165BD79.5000005@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4165BD79.5000005@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: newbie <linux-newbie@vger.kernel.org>

 --- chuck gelm <chuck@gelm.net> wrote: 
> Ankit Jain wrote:
> 
> >thanks a lot for help
> >
> >but at this moment i am trying to find out what
> >services i should stop with this redhat-config
> service
> >
> >and also i am confused in 1 more topic. top shows a
> >col on priority under PRI and also ps -Al shows a
> col
> >of priority i.e PRI what is the difference b/w both
> >becaz both shows different values
> >
> >rest inline
> >
> > --- Jim Nelson <james4765@verizon.net> wrote: 
> >  
> >
> >>Ankit Jain wrote:
> >>
> >>    
> >>
> >>>thanks
> >>>
> >>>this is the output
> >>>
> >>>i am using redhat linux 9.0
> >>>
> >>>"I know Red Hat has a lot of standard daemons
> >>>      
> >>>
> >>(PCMCIA,
> >>    
> >>
> >>>ISDN, etc) that are started by default - have you
> >>>      
> >>>
> >>used
> >>    
> >>
> >>>chkconfig or redhat-config-services to shut off
> >>>unneded services?" as u said...how to do this. i
> am
> >>>intrested in closing these services
> >>>
> >>>thanks again
> >>>
> >>> 
> >>>
> >>>      
> >>>
> >>Easiest way to do this is to start an xterm, su to
> >>root, and type 
> >>"redhat-config-services &".  That will give you a
> >>GUI to select the 
> >>services you wish to run.  Depending on how much
> you
> >>selected when 
> >>installing, it could be quite a bit.
> >>
> >>Runlevel 3 is the Red Hat standard for booting
> into
> >>command-line mode, 
> >>and runlevel 5 is the standard graphical login
> >>level.
> >>
> >>The only critical services controlled by this are
> >>network, syslog, 
> >>xinetd, and nfslock (if you are using NFS).  Do
> not
> >>disable those unless 
> >>you know what you're doing it for.  iptables is
> the
> >>firewall control 
> >>(only disable if you are in a very well protected
> >>network).
> >>    
> >>
> >
> >do u know any document to know all this?
> >
> >  
> >
> >>Most everything else can be turned off.
> >>
> >>    
> >>
> >>>[ankit@Ankit ankit]$ cat /proc/meminfo
> >>>       total:    used:    free:  shared: buffers:
> 
> >>>cached:
> >>>Mem:  120741888 118902784  1839104        0 
> >>>      
> >>>
> >>1695744
> >>    
> >>
> >>>74162176
> >>>Swap: 534601728 69509120 465092608
> >>>MemTotal:       117912 kB
> >>>MemFree:          1796 kB
> >>>MemShared:           0 kB
> >>>Buffers:          1656 kB
> >>>Cached:          36536 kB
> >>>SwapCached:      35888 kB
> >>>Active:          65144 kB
> >>>ActiveAnon:      37092 kB
> >>>ActiveCache:     28052 kB
> >>>Inact_dirty:      4852 kB
> >>>Inact_laundry:    6728 kB
> >>>Inact_clean:      1068 kB
> >>>Inact_target:    15556 kB
> >>>HighTotal:           0 kB
> >>>HighFree:            0 kB
> >>>LowTotal:       117912 kB
> >>>LowFree:          1796 kB
> >>>SwapTotal:      522072 kB
> >>>SwapFree:       454192 kB
> >>> 
> >>>
> >>>      
> >>>
> >>128 MB RAM is marginal for using KDE or Gnome on
> >>RH9.  You can do it 
> >>(that's all I had on my first Linux box) but it's
> a
> >>pig.
> >>
> >>You've got almost 70 MB in swap - over 30% of your
> >>total process 
> >>memory.  BTW - what kind of computer is it?  If
> it's
> >>not some oddball 
> >>hardware, your best solution is some RAM.  256 MB
> is
> >>enough to make X happy.
> >>
> >>    
> >>
> >
> >no X takes more than 70 % of memory with a system
> with
> >512 Mb of RAM i had seen that
> >
> >and also as calculated it shows tyhat system uses
> >around 99Mb of RAM but it says only 2Mb is free?
> what
> >else is using that memory?
> >
> >thanks
> >
> >ankit
> >  
> >
> Dear Ankit:
> 
>  I am not sure what your goal is.

:) well my goal is to increase available RAM by tuning
the sytem

11:08:00  up 25 min,  2 users,  load average: 0.21,
0.13, 0.10
60 processes: 57 sleeping, 3 running, 0 zombie, 0
stopped
CPU states:   0.9% user   0.0% system   0.0% nice  
0.0% iowait  99.0% idle
Mem:   117912k av,  116684k used,    1228k free,      
0k shrd,    1660k buff
                     65128k actv,    4760k in_d,   
1644k in_c
Swap:  522072k av,   40556k used,  481516k free       
           32240k cached
                                                      
                                          
  PID USER     PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM
  TIME CPU COMMAND
 3598 root      15   0  139M 5316   872 R     0.7  4.5
  0:18   0 X
 3790 ankit     15   0  1048 1048   848 R     0.1  0.8
  0:00   0 top
    1 root      15   0    88   60    40 S     0.0  0.0
  0:03   0 init
    2 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 keventd
    3 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kapmd
    4 root      35  19     0    0     0 SWN   0.0  0.0
  0:00   0 ksoftirqd_CPU0
    9 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 bdflush
    5 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kswapd
    6 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kscand/DMA
    7 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kscand/Normal
    8 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kscand/HighMem
   10 root      15   0     0    0     0 SW    0.0  0.0
  0:00   0 kupdated
   11 root      25   0     0    0     0 SW    0.0  0.0
  0:00   0 mdrecoveryd
  110 root      25   0     0    0     0 SW    0.0  0.0
  0:00   0 khubd
 3180 root      15   0   188  156   112 S     0.0  0.1
  0:00   0 syslogd
 3184 root      15   0    56    4     0 S     0.0  0.0
  0:00   0 klogd
 3202 rpc       15   0    72    0     0 SW    0.0  0.0
  0:00   0 portmap
 3221 rpcuser   25   0    76    0     0 SW    0.0  0.0
  0:00   0 rpc.statd
 3288 root      24   0    52    4     0 S     0.0  0.0
  0:00   0 apmd
 3325 root      25   0   240    4     0 S     0.0  0.0
  0:00   0 sshd

if u will calculate this it will show very less
compared to qhat it displays. becaz it displays
only1.5 Mb to be free

thanks

ankit
> Is it to increase available RAM by 'tuning' your
> system,
> rather than by installing more RAM memory?
> I think that 'top' will display running programs and
> sort them by the memory they consume
>  (or try to comsume).
> What programs or services are installed in your
> setup
> and how much memory are they consuming?
> You probably need look no futher than the 'top ten'.
> 
> Chuck
> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
>  

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
