From: Peter <pfheiss@philonline.com>
Subject: Re: ssh error message
Date: Tue, 10 Sep 2002 10:19:18 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209100219.g8A2JJB01955@philonline.com>
References: <CPIMSSMTPU12RIfKdRb00001c0a@cpimssmtpu12.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 08 Sep 2002 20:23:42 MST."
             <CPIMSSMTPU12RIfKdRb00001c0a@cpimssmtpu12.email.msn.com> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org


arwbackup@worldnet.att.net said:
> Do you have the file:
> /etc/ssh/sshd_config?

Yes I have that file.
]# locate /etc/ssh/sshd_config
/etc/ssh/sshd_config


]$ /etc/rc.d/init.d/sshd start 
Starting sshd:execvp: No such file or directory
                                                           [FAILED]
> Please try running sshd from the command prompt. 

There is no sshd to run; I mean in one of the (s)bin directories.

locate sshd
/etc/rc.d/init.d/sshd
/etc/rc.d/rc0.d/K25sshd
/etc/rc.d/rc1.d/K25sshd
/etc/rc.d/rc2.d/S55sshd
/etc/rc.d/rc3.d/S55sshd
/etc/rc.d/rc4.d/S55sshd
/etc/rc.d/rc5.d/S55sshd
/etc/rc.d/rc6.d/K25sshd
/etc/log.d/conf/services/sshd.conf
/etc/log.d/conf/services/sshd2.conf
/etc/log.d/scripts/services/sshd
/etc/log.d/scripts/services/sshd2

locate ssh
/usr/bin/ssh-add
/usr/bin/ssh
/usr/bin/ssh-keygen
/usr/bin/ssh-agent
/usr/bin/ssh-keyscan

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
