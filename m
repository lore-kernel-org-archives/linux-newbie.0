From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: kswapd (?!) error
Date: Sat, 5 Oct 2002 13:45:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02100513453307.00234@unix.pa3gcu>
References: <200210050816.03883.g38@rdsbv.ro> <02100508295303.00234@unix.pa3gcu> <200210051628.50770.g38@rdsbv.ro>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210051628.50770.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Petre Bandac <g38@rdsbv.ro>, linux-newbie@vger.kernel.org

On Saturday 05 October 2002 13:28, Petre Bandac wrote:
> petre@k:~$ uname -a
> Linux k 2.4.18-HTB #4 Wed Sep 25 02:47:50 EEST 2002 i686 unknown
>
> it is a Slackware 8.1 installed a few weeks ago
>
> I have 256 MB RAM and 200 MB swap space
>
> I stay away for the experimental kernels, as what I want from my system is
> stability.
>
> the uptime of the machine was at that time 4 days, 21:14:36. It is my home
> box, I run x-window on it (KDE), but at that time x-window wasn't running,
> so the only processes runing were those required by the system, plus apache
> plus http (below I'll list them). The only reason which comes to my mind is
> that at the time the crash occured I was doing a ftp upload on the machine
> @ ~200 KB (yes, kilo Bytes). If it makes any difference, I'm connected
> through a LanCity cable modem.

Then may i suggest trying the data transfer again, with of course the same 
things running as you have shown with ps below.

>
> I shall look at the file you mentioned, richard, thank you, though I would
> like to have some opinions on what caused this error (one of the few
> "fatal" errors I have seen on linux machines yet).

I suggest you read the whole piece about solving problems as there are 
several things you can do first before you go reading about ksymoops.

>
>
> petre
>
>
>   PID TTY      STAT   TIME COMMAND
>     1 ?        S      0:03 init
>     2 ?        SW     0:00 [keventd]
>     3 ?        SW     0:00 [kapmd]
>     4 ?        SWN    0:00 [ksoftirqd_CPU0]
>     5 ?        SW     0:00 [kswapd]
>     6 ?        SW     0:00 [bdflush]
>     7 ?        SW     0:00 [kupdated]
>     8 ?        SW     0:00 [kreiserfsd]
>    52 ?        SW     0:00 [eth0]
>    55 ?        S      0:00 /usr/sbin/syslogd
>    58 ?        S      0:00 /usr/sbin/klogd -c 3 -x
>    99 ?        S      0:00 /usr/sbin/inetd
>   101 ?        S      0:00 /usr/local/sbin/sshd
>   108 ?        S      0:00 /usr/sbin/crond -l10
>   110 ?        S      0:00 /usr/sbin/atd -b 15 -l 1
>   114 ?        S      0:00 /usr/sbin/apmd
>   116 ?        S      0:00 gpm -m /dev/mouse -t ps2
>   132 ?        S      0:00 /usr/local/apache/bin/httpd
>   134 tty1     S      0:00 -bash
>   135 tty2     S      0:00 -bash
>   136 tty3     S      0:00 /sbin/agetty 38400 tty3 linux
>   137 tty4     S      0:00 /sbin/agetty 38400 tty4 linux
>   138 tty5     S      0:00 /sbin/agetty 38400 tty5 linux
>   139 ?        S      0:00 /usr/local/sbin/uptimed
>   140 tty6     S      0:00 /sbin/agetty 38400 tty6 linux
>   141 ?        S      0:00 /usr/local/apache/bin/httpd
>   142 ?        S      0:00 /usr/local/apache/bin/httpd
>   143 ?        S      0:00 /usr/local/apache/bin/httpd

{big snip}

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
