From: Ray Olszewski <ray@comarre.com>
Subject: Re: Need help interpreting Backup Script
Date: Thu, 08 Apr 2004 13:20:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040408124106.01f5ebb8@celine>
References: <20040408183547.96802.qmail@web11805.mail.yahoo.com> <GNEPLLCIIBHICCOGIAKPMEHPCJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPMEHPCJAA.eatley@wow-corp.com>
References: <20040408183547.96802.qmail@web11805.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:47 PM 4/8/2004 -0400, Eve Atley wrote:

>I really have 3 questions here.
>1. What is the backup script at the bottom of this email doing?

See below, where I add line-by-line comments to the script itself.

>2. How can I add folders to this, or should I be creating a new script for
>the seperate folders? If I add more folders to the same script, the backup
>time is bound to increase, so I figure it's a tradeoff between having
>multiple scripts vs. time.

You figure right ... except, of course, that multiple scripts does not 
reduce the total time for the backups, just splits it up into multiple, 
separate jobs. (Actually, since more mounts and umounts would get done, the 
separate-scripts method would increase the total time, but the effect 
should be tiny.)

To back up additional directories (not "folders"; wrong jargon), you would 
add more lines like the one that begins

         cp -r /home/shared/* /mnt/backup/`date +"%A/"

You could do this by previously modifying the `date +"%A/" part so it was 
different for the different backups, or you could add a piece to the path 
(and to the earlier lines that delter, then create, the directory). For 
example, you could change the above to read

         cp -r /home/shared/* /mnt/backup/home/shared/`date +"%A/"

-OR- to read

         cp -r /home/shared/* /mnt/backup/`date +"%A/"home/shared/

>3. As it appears this script is already backing up /home/shared, what does
>the script tell me in terms of where I can find the backup?

ON the samba share (//BACKUP/backup), wherever it might be, in a directory 
whose name is constructed from the "date" command. Here, this is what I get:

         ray@kuryakin:~$ echo `date +"%A/"`
         Thursday/

Or you might simply modify the script to backup /home/* instead of 
/home/shared/*

>Here's a more detailed explanation of 1 and 2.
>
>1. and 2. Being new to Linux, I am trying to add to a backup script that
>already exists. However, before I do so, I'd like to know more about what
>it's doing, and where things are going. What I want to backup is linux
>directory /home/shared, which it is doing; but I'd also like to backup /home
>so that each individual user folder can be backed up as well.
>
>The way I understand it is like so: /home/shared is being backed up on a
>daily? basis. Is this correct?

It depends. This script itself contains no instructions about how often to 
run. It *probably* runs as a daily cron job. Read up on crond (the cron 
daemon). For a quick check, look in (probably - I'm not sure how much these 
locations vary among Linux distros, and my answers always are based on 
Debian practices) ...

         /etc/cron.daily/
         /etc/crontab
         /var/spool/cron/crontabs/

... to find a cron entry that runs the script, probably daily at an 
out-of-the-way time.

>Should I write another script based on this
>one that will copy the /home/ directories minus the shared directory?

Dunno. A direct answer requires deeper knowledge of your setup than you've 
given us. An indirect answer -- you apparently (from your prior posting 
here) need some more general backup than you have. This one may work for 
you, or it may be too slow, or it may use up too much disk capacity in the 
backup filesystem. As usual, the devil is in the details.

Since this script uses day of the week for the directory name, it will 
maintain 7 complete copies of anything it backs up. You need to do the math 
and see if it works for you as to storage space.

Another option -- I offer this just as an example -- is to use the 
combination of "tar" and "gzip" to save a compressed archive of anything 
you want to backup. This might be faster or slower -- compressing takes CPU 
time, but the compressed file is smaller so takes less time to write -- the 
tradeoff is in the details, again -- but it will surely be smaller.

I'm way far from the best shell script writer here ... I normally do even 
the simplest stuff in Perl, not bash ... but the key line is 
***approximately*** this ...

         tar -czf /mnt/backup/`date +"%A/"`home.shared.tgz  /home/shared

... with the same sort of redirection as in your sample script. (Or just 
/home at the end, depending on what you want to backup.) With a little more 
work, you should be able to backup each directory in /home/ separately, but 
that's too much to go into here (especially with me doing the writing -- 
though I can do it off the top of my head in Perl, I can't in bash).

Read the man page for tar and experiment a bit to get it exactly right; I 
didn't test this, so it probably has some small (maybe even large) error.

>--------------------------------------------------
>With that said, here's the script. The only things I've changed is the
>username & password.

I *think* e-mailing it also introduced additional line breaks, and that 
matters for shell scripts. Below, I've added blank lines to separate what I 
believe are the actual lines of the script (except for the comment (#) 
lines at the beginning).


>Thanks,
>Eve
>
>#!/bin/sh
>#backup_main: simple backup routine to be used with samba and bash cp.
>#this one simply copies an entire directory recursively to an smb mount.
>#
>#written by RKL - 7/17/2003

>mount -t smbfs -o
>username=username,password=password,workgroup=workgroup
>//BACKUP/backup /mnt/backup
>&>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
This line mounts the samba share and logs the result to a file in root's 
directory.

>if [ -f /mnt/backup/connected ]; then
This line verifies that the mount succeeed, by checking for a known 
fliename (connected) in the samba share.

>         rm -rf /mnt/backup/`date +"%A/"`
This line removes any existing directory that matches the directory name 
that the backup will use.

>         mkdir /mnt/backup/`date +"%A/"`
This line creates a fresh directory to hold the backup.

>         cp -r /home/shared/* /mnt/backup/`date +"%A/"`
>1>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.log"`
>2>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.err"`
This line uses "cp -r" to do the actual backup, redirecting STDOUT (1) and 
STDERR (2) output to log files on the samba share.

>         umount /mnt/backup  &>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
This line unmounts the samba share.

>fi
This line ends the "if" statement that confirmed that the samba mount had 
succeeded.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
