From: Peter <heisspf@skyinet.net>
Subject: Re: No Locate for User
Date: Mon, 25 Apr 2005 16:11:31 +0800
Message-ID: <20050425161131.5192b7e9@skyinet.net>
References: <200504250427.j3P4R6J5000324@skyinet.net>
	<426C7ABC.3000007@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <426C7ABC.3000007@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux <linux-newbie@vger.kernel.org>

On Sun, 24 Apr 2005 22:06:04 -0700
Ray Olszewski <ray@comarre.com> wrote:

> Peter H. wrote:
> > Hi,
> > 
> > Slackware 10.1 kernel 2.4.29
> > 
> > I upgraded again Dropline Gnome from 2.8.3 to 2.10 this time with no
problems 
> > regarding certain programs like gxine not opening.
> > 
> > However, I cannot use the command "locate" as a user any longer. I get the

> > following error:
> > 
> > @~:$ locate fips
> > warning: locate: could not open database: /var/lib/slocate/slocate.db: 
> > Permission denied
> > 
> > As su there is no problem.
> > 
> > I did not do anything to this file in fact it has the same permissions as
in 
> > my Fedora box where a user can do "locate" w/o problem just like before
the 
> > upgrade in slack.  Updateddb is done daily by cron root.
> > 
> > :# ls -l /var/lib/slocate
> > total 4176
> > -rw-r-----  1 root slocate 4275159 2005-04-24 18:06 slocate.db
> > 
> > How to resolve?

> 
> I don't know why ... that is, how ... your Fedora host works with these 
> permissions, but I'm not surprised that your Slackware host presents 
> problems with them. On Debian, the corresponding file (in a different 
> location, but the functional equivalent) is mode 644, the mode you'd 
> expect for a file that is to be readable by all users:
> 
>   ray@kuryakin:~$ ls -l /var/cache/locate/locatedb
>   -rw-r--r--  1 root root 1089123 Apr 24 06:25 /var/cache/locate/locatedb
> 
> So try changing the mode to 644 with chmod. Or try adding all users who 
> need to use locate to the group slocate (in /etc/group ... perhaps 
> Fedora uses this trick to make locate work in mode 640?).
> 

Since I am using Linux beginning with ReaHat 5.1 then later switching to
slackware I always used "locate" as user and never bothered to look at the
permission of /var/lib/slocate since there was obviously no need.

Before I posted this mail I tried various permission for slocate even my user
name as owner and get the same error: Permission denied.

That's why I am at a loss. I checked the dropline forum and could not find a
reference. Might have to post one.

Regards

Peter

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
