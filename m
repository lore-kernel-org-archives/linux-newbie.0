From: Peter <pfheiss@philonline.com>
Subject: Re: Print Queue Disappearing
Date: Sun, 17 Nov 2002 11:26:33 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211170326.gAH3QXK01777@philonline.com>
References: <5.1.0.14.1.20021115094654.02130c50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 15 Nov 2002 09:58:01 PST."
             <5.1.0.14.1.20021115094654.02130c50@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux <linux-newbie@vger.kernel.org>


ray@comarre.com said:
> But ... just how slow is this printer? The queue listing you report
> below  says the job that fails is 861984 bytes, which isn't very big
> at all by  today's standards ... yes it is long if it is straight
> text, but it is  minuscule in memory requirements, and not much as a
> Postscript job. Is the  printer really printing this job for an hour
> and 40 minutes before the  problem occurs

The file size does not matter. Even putting a 5Kb size document into the print 
queue will be aborted after less then 2 hours if not printed.
The mentioned text file of 861984 bytes has about 160 pages. My printer prints 
about 100 pages an hour of good reading quality (size 9, 110 col). Usually 
shortly after that printing stops and the print queue is empty. I then have to 
delete the printed portion to finish printing the rest by which the paginating 
starts at 1 again.

Here are some outputs of lpq. The print job 778 was from last night and 
checked this morning. It is aborting the operation and yet can be dequeued.
On print job 305 when checked after 50 minutes the Status as well as the Rank 
had changed. On the Rank it seems to indicates that there is some clock 
running. After 70 min it says (4200 sec)

 lpq
Printer: lpd1@philonline
 Queue: 1 printable job
 Server: pid 1306 active
 Unspooler: pid 1307 active
 Status: IF filter 'mf_wrapper' filter msg - 'closed *main::KID3' at 
09:23:05.952
 Rank   Owner/ID                  Class Job Files                 Size Time
active pfheiss@philonline+305       A   305 /tmp/xedtmp_1303_0    4172 09:23:02
error  pfheiss@philonline+778       A   778 ERROR: aborting operations

 lprm 778
Printer lpd1@philonline:
  checking perms 'pfheiss@philonline+778'
  dequeued 'pfheiss@philonline+778'

 lpq
Printer: lpd1@philonline
 Queue: 1 printable job
 Server: pid 1306 active
 Unspooler: pid 1307 active
 Status: waiting for subserver to exit at 10:10:02.799
 Rank   Owner/ID                  Class Job Files                 Size Time
stalled(3157sec) pfheiss@philonline+305 A 305 /tmp/xedtmp_1303_0  4172 09:23:02

 lpq
Printer: lpd1@philonline
 Queue: 1 printable job
 Server: pid 1306 active
 Unspooler: pid 1307 active
 Status: waiting for subserver to exit at 10:50:02.969
 Rank   Owner/ID                  Class Job Files                 Size Time
stalled(5691sec) pfheiss@philonline+305 A 305 /tmp/xedtmp_1303_0  4172 09:23:02

lpq
Printer: lpd1@philonline
 Queue: no printable jobs in queue
 Server: no server active
 Status: job 'pfheiss@philonline+305' error 'aborting operations' at 
11:03:05.964
 Rank   Owner/ID                  Class Job Files                 Size Time
error  pfheiss@philonline+305       A   305 ERROR: aborting operations

 lprm 305
Printer lpd1@philonline:
  checking perms 'pfheiss@philonline+305'
  dequeued 'pfheiss@philonline+305

Any explanations?

Regards


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
