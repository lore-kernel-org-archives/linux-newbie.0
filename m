From: Beolach <beolach@gmail.com>
Subject: Re: cron job for rsync
Date: Fri, 30 Jul 2004 01:29:47 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <aebf5d9704073000295854799d@mail.gmail.com>
References: <Pine.LNX.4.44.0407300240000.20622-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0407300240000.20622-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@alum.dartmouth.org>
Cc: linux-newbie@vger.kernel.org

There's a couple of different versions of cron available,  and you don't specify
which one you use, so I'll just answer with what I'm most familiar with.

Dillon's cron (the cron used in Slackware - crond) says this in it's man page:
"Whenever crond must run a job, it first creates a daemon-owned temporary
file O_EXCL and O_APPEND to store any output, then fork()s and changes
its user and group permissions to match that of the user the job is being run
for, then exec's /bin/sh -c to run the job."  So if you have crond, just run
'crontab -e [user]' to create [user]'s crontab, and it will be run with [user]'s
uid & gid.

In my quick skim of vixie cron's man pages (vixie cron is another common
cron) I didn't see anything one way or another about what uid it runs as, and
I've never used it myself, so if you use vixie cron I don't know what
uid the job
will run as. But I do know it does have a crontab for each user, so I would
guess it would run as the user who owns the crontab.

HTH,
Conway S. Smith

On Fri, 30 Jul 2004 02:48:12 -0400 (EDT), Karthik Vishwanath
<karthik.vishwanath.adv03@alum.dartmouth.org> wrote:
> Hello,
> 
> I was considering adding an entry in crontab for automated synchronization
> of files across two machines that I work on most frequently. One machine
> is at work, while the other at home. I used ssh-keygen so that I am
> able to be auto-authenicated to the machine at work from home. I want to
> run a cron job that runs at home to update the a list of files (from
> home->work if the most recent file is the one at home, or vice-versa.)
> 
> I was particularly concerned about whether rysnc/rcp would be able use the
> authorized-key values from my $HOME (which is non-root) to be able to
> login to the remote machine. Do cron jobs run as root or can they be run
> for particular users as well?
> 
> All ideas/inputs are appreciated.
> 
> Thanks,
> 
> -K
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
