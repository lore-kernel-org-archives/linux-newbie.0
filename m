From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: ssh setup: user 'locked out' daily
Date: Thu, 19 Aug 2004 14:54:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPEEEADDAA.eatley@wowcorp.com>
References: <20040819171227.21e76e1c.bilbo@waitrose.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040819171227.21e76e1c.bilbo@waitrose.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: John Kelly <bilbo@waitrose.com>, linux-newbie@vger.kernel.org


Thanks for the reply!

Ok, I did some looking, and chage pulls up the following info (with user
'emon' being one of the problematic ones,  and user 'eve' being an old
account):
[root@wow-rtr etc]# chage -l emon
Minimum:        -1
Maximum:        99999
Warning:        -1
Inactive:       -1
Last Change:            Aug 19, 2004
Password Expires:       Never
Password Inactive:      Never
Account Expires:        Never
[root@wow-rtr etc]# chage -l eve
Minimum:        0
Maximum:        0
Warning:        7
Inactive:       0
Last Change:            Feb 03, 2004
Password Expires:       Never
Password Inactive:      Never
Account Expires:        Never
[root@wow-rtr etc]#

The odd thing is that previous to my change (using a kewl graphical tool) of
removing the password expiration, user 'emon' looked just the same as user
'eve' which was set up quite some time ago.

I set up user 'emon' the same was as 2 previous users, and they have not
expired!

- Eve



-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of John Kelly
Sent: Thursday, August 19, 2004 12:12 PM
To: linux-newbie@vger.kernel.org
Subject: Re: ssh setup: user 'locked out' daily


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

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
