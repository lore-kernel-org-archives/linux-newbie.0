From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: gnome-search-tool database updating
Date: Wed, 12 Feb 2003 09:01:46 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302121401.h1CE1kFQ013620@hartford-hwp.com>
References: <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine> <5.1.0.14.1.20030211115354.020f95c0@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030211115354.020f95c0@celine> (message from Ray
	Olszewski on Tue, 11 Feb 2003 12:04:32 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Re. my effort to update the slocate database and figure out why that's
not happening automatically. 

> My setup here looks quite different, but I think that is just
> because Debian uses /etc/updatedb.conf, which contains a lot of the
> stuff that your setup puts in command-line switches.

Red Hat 8.0 has /etc/updatedb.conf:

  PRUNEFS="devpts NFS nfs afs proc smbfs autofs auto iso9660"
  PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs /net" 
  export PRUNEFS
  export PRUNEPATHS

> Sorting out the details of command-line switches is just an RTFM
> problem, though, which you can do as readily as I.

Yes, but what command am I looking for? The man updatedb did not
explicitly say it updated the database, but I was desperate and it
sounded right, so ran it. The extensive disk activity suggested that
maybe it was doing an update. There was no feedback.

Or maybe it was just screwing up my system irreparably? I used to be a
submariner, and the first thing you learn is never to turn a valve
until you know very well what it does. But contrary to that wise
attitude, I just went ahead anyway. 

So what was the result? The find utility no longer finds
anything. Apparently I wiped out the database. 

My real aim was to find out why the update was not happening
automatically.

> >In any case, /var/log/cron does not have an entry fpr updatedb.
> 
> It won't, becsuse cron (or anacron or whatever) is not running updatedb 
> *directly*. It is running a script that in turn runs updatedb. (On my 
> system, the relevant entry, in syslog (Debian uses different logging 
> defaults)  is  "Feb 11 06:25:01 waverly /USR/SBIN/CRON[11485]: (root) CMD 
> (test -e /usr/sbin/anacron || run-parts --report /etc/cron.daily)". YMMV as 
> to the details, but start by checking /etc/crontab .

Are you suggesting here that I should look into /etc/crontab.daily, etc.,
and see if any of the scripts in this folder run updatedb? But that's
where I started, and which led nowhere, since slocate.cron is
apparently not the script, and no other script calls updatedb.

But my concern now is to recover from my blunder. I suppose running
slocate would recreate the database, but I have no idea which option
settings are default, and without that, I'll just end up making
matters worse. 

-- 
      Haines Brown
	brownh@hartford-hwp.com
	kb1grm@arrl.net
	www.hartford-hwp.com
        
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
