From: Ray Olszewski <ray@comarre.com>
Subject: Re: 'nobody' is using my system !!!
Date: Thu, 26 Sep 2002 07:58:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020926075119.0261a580@celine>
References: <000401c26496$bf7d7f20$64fea8c0@pkrausxp>
 <3D921A64.7DBA9BC6@gelm.net>
 <200209251722.26680.wfoo@linuxvoodoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D92DBFD.5D95F544@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

At 06:05 AM 9/26/02 -0400, Chuck Gelm wrote:
>G'day, Y'all:
>
>  I awoke at 04:40 AM today when the internal speaker of my
>Win2k boxen started sounding a tone.  While I was up shutting
>it down, I noticed the HD activity lamp on my linux firewall
>was indicating activity.  I selected the console window where
>I leave 'top' running.  I found that 'find' and 'sort' were
>being run by 'nobody'.  I've installed no 'at' or 'cron' jobs.
>It is a Slackware v8.0, kernel 2.2.19, custom compile system.
>
>'who' showed my console logins only.
>
>Why was 'find' and 'sort' running at 4:40 AM ?

One can only guess. My guess would be that even though *you* didn't install 
any cron jobs, the install itself did so.

The obvious candidate is an update of the locate database. See if 
"updatedb" is also running at this time. See if there is  a cron script 
that runs either find or updatedb or both (on my systems, it is 
/etc/cron.daily/find, but I've no idea how standard this location is).

If that is not it, I'd look through the scripts in the /etc/cron.* 
directories, or their analogs on our system, for a candidate.


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
