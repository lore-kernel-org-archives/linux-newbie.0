From: Ray Olszewski <ray@comarre.com>
Subject: Re: gnome-search-tool database updating
Date: Tue, 11 Feb 2003 12:04:32 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030211115354.020f95c0@celine>
References: <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302111940.h1BJeHBN007863@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org

At 02:40 PM 2/11/03 -0500, Haines Brown wrote:
> > If "slocate" is similar to "locate" in its operation, updating the 
> database
> > (using its analog to "updatedb") should be scheduled as a cron job
>
>Indeed, cron.daily does have:
>
>renice +19 -p $$ >/dev/null 2>&1
>/usr/bin/updatedb -f "nfs,smbfs,ncpfs,proc,devpts" -e
>"/tmp,/var/tmp,/usr/tmp,/afs,/net"
>
>I'm not sure of the syntax here, but off hand this looks more like a
>reprioritization of processes than a command to rebuild a
>database. The updatedb file is a binary, so don't know if it has a
>scheduler.

My setup here looks quite different, but I think that is just because 
Debian uses /etc/updatedb.conf, which contains a lot of the stuff that your 
setup puts in command-line switches. Sorting out the details of 
command-line switches is just an RTFM problem, though, which you can do as 
readily as I. But those entries are all filesystem types and paths, not 
process names. The renice part is just so the database rebuild runs as a 
low priority, background task.

>In any case, /var/log/cron does not have an entry fpr updatedb.

It won't, becsuse cron (or anacron or whatever) is not running updatedb 
*directly*. It is running a script that in turn runs updatedb. (On my 
system, the relevant entry, in syslog (Debian uses different logging 
defaults)  is  "Feb 11 06:25:01 waverly /USR/SBIN/CRON[11485]: (root) CMD 
(test -e /usr/sbin/anacron || run-parts --report /etc/cron.daily)". YMMV as 
to the details, but start by checking /etc/crontab .

>I do run continuously.
>
>[thanks for the info, Ray, that my header is ok]
>
>Haines

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
