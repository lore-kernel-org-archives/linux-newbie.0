From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: gnome-search-tool database updating
Date: Tue, 11 Feb 2003 14:40:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302111940.h1BJeHBN007863@hartford-hwp.com>
References: <5.1.0.14.1.20030211080840.020f3ba0@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030211080840.020f3ba0@celine> (message from Ray
	Olszewski on Tue, 11 Feb 2003 08:20:26 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> If "slocate" is similar to "locate" in its operation, updating the database 
> (using its analog to "updatedb") should be scheduled as a cron job

Indeed, cron.daily does have:

renice +19 -p $$ >/dev/null 2>&1
/usr/bin/updatedb -f "nfs,smbfs,ncpfs,proc,devpts" -e
"/tmp,/var/tmp,/usr/tmp,/afs,/net" 

I'm not sure of the syntax here, but off hand this looks more like a
reprioritization of processes than a command to rebuild a
database. The updatedb file is a binary, so don't know if it has a
scheduler.

In any case, /var/log/cron does not have an entry fpr updatedb.

I do run continuously.

[thanks for the info, Ray, that my header is ok]

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
