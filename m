From: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Subject: Re: tar for "full" floppy backup?
Date: Sat, 7 Dec 2002 11:58:28 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212071157090.5141-100000@filesrv1.baby-dragons.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


	Hello Jerry & all ,
	If it is Slackware the tar binary provided is Gnu-Tar .
	Try doing a 'tar --help' & report the output from
	'tar --version' .  There maybe issues with certain versions
	of tar .  Another item to look at is can you read floppies on
	your system if you don't have mtools avaiable , try
	'dd if=/dev/fd0 count=10 | strings'
	If that works , try (you will have to reforamt the flopy tho)
	'dd if=/dev/zero of=/dev/fd0 count=10'
	to see if you can Write to the floppy .

	Compressed you are not going to accomplish easily .
	Maybe someone else can address a method of compressing the
	input INLINE with the multi-volume archive issue .
		Hth ,  JimL

 -- Generic descriptions of options used (on my system)

tar --multi-volume \
  --label="Some Label" \
  --create \
  --preserve-permissions \
  --same-owner \
  --file=/dev/fd0 \
  "List Of Files To Backup"


  -- The actual command that I used to creat a 4 Volume set tar archive

tar --multi-volume --label="Root-Bin-test" --create --preserve-permissions --file=/dev/fd0 /root/bin


  -- The output from the above command during execution .

tar: Removing leading `/' from absolute path names in the archive
Prepare volume #2 for /dev/fd0 and hit return:
Prepare volume #3 for /dev/fd0 and hit return:
Prepare volume #4 for /dev/fd0 and hit return:

-- 
       +------------------------------------------------------------------+
       | James   W.   Laferriere | System    Techniques | Give me VMS     |
       | Network        Engineer |     P.O. Box 854     |  Give me Linux  |
       | babydr@baby-dragons.com | Coudersport PA 16915 |   only  on  AXP |
       +------------------------------------------------------------------+
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
