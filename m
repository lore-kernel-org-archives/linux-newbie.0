From: Md Shanto <shanto76@gmail.com>
Subject: Starting "Script" when user logs on.
Date: Wed, 3 Aug 2005 16:34:52 +0600
Message-ID: <b30595cd050803033433db70e9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I am trying to force "script" for logging all text I/O activities at
the moment user logs in. Most of the users are running bash at this
moment.

Initially I tired with "ttyrec" a tty recorder and failed, as it says
"Out of pty's - Terminated". Now, I tried something like below:

------------------
#!/bin/bash -l
USER=`whoami`
LOGTIME=`date +%Y-%m-%d-%H:%M:%S`
/usr/bin/script -q /var/log/commlog/$USER-$LOGTIME
------------------

and assigning this script in /etc/passws. This script will log scripts
with time stamp in /var/log/commlog/.

what happen is: when user logs in the process becomes a loop and I see
lot of script instances are running.

Any idea.

-Refayet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
