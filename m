From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: /cdrom fails to unmount
Date: Wed, 23 Jul 2003 16:58:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307231658.02812.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.43.0307221209260.20338-100000@perpugilliam.csclub.uwaterloo.ca>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0307221209260.20338-100000@perpugilliam.csclub.uwaterloo.ca>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dzlotnik@uwaterloo.ca, Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca>, linux-newbie@vger.kernel.org

On Tuesday 22 July 2003 18:28, Dan Zlotnikov wrote:

> I proceed to do the following (cdrom is mounted, accord. to fuser no
> processes are using it)
> alpha:/cdrom# adsl-start
> . Connected!
>
> alpha:/cdrom#fuser /cdrom/
> /cdrom/:              2176c  2485c  2513c  2515c
>
> The processes are: (incidentally, this is all being done as root)
>
> root      2176  0.0  0.4  2308 1392 pts/2    S    10:42   0:00 bash
> root      2485  0.0  0.3  2080 1048 pts/2    S    12:18   0:00 /bin/sh
> /usr/sbin/adsl-connect
> root      2513  0.0  0.2  1936  912 ?        S    12:18   0:00
> /usr/sbin/pppd pty /usr/sbin/pppoe -p /var/run/pppoe.conf-adsl.pid.pppoe
> -I eth0 -T 80 -U  -m 1412    noi
> root      2515  0.0  0.1  1212  440 ?        S    12:18   0:00
> /usr/sbin/pppoe -p /var/run/pppoe.conf-adsl.pid.pppoe -I eth0 -T 80 -U -m
> 1412
>
> For some obscure reason, my running adsl-start from /cdrom has mated the
> processes to the directory.
>
> Is that supposed to happen?

It does not mate the process to that directory as such, the system keeps a 
track of what is started and where it was started from.
You can find all associated process in the /proc filesystem under PID's shown 
by fuser /cdrom

As someone else mentioned you can try umount -l providing you use a kernel 
higher than 2.4.10.

> Additional info: System is standalone, no NFS or other users present.
>
> Dan
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
