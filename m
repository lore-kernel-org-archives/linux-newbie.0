From: G Anna <drguruolai@eth.net>
Subject: scripts in /etc/rc2.d/
Date: 15 May 2002 21:10:43 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m37km5zaf8.fsf@wobble.eth.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Dear All,

I have kept the startup script "dictd.init" for the dictd server in
the /etc/init.d/ directory.

I want the dictd server to be started automatically while booting my
system.  So I created a symbolic link to dict.init script under the
/etc/rc2.d/ (I use runlevel 2) So I have

$ ls -l /etc/init.d/dictd.init
-rwxr-xr-x    1 root     root          747 May 11 12:51 /etc/init.d/dictd.init

$ ls -l /etc/rc2.d/S39dictd
lrwxrwxrwx    1 root     root           20 May 15 21:02 /etc/rc2.d/S39dictd -> ../init.d/dictd.init

My question is will this work?  I have randomly chosen the name
"S39dict".  I can understand that the prefix "S" is for "Start".  What
is that number for?  How should I chose the number?  Is any random
number - like the one I have chosen - sufficient?  What is the purpose
of that number?

$ cat /etc/issue

Red Hat Linux release 7.1 (Seawolf)
Kernel 2.4.16 on an i686

$ uname -a
Linux wobble 2.4.16 #8 Tue May 14 14:15:58 IST 2002 i686 unknown

Kindly help me to understand.

Cheers,
anna

-- 

(9) I will not include a self-destruct mechanism unless absolutely
    necessary.  If  it is necessary, it will not be a large red button
    labelled  "Danger: Do Not Push". The big red button marked "Do Not
    Push"  will  instead  trigger  a spray of bullets on anyone stupid
    enough  to  disregard  it.  Similarly,  the ON/OFF switch will not
    clearly be labelled as such. - Peter Anspach in "The Top 100 Things 
    I'd Do If I Ever Became An Evil Overlord"


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
