From: Shaun Bryant <sbryant@ThePit.org>
Subject: RE: Kernel error
Date: Sat, 25 May 2002 12:54:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <A1F41DE771DCD5119FE30060089343500A58C4@NET-ARCH>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'pa3gcu@zeelandnet.nl'" <pa3gcu@zeelandnet.nl>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Rich,

Yes I did upgrade the kernel but the system.map seems to be the same date
(see below). Is there a way to rebuild the system map?

-rw-r--r--    1 root     root       659886 Mar 20 07:53 System.map
-rw-r--r--    1 root     root       657708 Mar 20 06:42 System.old
drwxr-xr-x    2 root     bin          4096 Mar 20 04:02 bin/
drwxr-xr-x    2 root     root         4096 Mar 20 07:53 boot/
drwxr-xr-x    2 root     root         4096 Oct  6  1997 cdrom/
drwxr-xr-x    9 root     root        32768 May 23 09:04 dev/
drwxr-xr-x   18 root     root         4096 May 25 11:57 etc/
drwxr-xr-x   14 root     root         4096 Mar 31 14:24 home/
drwxr-xr-x    3 root     root         4096 Mar 24 20:25 lib/
drwxr-xr-x    2 root     root        16384 Mar 20 03:45 lost+found/
drwxr-xr-x    2 root     root         4096 Oct  6  1997 mnt/
drwxr-xr-x    5 root     root         4096 Nov 28  1998 opt/
dr-xr-xr-x   63 root     root            0 May 23 02:01 proc/
drwx--x---    7 root     root         4096 May 23 09:57 root/
drwxr-xr-x    2 root     bin          4096 Mar 20 04:02 sbin/
drwxrwxrwt   11 root     root         4096 May 25 10:41 tmp/
drwxr-xr-x   19 root     root         4096 Aug 18  1999 usr/
drwxr-xr-x   17 root     root         4096 Mar 28 20:22 var/
-rw-r--r--    1 root     root      1159361 Mar 20 07:53 vmlinuz
-rw-r--r--    1 root     root      1154564 Mar 20 06:42 vmlinuz.old

Shaun

-----Original Message-----
From: Richard Adams [mailto:pa3gcu@zeelandnet.nl]
Sent: Saturday, May 25, 2002 11:48 AM
To: Shaun Bryant; 'linux-newbie@vger.kernel.org'
Subject: Re: Kernel error


On Saturday 25 May 2002 17:47, Shaun Bryant wrote:
> Hi all,
>
> This recently starting popping up in my syslog log, about once every 5
> hours or so. Does anyone of a idea of a course of action to correct this
> problem?
>
> May 20 08:14:38 Illusion kernel: Symbol table has incorrect version
number.

What have you recently changed, installed a new kernel.?????

It could be that you have installed a new kernel and the old System.map is 
still being used.!.

>
> Thanks
> Shaun

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

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
