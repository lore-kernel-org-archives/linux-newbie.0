From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: need method of backing up files
Date: 08 Nov 2002 13:51:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036763493.20662.56.camel@zebra.vil.ite.mee.com>
References: <200211080213.gA82D7w02008@philonline.com> <eathan@otenet.gr>
	<200211080213.gA82D7w02008@philonline.com> 
	<4.3.2.7.0.20021108184521.023f8f00@lox2.loxinfo.co.th>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4.3.2.7.0.20021108184521.023f8f00@lox2.loxinfo.co.th>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Shaggy Im-erbtham <shaggy@loxinfo.co.th>
Cc: linux-newbie@vger.kernel.org

Well, there are so many ways of doing this that it's difficult to know
where to start!

There are two parts to what you want to do: scheduling when the backup
happens and doing the actual backup.

The scheduling is easy - use cron. man crontab will get you started on
that. One thing to be aware of is permissioning - if it's all on one
box, then root could run the backups fine, but you might not want to run
it as root, in which case a user like operator is used, but it runs the
actual backup binary SUID root.

Doing the backup:

A lot depends on how often you want to restore, and how you want to do
this - do you want to pull out individual files, or restore everything
in a give directory? How much data is there - is it necessary to
compress the backed up data?

If _ALL_ you want to do is copy files from one place to another once per
day, retaining permissions etc, then combine find with cpio. You can set
find to find only files which have been modified within the last day.
The commands you'd use (taking the first of the examples you give) would
be something like:

cd /home/peter
find . -depth -mtime -1 -print | cpio -pmudv /mnt/1monday/peter >
{Some_Log_File}



by using different options to cpio, you can also use this technique to
create a single archive file or go direct to a tape - say once per week
as a full backup. The man page for cpio should help you there.

 
If you want to simply create an archive of anything that changed since
the last backup, you could use dump. This is usually run once per week
as a full backup, and all the times in between as an incremental backup.
When run as an incremental, dump backs up all the files which have
changed since the last incremental backup of the same level. Again, look
at the man page for dump which explains it fairly well.


Paul.


On Fri, 2002-11-08 at 11:55, Shaggy Im-erbtham wrote:
> I use Slackware 7.0 with upgraded 2.4.18 kernel in a box which serves
> as file server to 5 win9x clients.
> 
> Is there a method to perform incremental back-ups for every user, for
> every day of the week.
> 
> Eg.  /home/peter
>         /home/paul
>         /home/mary
> 
> to be backed up everyday into day-of-the-week directories
> so on Monday, files that were updated today would be copied to
> each user's sub-directory in the monday directory.
> /mnt/1monday/peter
> /mnt/1monday/paul
> /mnt/1monday/mary
> 
> and so on
> /mnt/2tuesday/peter
> /mnt/2tuesday/paul
> /mnt/2tuesday/mary
> 
> Sometimes we need to track the daily changes that are made, that's
> why.
> 
> I'm aware RAID is available but I think this is another thing altogether.
> 
> TIA
> Shaggy
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
