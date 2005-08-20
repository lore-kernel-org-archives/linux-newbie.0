From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: kernel log messages and disk space
Date: Sat, 20 Aug 2005 18:34:44 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0508201812550.24204-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

Observed today, that my machine had utilized ~ 7G of hard drive space 
(since the last time I saw it, ~ week ago)! The real killers were: 

# du -hcs /var/log/* | grep -E '^[0-9]*.[0-9]*G'
2.6G    /var/log/kern.log.0
2.6G    /var/log/messages.0
2.6G    /var/log/syslog.0

On inspection each of these files along with the /var/log/messages,
/var/log/kern.log and /var/log/syslog, contained messages as pasted below.  
Am pasting the contents near the head/tail of each of these files (just to
highlight that the sector-numbers/time-stamps of these messages were quite
varied, and that these messages were repeated over and over again till the
filesize grew to what du showed). 

I would much appreciate any input on what is/was causing this behavior,
and, how I may be able to catch it/fix it, therefore.

The file contents follow:

[# tail -n3 /var/log/kern.log.0]

Aug 18 07:38:18 mithrandir kernel: attempt to access beyond end of device
Aug 18 07:38:18 mithrandir kernel: 03:01: rw=0, want=2031123176, 
limit=13277691
Aug 18 07:38:18 mithrandir kernel: attempt to access beyond end of device


[# tail -n3 var/log/messages]
Aug 20 07:38:23 mithrandir kernel: attempt to access beyond end of device
Aug 20 07:38:23 mithrandir kernel: 03:01: rw=0, want=1373859054, 
limit=13277691
Aug 20 07:38:23 mithrandir kernel: Directory sread (sector 0xa3c6d9dc) 
failed

[# tail -n3 /var/log/syslog]

Aug 20 08:41:13 mithrandir kernel: attempt to access beyond end of device
Aug 20 08:41:13 mithrandir kernel: 03:01: rw=0, want=71196829, 
limit=13277691
Aug 20 08:41:13 mithrandir kernel: Directory sread (sector 0x87cc13a) 
failed


Thanks and regards,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
