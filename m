From: beolach@juno.com
Subject: Re: Cannot login as non-root user
Date: Wed, 16 Jul 2003 03:01:20 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030715.200131.754.324122@webmail06.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


>Basic questions:
>
>1. What is root's shell? Is it /bin/bash or /bin/sh? (If the latter, is 
>/bin/sh a symlink to /bin/bash? It usually is but might not be in your >case.)

It is /bin/bash (and /bin/sh is symlink to same).

>2. What are permissions on /bin? They should be 755 (rwxr-xr-x).

They are. (As are permisions on /, suggested by someone else).

>3. This feels like a long shot, but might there be a permissions >problem 
>with one of the shared libraries bash uses? Check your system with "ldd 
>/bin/bash". Mine shows these libraries involved:
>
>      autovcr@kuryakin:~$ ldd /bin/bash
>              libncurses.so.5 => /lib/libncurses.so.5 (0x40018000)
>              libdl.so.2 => /lib/libdl.so.2 (0x40055000)
>              libc.so.6 => /lib/libc.so.6 (0x40058000)
>              /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)

root@IG-88:~# ldd /bin/bash
        libtermcap.so.2 => /lib/libtermcap.so.2 (0x40025000)
        libdl.so.2 => /lib/libdl.so.2 (0x4002a000)
        libc.so.6 => /lib/libc.so.6 (0x4002d000)
        /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)
Permissions on all are 755.

>4. Another long shot: how full is /var ? /tmp ? / ? Might bash be >unable to 
>create a log or scratch file, or login a wtmp entry, as an ordinary >user 
>that it can as root (since root can use reserved areas of filesystems)?

Only have one filesystem, /, wich is 11% full (2.7GB of 22GB).

>5. And another: might some filesystem be mounted read only?

Nope.

>6. This sounds very non-Linux, but ... have you rebooted? It's just >barely 
>possible that some kernel pointer got corrupted somehow and you need to 
>reload a fresh kernel to get the permissions read properly.

Yes we have. He dual-boots M$ Windows, and usually plays games under
Windows for most of the time he's on his computer.

>If none of this gets you anywhere, and no one else comes up with >something 
>better, next time tell us in more detail waht you have been doing to >get X 
>working. Just editing XF86Config-4? Or fiddlign with other parts of the 
>system too?

Mainly editing XF86Config-4.  Also attempting to install the ATI Radeon
drivers off of ATI's site.  This might be somewhing to worry about, as
the drivers were only available in RPMs, and Slackware doesn't nativly
support RPMs.  I used Alien to convert it to a Slackware tgz package,
and it seemed to install fine.

Just solved it.  Thought popped into my head, what's the permission on
the /lib directory? 700.  Changed to 755, everything works fine.

Thank's for the help everyone,
Conway S. Smith


________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
