From: "Eve Atley" <eatley@wow-corp.com>
Subject: Setting permissions in a public folder
Date: Thu, 19 Feb 2004 10:46:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPGEDKCCAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


Michael et. al,

Regarding yesterday's problem I am having with restricting user folders to
each user under a public folder, I am still having questions about setting
this one up. These are NOT the user folders automatically created in the
HOME directory.

The config in my smb.conf file for the directory in question:
[backup]
        comment = Backup Folder
        path = /home/shared/backup
        read only = No
        guest only = Yes
        guest ok = Yes
        force group = +backup
        hosts allow = 192.168.10.

I'm looking for the correct config. Without the hosts allow (haven't tried
it with), I am able to connect correctly via a Unix command line, but not
through the Windows share, so it appears to be a Samba problem.

- Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
