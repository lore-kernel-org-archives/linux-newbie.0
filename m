From: John Kelly <bilbo@waitrose.com>
Subject: Re: ssh setup: user 'locked out' daily
Date: Thu, 19 Aug 2004 17:12:27 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819171227.21e76e1c.bilbo@waitrose.com>
References: <20040223225259.GA11316@sevoog.kriation.com>
	<GNEPLLCIIBHICCOGIAKPCEDJDDAA.eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPCEDJDDAA.eatley@wowcorp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
On Thu, 19 Aug 2004 11:13:22 -0400
"Eve Atley" <eatley@wowcorp.com> wrote:

> 
> We have SSH running on our Linux Redhat 9 server. I set up new users
> to dump them upon initial login to a common directory using the
> following command:	useradd -M -d /home/shared username -p password
> 	passwd username (for some reason, -p password doesn't work?)
> 
> On a daily basis, they are locked out. /var/log/secure indicates the
> following:
> 	fatal: monitor_read: unsupported request: 24
> 	PAM rejected by account configuration[13]: User account has
> 	expired
> 
> /var/log indicates the following:
> Aug 19 10:38:15 wow-rtr sshd(pam_unix)[19144]: account emon has
> expired(failed to change password)
> 
> They log in with winscp3 (graphical client) using sftp.
> 

I haven't looked at RedHat since 7.3 but ...
 
The problem here seems simple enough - the user account has expired.
Have a look at the man page for passwd and in particular the -x -n -w
-i options. There is also a program called chage which changes the
account ageing details. Account expiry information is held in
/etc/shadow - the manpage for shadow explains how it works.

I believe that there is a file in /etc/system/ or /etc/sysconfig/ (I
am not sure of the name) on RedHat which sets the default
password/account ageing policy.  You may have to edit this file so
that newly created accounts don't expire. There may even be a kewl
graphical tool to do this - I haven't looked at RedHat recently and I
don't use kewl graphically tools anyway :-).

Hope this helps.

regards,

John Kelly

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
