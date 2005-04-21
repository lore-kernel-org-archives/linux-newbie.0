From: Dan Bentson-Royal <dbentson@lcsd.k12.wa.us>
Subject: Re: Cron Problem for squidGuard - LTSP 4.0.2 (FC3)
Date: Thu, 21 Apr 2005 09:40:10 -0700
Message-ID: <4267D76A.2090809@lcsd.k12.wa.us>
References: <4267CF2D.20305@lcsd.k12.wa.us> <4a618d0805042109167b3627b6@mail.gmail.com>
Reply-To: dbentson@lcsd.k12.wa.us
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4a618d0805042109167b3627b6@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

Arturas,

Here are the contents of squidGuard in /etc/cron.daily/ and
/etc/cron.d/squidGuard

---begin clip---
[root@localhost ~]# more /etc/cron.daily/squidGuard
#!/bin/bash
nice /usr/sbin/update_squidguard_blacklists
[root@localhost ~]# nice /usr/sbin/update_squidguard_blacklists
[root@localhost ~]# more /etc/cron.d/squidGuard
/etc/cron.d/squidGuard: No such file or directory
[root@localhost ~]# tail -n 100 /usr/sbin/update_squidguard_blacklists
#!/bin/sh

TARGET=/var/squidGuard/blacklists

cd $TARGET || exit

# only run if squidGuard is active!
[ "`ps auxw | grep squid[G]uard`" ] || exit

rsync -az squidguard.mesd.k12.or.us::filtering $TARGET

for DIR in `ls $TARGET`
do
         if [ -f $DIR/domains.include ]
         then
                 TMP=$RANDOM
                 cat $DIR/domains $DIR/domains.include | sort | uniq > 
$DIR/domains.$TMP
                 mv -f $DIR/domains.$TMP $DIR/domains
         fi
         if [ -f $DIR/urls.include ]
         then
                 TMP=$RANDOM
                 cat $DIR/urls $DIR/urls.include | sort | uniq > 
$DIR/urls.$TMP
                 mv -f $DIR/urls.$TMP $DIR/urls
         fi
done

/usr/sbin/squidGuard -c /etc/squid/squidGuard.conf  -C all
# /usr/sbin/squidGuard -c /etc/squid/squidGuard.conf  -u

chown -R squid.squid $TARGET
chown -R squid.squid /var/log/squidGuard/

sleep 5s

/usr/bin/killall -HUP squid
---end clip---
Arturas Moskvinas wrote:
>>      -rwxr-xr-x  1 root root   56 Apr 16 20:00 squidGuard
> 
> 
> Can you write the contents of squidGuard in /etc/cron.daily/ and
> /etc/cron.d/squidGuard
> 
> 
> Arturas Moskvinas
> 
> 

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
      Communicate well and get along with other people...especially 
customers.
      Dress properly and practice good grooming.
      Be cooperative.
      Have a positive attitude.

      From the Northwest Pennsylvania Industrial Resource Center, Inc.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
