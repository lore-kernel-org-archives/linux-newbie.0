From: Peter <pfheiss@philonline.com>
Subject: Print Queue Disappearing
Date: Fri, 15 Nov 2002 14:42:07 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211150642.gAF6g8F02109@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

In RH7.3 documents place for printing are being aborted after a certain time 
and if large documents are being printed printing suddenly stops. When then 
checking lpq it is empty which is annoying.

This is what I get with lpq at 10:03:
Printer: lpd1@philonline
 Queue: 1 printable job
 Server: pid 1164 active
 Unspooler: pid 1165 active
 Status: IF filter 'mf_wrapper' filter msg - 'foomatic-gswrapper: gs
'-dBATCH' '-dSAFER' '-dQUIET' '-dNOPAUSE' '-sDEVICE=epsonc' '-r180x180'
'-sOutputFile=/dev/fd/3' '/dev/fd/0' 3>&1 1>&2' at 10:03:00.384
 Rank   Owner/ID                  Class Job Files                 Size Time
active pfheiss@philonline+163       A   163 (STDIN)             861984
10:02:59

and later at 11:43
Printer: lpd1@philonline
 Queue: no printable jobs in queue
 Server: no server active
 Status: job 'pfheiss@philonline+163' error 'aborting operations' at
11:43:00.386
 Rank   Owner/ID                  Class Job Files                 Size Time
error  pfheiss@philonline+163       A   163 ERROR: aborting operations

Why would that be? Is there somewhere a clock running to keep documents only 
so long in the print queue and if so can that be stopped. I found nothing in 
the HOWTO for printing.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
