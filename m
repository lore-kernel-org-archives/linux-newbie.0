From: Ray Olszewski <ray@comarre.com>
Subject: Re: Print Queue Disappearing
Date: Fri, 15 Nov 2002 09:58:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021115094654.02130c50@celine>
References: <200211150642.gAF6g8F02109@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211150642.gAF6g8F02109@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

I didn't see any other responses, so let me at least tell you that no, 
there is no "clock" aborting jobs.

What actually is going on is impossible to tell from what you reported, but 
I'd guess a communication failure between the host and the printer. Without 
a fairly complete description of the printing setup, I can't really suggest 
anything specific. If it only occurs with jobs that normally take a long 
time to print, I'd look for a problem involving interfaction between the 
printer's own memory and handshaking with the host.

But ... just how slow is this printer? The queue listing you report below 
says the job that fails is 861984 bytes, which isn't very big at all by 
today's standards ... yes it is long if it is straight text, but it is 
minuscule in memory requirements, and not much as a Postscript job. Is the 
printer really printing this job for an hour and 40 minutes before the 
problem occurs?

At 02:42 PM 11/15/02 +0800, Peter wrote:
>Hi,
>
>In RH7.3 documents place for printing are being aborted after a certain time
>and if large documents are being printed printing suddenly stops. When then
>checking lpq it is empty which is annoying.
>
>This is what I get with lpq at 10:03:
>Printer: lpd1@philonline
>  Queue: 1 printable job
>  Server: pid 1164 active
>  Unspooler: pid 1165 active
>  Status: IF filter 'mf_wrapper' filter msg - 'foomatic-gswrapper: gs
>'-dBATCH' '-dSAFER' '-dQUIET' '-dNOPAUSE' '-sDEVICE=epsonc' '-r180x180'
>'-sOutputFile=/dev/fd/3' '/dev/fd/0' 3>&1 1>&2' at 10:03:00.384
>  Rank   Owner/ID                  Class Job Files                 Size Time
>active pfheiss@philonline+163       A   163 (STDIN)             861984
>10:02:59
>
>and later at 11:43
>Printer: lpd1@philonline
>  Queue: no printable jobs in queue
>  Server: no server active
>  Status: job 'pfheiss@philonline+163' error 'aborting operations' at
>11:43:00.386
>  Rank   Owner/ID                  Class Job Files                 Size Time
>error  pfheiss@philonline+163       A   163 ERROR: aborting operations
>
>Why would that be? Is there somewhere a clock running to keep documents only
>so long in the print queue and if so can that be stopped. I found nothing in
>the HOWTO for printing.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
