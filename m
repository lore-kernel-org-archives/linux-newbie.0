From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: RE: need method of backing up files
Date: 08 Nov 2002 15:38:09 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036769889.20840.92.camel@zebra.vil.ite.mee.com>
References: <056b01c28734$2b22b820$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <056b01c28734$2b22b820$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Yup, that should work nicely.

Couple of things you might want to add to it (or you may not, of course
:)  - see below

On Fri, 2002-11-08 at 14:35, Paul Kraus wrote:
> 
> Example: scriptname someuser somepassword computername computershare
> pathwithinshare locationofpst
> 
> 
> Let me know if you come up with a way to have it remove deleted files.
> 
Would you want to? How often does someone delete a file, then a couple
of days later ask you to restore it from the backup? I have something
similar going on where I simply copy stuff to the backup space, but
never delete anything. Well, not strictly; once per month it deletes
everything older than a month, using find:

find /{Backup_Place} -mtime +30 -exec rm {} >> {Log_File} \;

Old stuff is in the regular backups anyhow.


Oh, about logging: The approach I use is to log all activity and all
errors to the same file. This is because I find that if there _are_ any
problems, it's useful to have all the messages in chronological order.
Basically, every command in any of my system scripts ends in " >>
${Log_File} 2>&1 "  (actually, I usually do something like assign that
to a variable and stick that on each line).
At then end of the script, I usually put in something like:

mail -s "Backup script on ${Host} completed ok"
paul.furness@vil.ite.mee.com < ${Log}

and if there is a place in the script where things have gone wrong,
rather than just exitting, I put in something like:

mail -s "Backup script on ${Host} FAILED" paul.furness@vil.ite.mee.com <
${Log}


Hope some of this helps.

P.

> 
> 
> The script in case you care :)
> ------------------------------
> #Backup Script 
> #------------
.
.
.
> 		log=/backup/logs/${workstation}.log.${dt}.txt
> #Check to see if dest paths exists if not create
> 	if [ ! -d $dest ];then mkdir --parents "$dest";fi
> 	if [ ! -d $mnt ];then mkdir --parents "$mnt";fi

You might want to add something here that deals with a failure to make
the directory, and also logs the results of the mkdir command. Something
like:
 
 	if [ ! -d $dest ];then mkdir -v --parents "$dest" >> ${log};fi
	if [ ! -d $dest ]
		then 
		echo "Failure to make destination $dest >> ${log}
		#mail an error to someone?
		exit 1  # This ends the script if dest doesn't exist
	fi


........same for ${mnt}

It is possible to combine these into more compact code, but I think that
makes it harder to read later.

> 
> #tMount File Systew
> 	mount -t smbfs -o username=${uid},password=$pass
> //${workstation}/$share $mnt > $log 2>/dev/null

Is there any reason why you redirect errors to /dev/null rather than
appending to the log file? If it went wrong, you wouldn't know why.

> 
.
.
.
.

> 	fi


-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
