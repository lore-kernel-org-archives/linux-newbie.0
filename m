From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Simple script to set permissions on folders daily - write script
 and cron it?
Date: Tue, 29 Mar 2005 01:11:06 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503290042130.2085-100000@hestia>
References: <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 28 Mar 2005, Eve Atley wrote:
 
> Hello! I want to write a very simple script that once daily (via cron) will
> set permissions to 777. This is to override any permissions set on files
> uploaded by other people, so everyone who already has access to the group
> will have rwx access to the file(s).

You should do that by setting the `umask value' or configuring the
programs that store the files correctly . No need for a
cronscript. That is if they are only uploading and not accessing the
shell interactively, even then you should go for a systemwide default
`umask' value.

> So I'm double-checking if the best route is to create my script, then run it
> in cron as necessary. Or is there another way I should be handling it?
> 
> Here's the script:
> 
> #!/bin/sh
> #set_permissions: simple routine to set permissions of directories to be
> #accessible by everyone who already has specific group access.
> #
> #written by EMM - 3/28/2005
>       cd /home/shared/hr/

Does the directory exsist you `cd' to ? 
test -d /home/shared/hr/ || echo "Error - .... and exittttt.. "
or
if [ ! -d /home/shared/hr/ ] ; then
 print error..
fi

> 	chmod 777 -R *

You say, `permissions of directorys' The above will set permissions of
all files except for the dotted files.

You could walk the directory structure by means of `find' and evaluate if 
the file is a directory file by `-type d'.
find /home/shared/hr/ -type d -exec chmod 0755 '{}' \;

Then there is overhead, since every file no matter what the permissions
are is set. Check if the file needs permissions 777 and what the current
permissions are.. 

Other..., Maybe there are files that no matter what shouldn't be world
readable and writable.. If multiple users are on your system they could
put a file in a certain directory, your cronscript goes over
it, maybe as user root.. and.. makes it world readable/writable.. Not a
good thing. There is also a time gap inbetween the two different
permissions, users can't access their files until your cronscript has set
the correct permissions. Yes running your cronscript every X sec's will
fix that, but that's not the way... 

 > 	cd /home/shared/public
> 	chmod 777 -R *
> #put an exception here for /scans and /cd however
> #????
> 	cd /home/shared/accounting
> 	chmod 777 -R *
> Fi

There is no error wrapper in your script, it will keep running after
errors or notifying messages have occurred. Cron takes also the exit value
of your script to determine if it's successful or not..  

> Thanks much,
> Eve

You should take more effort doing the `Unix filosofy', Do one thing
and do it well.. [Right from the beginning in your case].

You are fixing symptoms, after the problem has occurred. E.G.

From the moment a file is stored on your system, it should have the right
permissions. That takes good configuration of the basics of your system.

Before looking at these type of problems, try to imagine if you are
running an ISP with 1000+ users. Who are constantly accessing their files.

You surely don't want to run constantly cronscripts to fix every
user/group rights management problem ?

GNU/Linux , Unix are multitasking, multiuser operatingsystems and they
should be treated like that.. Otherwise you will loose all the advantages
of that at a certain given point..

GoodLuck..

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
