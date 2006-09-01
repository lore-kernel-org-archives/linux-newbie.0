From: Luca Ferrari <fluca1978@infinito.it>
Subject: syslogd crashes
Date: Fri, 1 Sep 2006 13:29:50 +0200
Message-ID: <200609011329.50196.fluca1978@infinito.it>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi all,
I've got a problem on my Suse:the syslogd crashes after a while it is started, 
and the only thing I can see in the debug mode is:
Calling select, active file descriptors (max 3): 3

repeated on several lines. Of course, without the syslog I cannot understand 
what the machine is doing. Anyone has a clue to solve this problem?

Thanks,
Luca
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
