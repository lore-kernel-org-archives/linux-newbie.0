From: Ray Olszewski <ray@comarre.com>
Subject: Re: No More Logrotate
Date: Mon, 14 Apr 2003 08:53:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030414084230.01e990b8@celine>
References: <200304141616.08613.pfheiss@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304141616.08613.pfheiss@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

Peter --

Unfortunately, organization of logs is one of the more distro-dependant 
things in Linux. Debian doesn't have a file (or directory) called 
/var/log/cron, so I can't immediately diagnose your problem from the 
information you provided. Another RH 7.3 user may be able to, though, you 
you might want to wait a bit to see if you get a more useful response from 
someone else  before bothering with these questions.

If not ...

1. Is /var/log/cron a file or a directory? If the latter, what files does 
it contain?

2. Just to be sure -- when you run "logrotate --force /etc/logrotate.conf", 
you get an error at the console that reads *exactly* "error: syslog:1 
duplicate log entry for /var/log/cron"? That is, you get an error from 
syslog, not from logrotate (or even syslogd)? And you get no other output 
to the screen?

3. It is possible to run logrotate with a -d (debug) flag. Does that 
generate any useful info?

4. On my systems, logrotate runs as root. Is that true on your system as 
well? If not, under what userid does it run? Might there be a permissions 
problem with some file it needs to rotate/

5. What is "KRUD Linux"?

At 04:16 PM 4/14/2003 +0800, Peter wrote:
>Hi,
>
>after I upgraded to a newer RH7.3 version from KRUD Linux logrotate will not
>rotate the log files any longer.
>
>Instead I get the following error message in my mail:
>
>error: syslog:1 duplicate log entry for /var/log/cron
>
>Giving the command logrotate --force /etc/logrotate.conf I get the same error
>message.
>
>I have not changed /etc/logrotate.conf or crontab of root.
>
>I checked the pertinent cron.daily/weekly files and can't find anything
>  wrong.
>
>How could this be resolved?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
