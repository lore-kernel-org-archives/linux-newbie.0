From: Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca>
Subject: Re: /cdrom fails to unmount
Date: Tue, 22 Jul 2003 12:28:25 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.43.0307221209260.20338-100000@perpugilliam.csclub.uwaterloo.ca>
References: <5.1.0.14.1.20030722084626.01eeb000@celine>
Reply-To: dzlotnik@uwaterloo.ca
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030722084626.01eeb000@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> Your fanciful responses from the computer are cute but, in practice,
> distracting and even a bit confusing. In particular, when you report ...

Well, at least they were cute...

> ... does the "Okay" stand in for the fact that mplayer *begins* playing the
> file or *finishes* playing the file?


First of all, thank you for your suggestions and help, everyone. I
got it unmounted (fuser helped).

Second, has anyone ever encountered the following:

ADSL service dies (connection reset).

I proceed to do the following (cdrom is mounted, accord. to fuser no
processes are using it)
alpha:/cdrom# adsl-start
. Connected!

alpha:/cdrom#fuser /cdrom/
/cdrom/:              2176c  2485c  2513c  2515c

The processes are: (incidentally, this is all being done as root)

root      2176  0.0  0.4  2308 1392 pts/2    S    10:42   0:00 bash
root      2485  0.0  0.3  2080 1048 pts/2    S    12:18   0:00 /bin/sh
/usr/sbin/adsl-connect
root      2513  0.0  0.2  1936  912 ?        S    12:18   0:00
/usr/sbin/pppd pty /usr/sbin/pppoe -p /var/run/pppoe.conf-adsl.pid.pppoe
-I eth0 -T 80 -U  -m 1412    noi
root      2515  0.0  0.1  1212  440 ?        S    12:18   0:00
/usr/sbin/pppoe -p /var/run/pppoe.conf-adsl.pid.pppoe -I eth0 -T 80 -U -m
1412

For some obscure reason, my running adsl-start from /cdrom has mated the
processes to the directory.

Is that supposed to happen?

Additional info: System is standalone, no NFS or other users present.

Dan



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
