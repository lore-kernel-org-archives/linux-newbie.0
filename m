From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: Simple script to set permissions on folders daily - write script and cron it?
Date: Mon, 28 Mar 2005 16:05:20 -0500
Message-ID: <000801c533d9$da0ca9f0$660aa8c0@descartes2>
References: <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

you could use a sticky bit on the directory instead.

man chmod and read the second on sticky bit and directories.  It might save
you effort.


----- Original Message ----- 
From: "Eve Atley" <eatley@wowcorp.com>
To: <linux-newbie@vger.kernel.org>
Sent: Monday, March 28, 2005 4:02 PM
Subject: Simple script to set permissions on folders daily - write script
and cron it?


>
> Hello! I want to write a very simple script that once daily (via cron)
will
> set permissions to 777. This is to override any permissions set on files
> uploaded by other people, so everyone who already has access to the group
> will have rwx access to the file(s).
>
> So I'm double-checking if the best route is to create my script, then run
it
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
> chmod 777 -R *
> cd /home/shared/public
> chmod 777 -R *
> #put an exception here for /scans and /cd however
> #????
> cd /home/shared/accounting
> chmod 777 -R *
> Fi
>
> Thanks much,
> Eve
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
