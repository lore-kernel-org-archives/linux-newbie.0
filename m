From: Peter <pfheiss@philonline.com>
Subject: Re: Strange Messages
Date: Thu, 29 Aug 2002 11:01:29 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208290301.g7T31T501568@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Thanks!

ray@comarre.com said:
> To stop it, find and fix the problem in some crontab file.

I tried to do this by creating files /usr/lib/sa/sa1 and /usr/lib/sa/sa2.

Now I get: "/bin/sh: /usr/lib/sa/sa1: Permission denied"

$ ll /usr/lib/sa/sa1                   
-rwxrw-rw-    1 root     root            0 Aug 27 10:57 /usr/lib/sa/sa1

Wy is this permission denied?

After further thinking:

It started to show-up when I added in /etc/aliases the last line
person who should get root's mail
root:		pfheiss
pfheiss:	Peter
		  
I deleted now "pfheiss:	Peter" and the spook is gone.

The file causing the messages is in /etc/cron.d sysstat

 run system activity accounting tool every 10 minutes
*/10 * * * * root /usr/lib/sa/sa1 1 1
 generate a daily summary of process accounting at 16:53
53 16 * * * root /usr/lib/sa/sa2 -A

If I mark (#) the lines in question would that have any adverse effect?



> <root@philonline.com> >Received: (from root@localhost)
>         by philonline.com (8.11.6/8.11.6) id g7R200m01274
>         for root; Tue, 27 Aug 2002 10:00:00 +0800 >Date: Tue, 27 Aug
> 2002 10:00:00 +0800 >Message-Id: <200208270200.g7R200m01274@philonline.
> com> >From: root@philonline.com (Cron Daemon) >To: root@philonline.com
> >Subject: Cron <root@Peter> /usr/lib/sa/sa1 1 1 >X-Cron-Env: <SHELL=/
> bin/sh> >X-Cron-Env: <HOME=/root> >X-Cron-Env: <PATH=/usr/bin:/bin> >
> X-Cron-Env: <LOGNAME=root>

>Peter wrote:
>Hi,
> >As of late I am
> receiving every 10 minutes in my exmh-mail-program-inbox the
> following message:
> >$ cat ./ExMail/inbox/msg.ygB
> >From root  Tue Aug 27 10:00:00 2002 >Return-Path:
> >/bin/sh: /usr/lib/sa/sa1: No such file
> >or directory

> >What's the meaning of it and how can it be stopped? 

Regards
-- 
Peter






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
