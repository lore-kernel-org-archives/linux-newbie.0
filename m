From: Jim Nelson <james4765@verizon.net>
Subject: Re: Heavy load of graphics
Date: Wed, 06 Oct 2004 17:02:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41645D4D.9050902@verizon.net>
References: <20041006063539.6889.qmail@web52909.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006063539.6889.qmail@web52909.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>thanks
>
>this is the output
>
>i am using redhat linux 9.0
>
>"I know Red Hat has a lot of standard daemons (PCMCIA,
>ISDN, etc) that are started by default - have you used
>chkconfig or redhat-config-services to shut off
>unneded services?" as u said...how to do this. i am
>intrested in closing these services
>
>thanks again
>
>  
>
Easiest way to do this is to start an xterm, su to root, and type 
"redhat-config-services &".  That will give you a GUI to select the 
services you wish to run.  Depending on how much you selected when 
installing, it could be quite a bit.

Runlevel 3 is the Red Hat standard for booting into command-line mode, 
and runlevel 5 is the standard graphical login level.

The only critical services controlled by this are network, syslog, 
xinetd, and nfslock (if you are using NFS).  Do not disable those unless 
you know what you're doing it for.  iptables is the firewall control 
(only disable if you are in a very well protected network).

Most everything else can be turned off.

>[ankit@Ankit ankit]$ cat /proc/meminfo
>        total:    used:    free:  shared: buffers: 
>cached:
>Mem:  120741888 118902784  1839104        0  1695744
>74162176
>Swap: 534601728 69509120 465092608
>MemTotal:       117912 kB
>MemFree:          1796 kB
>MemShared:           0 kB
>Buffers:          1656 kB
>Cached:          36536 kB
>SwapCached:      35888 kB
>Active:          65144 kB
>ActiveAnon:      37092 kB
>ActiveCache:     28052 kB
>Inact_dirty:      4852 kB
>Inact_laundry:    6728 kB
>Inact_clean:      1068 kB
>Inact_target:    15556 kB
>HighTotal:           0 kB
>HighFree:            0 kB
>LowTotal:       117912 kB
>LowFree:          1796 kB
>SwapTotal:      522072 kB
>SwapFree:       454192 kB
>  
>

128 MB RAM is marginal for using KDE or Gnome on RH9.  You can do it 
(that's all I had on my first Linux box) but it's a pig.

You've got almost 70 MB in swap - over 30% of your total process 
memory.  BTW - what kind of computer is it?  If it's not some oddball 
hardware, your best solution is some RAM.  256 MB is enough to make X happy.


>[ankit@Ankit ankit]$ ps -al
>F S   UID   PID  PPID  C PRI  NI ADDR    SZ WCHAN  TTY
>         TIME CMD
>0 R   501  4306  4279  0  75   0    -   778 -     
>pts/0    00:00:00 ps
>  
>

The difference between 'ps -al' and 'ps -Al' (note the uppercase A) is 
that ps -Al shows all of the processes running on the computer - whereas 
ps -al only shows the processes running on the terminal that ran the 
command. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
