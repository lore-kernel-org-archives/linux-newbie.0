From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: need method of backing up files
Date: Fri, 8 Nov 2002 09:35:55 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <056b01c28734$2b22b820$64fea8c0@pkrausxp>
References: <1036763493.20662.56.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1036763493.20662.56.camel@zebra.vil.ite.mee.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Paul Furness' <paul.furness@vil.ite.mee.com>, linux-newbie@vger.kernel.org

I did something similar with a backup script that copies only files that
change. However it does not take into account files that have been
deleted. You would then just need another simple script to run before
this one that would copy the backup directories to foldername-Tuesday
ect. If you use this you will need to make some minor changes to reflect
your environment. I have a bunch of other scripts that just call this
one. One for each machine I backup and one that is a batch of all the
machines I backup that I have sitting in cron.daily. 

Example: scriptname someuser somepassword computername computershare
pathwithinshare locationofpst

The last variable is for backing up outlook pst files but it can be
omitted as well as the pathwithinshare if you are backing up the root of
the share.

Let me know if you come up with a way to have it remove deleted files.

I am also working on a better way to handle logging.
Let me know if this helps.


The script in case you care :)
------------------------------
#Backup Script 
#------------
#Backup of Microsoft Windows Workstations using samba and cp.
#Script maps windows share to $mnt then copies the contents of share and
all 
#Directories beneath share. If file exists it is only over written if
source file is newer.
#Script unmounts drive and emails results to external server and local
account.
#Set variables
	#set locals
		dt=`date +%m.%d.%y\(%H.%M.%S\)`	
		externalmail=pkraus@pelsupply.com
		localmail=pdk
		msg=/backup/scripts/mailmessage

	#set login
		uid=$1
		pass=$2
		workstation=$3
		share=$4
		path=$5
		pst=$6

	#Set Paths
		source="/mnt/backup/${workstation}${path}"
		dest=/backup/$workstation
		mnt=/mnt/backup/$workstation
		log=/backup/logs/${workstation}.log.${dt}.txt
#Check to see if dest paths exists if not create
	if [ ! -d $dest ];then mkdir --parents "$dest";fi
	if [ ! -d $mnt ];then mkdir --parents "$mnt";fi

#tMount File Systew
	mount -t smbfs -o username=${uid},password=$pass
//${workstation}/$share $mnt > $log 2>/dev/null

#If mount return = 0 then copy if only newer then dest
	if [ $? -eq 0 ] ; then
		if [ -z "$5" ]; then
			cp --preserve --recursive --update "$source"/*
$dest 2>> $log
		else
			cp --preserve --recursive --update "$source"
$dest 2>> $log 
		fi

	#if pst location passed in then backup to backupdiretory/email
if /email missing add directory
		if [ -n "$6" ]; then
			if [ ! -d ${dest}/email ]; then mkdir --parents
"${dest}/email"; fi
			cp --preserve --recursive --update
"${mnt}$pst"*.pst "${dest}"/email 2>> $log
		fi	

		ds=`date +%m.%d.%y\(%H.%M.%S\)`
		subj="Backup log file for machine $workstation"
		
		echo "Backup started at $dt and ended at $ds" > $msg
		mutt -a $log -s "$subj" $externalmail $localmail < $msg
		rm -rf ${log}
		umount $mnt
	else
		echo $dt > $msg
		echo "Backup did not run for ${workstation}. Not
available!" >> ${msg}
		subj="Backup for machine $workstation FAILED!"
		mutt -a $log -s "$subj" $externalmail -c $localmail <
$msg
	fi

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Paul Furness
Sent: Friday, November 08, 2002 8:52 AM
To: Shaggy Im-erbtham
Cc: linux-newbie@vger.kernel.org
Subject: Re: need method of backing up files


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
> so on Monday, files that were updated today would be copied to each 
> user's sub-directory in the monday directory. /mnt/1monday/peter
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
> I'm aware RAID is available but I think this is another thing 
> altogether.
> 
> TIA
> Shaggy
> 
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in the body of a message to majordomo@vger.kernel.org 
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
