From: Carl Lawton <carl@anexia.co.uk>
Subject: Re: SAMBA unable to access the shares
Date: Wed, 04 Sep 2002 09:47:16 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20020904093204.00b83d28@interzone.anexia.co.uk>
References: <CPIMSSMTPU01foV1qdi00000dd6@cpimssmtpu01.email.msn.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU01foV1qdi00000dd6@cpimssmtpu01.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

Alan,

I don't user "SHARE" type shares but here is where i would look.
I do get this error normally when there is a passwd mismatch or
i'm sending unencrypted instead of encrytped. I have also had problems
with long (over 14 characters i think) login names on the windows machines.


>    encrypt passwords = Yes
>    smb passwd file = /etc/samba/sambapasswd

Are the users in the sambapasswd file with the same UID as /etc/passwd?



>    #Easier backups
>    syslog = 3
>    #Level of logging to syslog.  Keep this low
>    max log size = 1000
>    security = SHARE
>    domain master = yes
># where to keep records
>    log file = /var/log/samba.log.%m
>    log level = 9
>    #Log interesting stuff only

Have you checked the log files?


>    # Performance tuning - this works.  RTFM before tweaking
>    socket options = IPTOS_LOWDELAY \
>    TCP_NODELAY SO_SNDBUF=4096 SO_RCVBUF=4096
>    dns proxy = No
>    #One tool for one job.  Use bind for DNS.
>    #Security
>    #These  entries are essential.
>    invalid users = root
>    #Otherwise someone could attack the shares just by browsing
>     # from your workstation
>
>    # Specify the IP range of your LAN and the ethernet card used to
>    # access the LAN
>    # Leave the 127.0.0.1 entry there for diagnostics
>    interfaces = eth1 192.168.0.0/255.255.255.0 127.0.0.1/24
>    # Even if a remote attacker decodes a password, he is still
>    # locked out
>    bind interfaces only = yes
>
>[homes]
>    # Allows users to store their data on the server
>    comment = Home Directories
>    read only = No
>    create mask = 0700
>    directory mask = 0700
>    browseable = Yes
>
>[mh]
>    # Create a folder for publicly shared resources like
>    # databases, telephone lists, etc.
>        comment = Data Files and Backups
>    # You need to set his path.  Mine is...
>        path = /usr/local/Alan
>        read only = No
>        create mask = 0775
>        directory mask = 0775
>        browseable = Yes
>        guest ok = Yes


Have you tried putting in the "valid users" options in the shares.

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
