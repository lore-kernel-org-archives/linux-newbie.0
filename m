From: jos@lemmerling.nl
Subject: Re: group
Date: Thu, 25 Dec 2003 11:48:04 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0312251127290.32132-100000@orthanc.lemmerling.net>
References: <3FEA8CA6.6000508@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FEA8CA6.6000508@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 24 Dec 2003, dave wrote:

> I've made a group called everyone.  It has its own Sub-directory, 
> "/home/everyone".  I have 3 users in the group.  Do I have to do 
> anything else so everyone can share that Sub-directory?  Mandrake 9.2. 

Most likely you'll have to make sure that the group is accessable
to the group everyone (chgrp everyone /home/everyone).

The next step is to make it writeable to "everyone" : chmod 2770 everyone/ 

The "2" makes sure that all files and directories created in the directory
/home/everyone are set to the group everyone (otherwise they would be set
to the file-creators group and thus not writeable to other users).

The last step is to change the default umask to 002 instead of 022 so all
files will have the permissions set correctly (-rw-rw-r-- instead of
-rw-r--r--). If you don't do this, user1 cannot change the files user2 has
created.

The default umask can be set in the users profile
(/home/user1/.bash_profile) with the line "umask 002".

That should be all!

HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
