From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: process time limit?
Date: Thu, 27 Jun 2002 02:52:17 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0206270140510.10990-100000@orthanc.lemmerling.net>
References: <200206262336.g5QNacfR020637@franklin.icok.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206262336.g5QNacfR020637@franklin.icok.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: Jim Reimer <wa5rrh@arrl.net>

On Wed, 26 Jun 2002, Jim Reimer wrote:

> I have a script run by cron once every half hour which
> gets a RADAR image, does some manipulation on the file,
> and stores it.  It's been running fine for a few weeks
> now.
> 
> However, when I got home from work today, the computer
> was *very* sluggish, and 'ps' showed many many instances
> of both the script and 'giftopnm' (one of the programs
> used in the script).  I don't know what went wrong, but
> giftopnm was hanging and not allowing the script to
> complete.
> 
> So - is there any way to limit the amount of time a
> cronjob (or any other job) can live?

Check out if the previous executed script is still running, if so,
kill 'giftopnm' first or don't start a second one.

something like this:
#!/bin/bash

tempfile="/tmp/tmpfile_giftopnm"

if [ test -r $tempfile ]; then 
	exit
	# or kill the troublemaker:
	kill `pidof giftopnm`
	# or: 
	killall giftopnm
fi

touch $tempfile

<your part of the script here>

rm $tempfile



If you want to make sure the cronjob doesn't kill a giftopnm program the
cronjob didn't start, you'll have to make sure the knows the PID of that
program or script (which was started by cron). You'll probarly have to use
the temperary file to store the PID.


If you want to check it more often, created a new cronjob for this (and a
seperate script), about 10 minutes or so after the main-script started.


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
