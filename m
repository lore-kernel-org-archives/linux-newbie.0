From: whitnl73@juno.com
Subject: Re: gcc version conflict
Date: Thu, 9 Jan 2003 23:01:34 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030109.230725.134685824.0.whitnl73@juno.com>
References: <00f901c2b858$a725cb60$6400a8c0@00arc>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00f901c2b858$a725cb60$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: yoni@kallay.net
Cc: linux-newbie@vger.kernel.org

On Thu, 9 Jan 2003, Jonathan Kallay wrote:

> Hi all,
>   I'm trying to compile the kernel module for some NVidia drivers.  I'm
> getting an error message saying that I'm compiling a module with a different
> version of the compiler than the one used to compile the kernel (gcc 2.95.4
> is what's installed; the kernel version is 2.2.20 and at one point I was
> able to check the compiler version that compiled it but I can't remember how
> I did it).  What's the best way to work around this problem?
>
[whit@giftie whit]$ cat /proc/version
Linux version 2.4.13 (whit@giftie) (gcc version 2.95.3 20010315 (release)) #1 Tu
e Oct 30 22:04:20 EST 2001
[whit@giftie whit]$ tty
/dev/vc/5
[whit@giftie whit]$ cat /usr/local/bin/trail
#!/bin/sh
/bin/sed 's/ *$//g' $@
[whit@giftie whit]$ cat /dev/vcs5|fold|trail>oops

I have devfs and devfsd, so I can use either /dev/vcc/<n> or /dev/vcs<n>
but the tty command reports the real (devfs) device name.  Please don't
be confused if tty reports /dev/vcs<n>

I guess the easiest way to work around it would be to recompile the
kernel and modules with the gcc you have installed.

Lawson
--
---oops---
There are many ways.  Some day we will write all the ways in a big
book.  We will then burn the big book.  - M. K. Tulley



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
