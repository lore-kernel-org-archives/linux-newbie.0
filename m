From: Peter <pfheiss@philonline.com>
Subject: Re: ssh error message
Date: Mon, 09 Sep 2002 08:46:34 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209090046.g890kY001155@philonline.com>
References: <CPIMSSMTPU04K0feMzO00001a30@cpimssmtpu04.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sat, 07 Sep 2002 06:50:18 MST."
             <CPIMSSMTPU04K0feMzO00001a30@cpimssmtpu04.email.msn.com> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

Thanks!

arwbackup@worldnet.att.net said:
> Can you post the portion of your log entries which show some details?
> You may have to turn on debugging features to get the output.


Sep  8 09:52:46 philonline apmd: apmd startup succeeded
Sep  8 09:52:46 philonline sshd: Starting sshd:
Sep  8 09:52:46 philonline sshd: execvp: No such file or directory
Sep  8 09:52:46 philonline sshd:  failed
Sep  8 09:52:46 philonline sshd: execvp: No such file or directory
Sep  8 09:52:46 philonline sshd: 
Sep  8 09:52:46 philonline rc: Starting sshd:  failed
Sep  8 09:52:35 philonline rc.sysinit: Mounting proc filesystem:  succeeded 

]$ /sbin/service sshd status
sshd is stopped

]$ /sbin/service sshd start 
Starting sshd:execvp: No such file or directory
                                                           [FAILED]

In setup-system-services sshd is enabled.

There is a man age for execvp and execve which to understand is beyond my 
training.

In man execve I find under ERRORS:
ENOENT The  file  filename  or a script or ELF interpreter
              does not exist, or a shared library needed for file
              or interpreter cannot be found.

How do I find that out which of these might be the cause of the error?

Regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
