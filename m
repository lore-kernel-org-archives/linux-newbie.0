From: Peter <pfheiss@philonline.com>
Subject: Re: No More Logrotate
Date: Tue, 15 Apr 2003 10:07:42 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304150207.h3F27gD03158@philonline.com>
References: <5.1.0.14.1.20030414084230.01e990b8@celine>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 14 Apr 2003 08:53:18 MST." 
 <5.1.0.14.1.20030414084230.01e990b8@celine>
Content-ID: <3155.1050372462.1@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray. Just when I had finished all the stuff below, your hint that the 
message comes from syslog made me look again and I found the file 
/etc/logrotate.d/syslog which read among others /var/log/cron. I removed this 
entry and logrotate went to work w/o error message and logrotating even that 
cron file.

ray@comarre.com said:
> 1. Is /var/log/cron a file or a directory? If the latter, what files
> does  it contain?

 It's a file containing all the cron stuff from crontab, user and root.

# tail /var/log/cron
Apr 15 08:45:01 philonline CROND[1812]: (pfheiss) CMD (cd 
/usr/local/saytime/sounds/; ./saytime.sh)
Apr 15 08:50:00 philonline CROND[1841]: (root) CMD (   /sbin/rmmod -as) 
Apr 15 08:50:00 philonline CROND[1842]: (root) CMD (/usr/lib/sa/sa1 1 1) 
Apr 15 09:00:00 philonline CROND[1966]: (root) CMD (   /sbin/rmmod -as) 
Apr 15 09:00:00 philonline CROND[1967]: (root) CMD (/usr/lib/sa/sa1 1 1) 
Apr 15 09:00:00 philonline CROND[1968]: (pfheiss) CMD (play 
./sound/chimes.wav)
Apr 15 09:01:00 philonline CROND[1978]: (root) CMD (run-parts 
/etc/cron.hourly)
Apr 15 09:10:00 philonline CROND[2012]: (root) CMD (   /sbin/rmmod -as) 
Apr 15 09:10:00 philonline CROND[2013]: (root) CMD (/usr/lib/sa/sa1 1 1) 
Apr 15 09:15:00 philonline CROND[2036]: (pfheiss) CMD (cd 
/usr/local/saytime/sounds/; ./saytime.sh)

ray@comarre.com said:
> 2. Just to be sure -- when you run "logrotate --force /etc/
> logrotate.conf",  you get an error at the console that reads *exactly*
> "error: syslog:1  duplicate log entry for /var/log/cron"? That is, you
> get an error from  syslog, not from logrotate (or even syslogd)? And
> you get no other output  to the screen

Correct that is the exact message with no other output to the screen.

ray@comarre.com said:
> 4. On my systems, logrotate runs as root.

It only runs as root on my system as well.
-rwxr-xr-x    1 root     root        32840 Apr 16  2002 /usr/sbin/logrotate

ray@comarre.com said:
> 3. It is possible to run logrotate with a -d (debug) flag. Does that
> generate any useful info?

# /usr/sbin/logrotate -d /etc/logrotate.conf
reading config file /etc/logrotate.conf
including /etc/logrotate.d
Ignoring named.rpmnew, because of .rpmnew ending
Ignoring rpm.rpmnew, because of .rpmnew ending
reading config file cron
reading config info for /var/log/cron 
reading config file ftpd
reading config info for /var/log/xferlog 
reading config file linuxconf
reading config info for /var/log/htmlaccess.log 
reading config info for /var/log/netconf.log 
reading config file mgetty
reading config info for /var/log/mgetty.log.tty* 
reading config file named
reading config info for /var/log/named.log 
reading config file rpm
reading config info for /var/log/rpmpkgs 
reading config file sendfax
reading config info for /var/log/sendfax.log 
reading config file slrnpull
reading config info for /var/spool/slrnpull/log 
reading config file snmpd
reading config info for /var/log/snmpd.log 
reading config file sudo
reading config info for /var/log/sudo.log 
reading config file syslog
error: syslog:1 duplicate log entry for /var/log/cron

There is a file /etc/syslog.conf, however, no /var/log/syslog file as in 
Slackware.
I put one there now which did not change anything, it just stays empty.

And to your final 5th question what is KRUD Linux somebody replied where to 
find it. They produce monthly the latest versions for RedHat to which one can 
subscribe for one year or order them as needed. This is very convenient if one 
has slow phone lines which will make updates by downloading a near 
impossibility.

Regards

-- 
Peter
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
