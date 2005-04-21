From: Dan Bentson-Royal <dbentson@lcsd.k12.wa.us>
Subject: Cron Problem for squidGuard - LTSP 4.0.2 (FC3)
Date: Thu, 21 Apr 2005 09:05:01 -0700
Message-ID: <4267CF2D.20305@lcsd.k12.wa.us>
Reply-To: dbentson@lcsd.k12.wa.us
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>, eharrison@mail.mesd.k12.or.us

I seem to be having trouble running a daily cron job. This seems to be 
the only job that has trouble - nothing else has the "BAD FILE MODE" 
comment.

I googled the problem and found a suggestion that BAD FILE MODE probably 
means permissions trouble - but when I checked, it all looks fine. I'm 
looking for suggestions on how to proceed.

Here is the error message from my cron log:
      [root@localhost ~]# more /var/log/cron | grep squidGuard
      Apr 18 17:11:31 localhost crond[2125]: (*system*) BAD FILE MODE 
         (/etc/cron.d/squidGuard)
      Apr 19 11:11:11 localhost crond[2288]: (*system*) BAD FILE MODE 
(/etc/cron.d/squidGuard)
      Apr 19 11:17:39 localhost crond[2371]: (*system*) BAD FILE MODE 
(/etc/cron.d/squidGuard)
      Apr 19 13:29:07 localhost crond[2190]: (*system*) BAD FILE MODE 
(/etc/cron.d/squidGuard)
      [root@localhost ~]# ls -l /etc/cron.daily/
      total 92
      -rwxr-xr-x  1 root root  418 Nov 19 12:21 00-makewhatis.cron
      -rwxr-xr-x  1 root root  135 Aug 18  2004 00webalizer
      -rwxr-xr-x  1 root root  276 Sep 28  2004 0anacron
      -rw-r--r--  1 root root  797 Oct 19  2004 certwatch
      -rwxr-xr-x  1 root root  180 Oct 19  2004 logrotate
      -rwxr-xr-x  1 root root 2133 Nov 23 07:29 prelink
      -rwxr-xr-x  1 root root  104 Nov  1 18:54 rpm
      -rwxr-xr-x  1 root root   82 Oct 20  2004 slocate.cron
      -rwxr-xr-x  1 root root   56 Apr 16 20:00 squidGuard
      -rwxr-xr-x  1 root root  286 Aug 13  2004 tmpwatch
      -rwxr-xr-x  1 root root  136 Feb 21 07:38 yum.cron
      [root@localhost ~]#
I am running LTSP 4.2.0 - FC3

Any suggestions as to where the problem lies?

-- 
***NOTE***
Whenever you make a request for LCSD technical assistance, please be 
sure to report this problem to our helpdesk at:
      http://help1.lcsd.k12.wa.us/helpdesk/

Dan Bentson-Royal
La Center Schools

      What are employers looking for in an employee?

      Come to work every day and be on time.
      Make smart decisions.
      Follow directions.
      Concentrate on your work and care about the quality of your work.
      Read, write, and calculate well.
      Recognize problems and find solutions.
      Finish a job when you're supposed to without sacrificing quality.
      Be honest and dependable.
      Take the lead and work hard.
      Communicate well and get along with other people
      Dress properly and practice good grooming.
      Be cooperative.
      Have a positive attitude.

      From the Northwest Pennsylvania Industrial Resource Center, Inc.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
