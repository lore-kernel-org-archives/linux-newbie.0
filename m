From: AD Marshall <admarshall@gmail.com>
Subject: how-to: one command for repeat OR iterate shell OR bash command delay OR interval
Date: Sun, 17 Jul 2005 11:57:34 +0700
Message-ID: <200507171157.35066.admarshall@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Is there already one bash command to do what the following script does (poorly or incompletely), ie repeat "command" indefinitely every "x" seconds:

#!/bin/sh
# usage: repeat [x] <command>
while true ; do $2 ; sleep $1 ; done


if not, and you want to use the above in a script of your own, just copy the above 3 lines and do the following (typing the lines into the console or pasting them in shell, using konsole under kde or gpm under a tty shell; hit <Ctrl-c> to stop it from looping). The two examples are optional. The stuff in angle brackets, <>, is stuff you won't see in your shell output:

am@[bin]$ cat >repeat
#!/bin/sh
# usage: repeat [x] <command>
while true ; do $2 ; sleep $1 ; done
am@[bin]$ chmod +x repeat
<examples>
am@[bin]$ ./repeat 2 "cat /proc/loadavg"
0.46 0.92 1.72 9/125 24171
0.46 0.92 1.72 2/125 24173
0.59 0.94 1.72 1/125 24181
<Ctrl-c>
am@[bin]$ cd ..
am@[~]$ repeat 2 uname
Linux
Linux
<Ctrl-c>

btw: i've already posted the same to:
http://www.linuxquestions.org/questions/showthread.php?s=&threadid=343892

some answers might show up there before i get back 

-- 
AD Marshall
Tel:  +84 (0)903871313
eM:   admarshall@gmail.com
Web:  http://h0lug.sourceforge.net
Zone: ICT (IndoChina Time; GMT/UTC+7)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
