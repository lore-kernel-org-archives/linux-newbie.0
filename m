From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: SU and root login don't have proper permissions
Date: Mon, 17 Jun 2002 21:37:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020618043757.XCOY5116.mtiwmhc23.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

Really strange.  Unable to execute or cd to directories that only root would normally get to from either login at the console as root or su to root.  But tonight when I get home, on a lark I tried again and seem to be just fine.

Could ext3 have "fixed" a problem during the day while the computer sat idle?

Well, after going SU modfying my .bash_profile to add /usr/sbin to the path statement, then exiting and re entering via SU the problem has returned.

here is a command I tried to run:

bash-2.05$ ./chkconfig --list
bash: ./chkconfig: No such file or directory
bash-2.05$ cd /
bash-2.05$ find / -name chkconfig
find: /proc/1/fd: Permission denied
find: /proc/2/fd: Permission denied
find: /proc/3/fd: Permission denied
find: /proc/4/fd: Permission denied
find: /proc/5/fd: Permission denied
find: /proc/6/fd: Permission denied
find: /proc/7/fd: Permission denied
find: /proc/8/fd: Permission denied
find: /proc/9/fd: Permission denied
find: /proc/13/fd: Permission denied
find: /proc/132/fd: Permission denied
find: /proc/545/fd: Permission denied
find: /proc/550/fd: Permission denied
find: /proc/571/fd: Permission denied
find: /proc/599/fd: Permission denied
find: /proc/711/fd: Permission denied
find: /proc/772/fd: Permission denied
find: /proc/776/fd: Permission denied


Now I exited, re-entered again:

[Alan@Webby Alan]$ su
Password:
[root@Webby Alan]#


Your not nagging, but just the hints you gave from my vag descriptions are helpful.  I prefer to learn by hints and nudges than do this, do this, and do this.  Unless I understand the why it doesn't retain well.


 >>  I'm not trying to nag here ... but you do mention your newness to Linux,
 >>  so 
 >>  I want to help you understand the level of detail needed when asking about
 >>  
 >>  setup problems. Always tell us what you actually did, and quote (never 
 >>  paraphrase, until you get good enough that you *know* what the message 
 >>  means ... but then you won't need our help in interpreting it, right?) the
 >>  
 >>  exact result. As much as possible, try to avoid summarizing based on your 
 >>  guess as to what is important or what unfamiliar messages mean.




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
