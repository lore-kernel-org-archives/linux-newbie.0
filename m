From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Illegal user problem figured out
Date: Thu, 27 Jun 2002 21:23:20 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020628042340.NXPT5870.mtiwmhc23.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I had posted about an illegal user problem I was having that I couldn't log in a user that existed in my /etc/shadow /etc/passwd and my ldap database.

After nuking my pam.d directory and going to only pam_permit.so and STILL having the problem.  I was able to find a little hint that perhaps ssh had a bug that would return a NULL pointer to pam.  Well, this in itself wasn't the cause of the problem.  However, due to chasing this error I installed a new rpm of openssh, which notified me that it had created a new sshd.conf file.

This caused me to look at my existing conf file to see a usersallow line in there.  And guess what I found to my horror?  A list of allowed users not including the one I've spent a week trying to figure out why I couldn't log in with!

added user lfs to the list and wa la..  Now to rebuild that pam.d directory!

Alan


Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
