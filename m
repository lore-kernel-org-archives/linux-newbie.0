From: Neo Wee Teck <weeteck@linux.net>
Subject: Re: Process information?
Date: Tue, 9 Dec 2003 16:55:06 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031210005506.8C0347268@sitemail.everyone.net>
Reply-To: weeteck@linux.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: whitnl73@juno.com, weeteck@linux.net
Cc: linux-newbie@vger.kernel.org

But in redhat's kernel, even with ps ax, it shows [httpd]



--- whitnl73@juno.com wrote:
On Mon, 8 Dec 2003, Neo Wee Teck wrote:

> Hi,
>
>   I saw some difference in the process info when using RedHat kernel 2.4.20-8 and the kernel from kernel.org (2.4.23)
>
> With Redhat's kernel, process show something like this
>
> www      10186  0.0  0.1  2536 1272 ?        S    Dec08   0:01 [httpd]
> www      10187  0.0  0.1  2536 1272 ?        S    Dec08   0:01 [httpd]
> www      10188  0.0  0.1  2536 1276 ?        S    Dec08   0:01 [httpd]
>
> But with 2.4.23 kernel it shows
>
> www      5673  0.0  0.1  2536 1272 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd
> www      5674  0.0  0.1  2536 1272 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd
> www      5675  0.0  0.1  2536 1276 ?        S    Dec08   0:01 /usr/local/apache/bin/httpd
>
> Any configuration in the kernel that i missed out? I prefer the way processes are shown in Redhat's kernel but would like to use the 2.4.23's kernel.
>
> Cheers
>
>     Neo

try adding c to whatever ps options you use.

[whit@giftie whit]$ ps -C xfstt u
USER       PID %CPU %MEM   VSZ  RSS TTY      STAT START   TIME COMMAND
root       510  0.0  0.9  1896  740 ?        S    Dec02   0:00 /usr/X11R6/bin/xf
root     10382  0.0  0.9  6504  764 ?        S    Dec03   0:00 /usr/X11R6/bin/xf
[whit@giftie whit]$ ps -C xfstt uc
USER       PID %CPU %MEM   VSZ  RSS TTY      STAT START   TIME COMMAND
root       510  0.0  0.9  1896  740 ?        S    Dec02   0:00 xfstt
root     10382  0.0  0.9  6504  764 ?        S    Dec03   0:00 xfstt
[whit@giftie whit]$ tty
/dev/vc/4
[whit@giftie whit]$ cat /dev/vcc/4|fold|trail >oops

This is nothing to do with the kernel patch level, I think.

Lawson
--
---oops---



________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!


_____________________________________________________________
Linux.Net -->Open Source to everyone
Powered by Linare Corporation
http://www.linare.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
