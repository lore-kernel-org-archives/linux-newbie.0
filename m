From: Ray Olszewski <ray@comarre.com>
Subject: re: SU and root login don't have proper permissions
Date: Mon, 17 Jun 2002 22:06:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020617215616.02c857c0@celine>
References: <20020618043757.XCOY5116.mtiwmhc23.worldnet.att.net@alan>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020618043757.XCOY5116.mtiwmhc23.worldnet.att.net@alan>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, "Majordomo leben.com" <linux-newbie@vger.kernel.org>

At 09:37 PM 6/17/02 -0700, Alan Womack wrote:
>Really strange.  Unable to execute or cd to directories that only root 
>would normally get to from either login at the console as root or su to 
>root.  But tonight when I get home, on a lark I tried again and seem to be 
>just fine.

I don't know what you mean by "fine", since you seem to go on to discuss a 
problem.

>Could ext3 have "fixed" a problem during the day while the computer sat idle?

I'll have to leave answering that part to someone who runs ext3.

>Well, after going SU modfying my .bash_profile to add /usr/sbin to the 
>path statement, then exiting and re entering via SU the problem has returned.

Who is the "my" here? Your user account or root? A user should be able, on 
a standard system, to edit his or her .bash_profile without needing to be root.

>here is a command I tried to run:
>
>bash-2.05$ ./chkconfig --list
>bash: ./chkconfig: No such file or directory

OK. Two things about this:

1. You are running here as an ordinary user, not as root (since you gets 
the $ prompt, not #).

2. You are trying to run a copy of chkconfig located in your PWD, whatever 
that is (check it with the command "pwd"). To traverse your PATH, you need 
to enter "chkconfig", -NOT- "./chkconfig".

>bash-2.05$ cd /
>bash-2.05$ find / -name chkconfig
>find: /proc/1/fd: Permission denied
>find: /proc/2/fd: Permission denied
>find: /proc/3/fd: Permission denied
>find: /proc/4/fd: Permission denied
>find: /proc/5/fd: Permission denied
>find: /proc/6/fd: Permission denied
>find: /proc/7/fd: Permission denied
>find: /proc/8/fd: Permission denied
>find: /proc/9/fd: Permission denied
>find: /proc/13/fd: Permission denied
>find: /proc/132/fd: Permission denied
>find: /proc/545/fd: Permission denied
>find: /proc/550/fd: Permission denied
>find: /proc/571/fd: Permission denied
>find: /proc/599/fd: Permission denied
>find: /proc/711/fd: Permission denied
>find: /proc/772/fd: Permission denied
>find: /proc/776/fd: Permission denied

This suggests that either the command "chkconfig" is in fact missing from 
your system, or that you have a filesystem  problem of some sort. To check 
for the first, cd to whatever directory you expect it to be in (/usr/sbin, 
apparently) and use ls to see if it is there. If it is, I suggest you fask 
your filesystem. If it is not, I suppose you'll want to reinatall it.


>Now I exited, re-entered again:
>
>[Alan@Webby Alan]$ su
>Password:
>[root@Webby Alan]#

OK. So? This looks fine.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
