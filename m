From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: Re: Heavy load of graphics
Date: Wed, 6 Oct 2004 07:35:39 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041006063539.6889.qmail@web52909.mail.yahoo.com>
References: <416271A2.8030304@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <416271A2.8030304@verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Nelson <james4765@verizon.net>
Cc: newbie <linux-newbie@vger.kernel.org>

thanks

this is the output

i am using redhat linux 9.0

"I know Red Hat has a lot of standard daemons (PCMCIA,
ISDN, etc) that are started by default - have you used
chkconfig or redhat-config-services to shut off
unneded services?" as u said...how to do this. i am
intrested in closing these services

thanks again

[ankit@Ankit ankit]$ cat /proc/meminfo
        total:    used:    free:  shared: buffers: 
cached:
Mem:  120741888 118902784  1839104        0  1695744
74162176
Swap: 534601728 69509120 465092608
MemTotal:       117912 kB
MemFree:          1796 kB
MemShared:           0 kB
Buffers:          1656 kB
Cached:          36536 kB
SwapCached:      35888 kB
Active:          65144 kB
ActiveAnon:      37092 kB
ActiveCache:     28052 kB
Inact_dirty:      4852 kB
Inact_laundry:    6728 kB
Inact_clean:      1068 kB
Inact_target:    15556 kB
HighTotal:           0 kB
HighFree:            0 kB
LowTotal:       117912 kB
LowFree:          1796 kB
SwapTotal:      522072 kB
SwapFree:       454192 kB
[ankit@Ankit ankit]$ ps -al
F S   UID   PID  PPID  C PRI  NI ADDR    SZ WCHAN  TTY
         TIME CMD
0 R   501  4306  4279  0  75   0    -   778 -     
pts/0    00:00:00 ps
[ankit@Ankit ankit]$

 
--- Jim Nelson <james4765@verizon.net> wrote: 
> Ankit Jain wrote:
> 
> >hi
> >
> >well i am using linux 9.0 kernel 2.4 ver. 128 Mb
> RAM
> >
> >i have seen not only on this sytem but the other
> one
> >having 512 Mb RAM the most of the memory is lost or
> >taken by graphics or xserver. on my system around
> 90%
> >is occupied by the xsever and on the sys with 512
> Mb
> >RAM around 70% is occupied. how to reduce this
> load. i
> >oculd not get any article or stuff relate to this .
> if
> >we can do something in kernel or in some way reduce
> >this load while working in GUI envt
> >
> >thanks
> >
> >Ankit
> >  
> >
> 
> Could you please post your ps -Al, /proc/meminfo,
> and lspci output?  I 
> know Red Hat has a lot of standard daemons (PCMCIA,
> ISDN, etc) that are 
> started by default - have you used chkconfig or
> redhat-config-services 
> to shut off unneded services?
> 
> The kernel also uses a lot of free memory for I/O
> caching - even my P4 
> w/ 1GB RAMBUS shows 90% memory consumption in
> /proc/meminfo.  Caching is 
> a low-priority memory allocation - when the system
> needs memory for 
> active processes, it should give the memory to the
> process.
> 
> BTW, unless you are using a framebuffer kernel-level
> driver, X is 
> handled almost exclusively in userland.  On SPARC32
> (for example) 
> framebuffers are pretty much the only way to get X
> working, but mostly, 
> XFree86 and the X.org server that comes with FC2 use
> mostly user-space 
> drivers.
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
