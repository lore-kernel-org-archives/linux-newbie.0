From: "Eve Atley" <eatley@wowcorp.com>
Subject: Simple script to set permissions on folders daily - write script and cron it?
Date: Mon, 28 Mar 2005 16:02:06 -0500
Message-ID: <00f401c533d9$68f0ab90$580aa8c0@lanadmin>
References: <570AB64E31B69C44BFC5A097E5F3EEA501745826@ausx2kmpc116.aus.amer.dell.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <570AB64E31B69C44BFC5A097E5F3EEA501745826@ausx2kmpc116.aus.amer.dell.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hello! I want to write a very simple script that once daily (via cron) will
set permissions to 777. This is to override any permissions set on files
uploaded by other people, so everyone who already has access to the group
will have rwx access to the file(s).

So I'm double-checking if the best route is to create my script, then run it
in cron as necessary. Or is there another way I should be handling it?

Here's the script:

#!/bin/sh
#set_permissions: simple routine to set permissions of directories to be
#accessible by everyone who already has specific group access.
#
#written by EMM - 3/28/2005
      cd /home/shared/hr/
	chmod 777 -R *
	cd /home/shared/public
	chmod 777 -R *
#put an exception here for /scans and /cd however
#????
	cd /home/shared/accounting
	chmod 777 -R *
Fi

Thanks much,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
