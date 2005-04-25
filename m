From: Ray Olszewski <ray@comarre.com>
Subject: Re: No Locate for User
Date: Sun, 24 Apr 2005 22:06:04 -0700
Message-ID: <426C7ABC.3000007@comarre.com>
References: <200504250427.j3P4R6J5000324@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504250427.j3P4R6J5000324@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Hi,
> 
> Slackware 10.1 kernel 2.4.29
> 
> I upgraded again Dropline Gnome from 2.8.3 to 2.10 this time with no problems 
> regarding certain programs like gxine not opening.
> 
> However, I cannot use the command "locate" as a user any longer. I get the 
> following error:
> 
> @~:$ locate fips
> warning: locate: could not open database: /var/lib/slocate/slocate.db: 
> Permission denied
> 
> As su there is no problem.
> 
> I did not do anything to this file in fact it has the same permissions as in 
> my Fedora box where a user can do "locate" w/o problem just like before the 
> upgrade in slack.  Updateddb is done daily by cron root.
> 
> :# ls -l /var/lib/slocate
> total 4176
> -rw-r-----  1 root slocate 4275159 2005-04-24 18:06 slocate.db
> 
> How to resolve?

I don't know why ... that is, how ... your Fedora host works with these 
permissions, but I'm not surprised that your Slackware host presents 
problems with them. On Debian, the corresponding file (in a different 
location, but the functional equivalent) is mode 644, the mode you'd 
expect for a file that is to be readable by all users:

  ray@kuryakin:~$ ls -l /var/cache/locate/locatedb
  -rw-r--r--  1 root root 1089123 Apr 24 06:25 /var/cache/locate/locatedb

So try changing the mode to 644 with chmod. Or try adding all users who 
need to use locate to the group slocate (in /etc/group ... perhaps 
Fedora uses this trick to make locate work in mode 640?).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
